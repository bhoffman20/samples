import express from 'express';
import bodyParser, { json } from 'body-parser';
import audit from 'express-requests-logger'
// Set up the express app
const app = express();

// Enable Basic Auth
const basicAuth = require('express-basic-auth')
app.use(basicAuth({
    users: { 'admin': 'admin123' }
}));

// Enable Request Logging
app.use(audit({
    request: {},
    response: {
        audit: false,
        excludeBody: ["*"],
        excludeHeaders: ["*"]
    }
}));

// Require fs to read from file system
const fs = require('fs');

// Parse incoming requests data
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

// setup PORT for the API to run
const PORT = 5000;
app.listen(PORT, () => {
    console.log(`server running on port ${PORT}`)
});

app.get('/echo', (request, response) => {
    for (const key in request.headers) {
        response.set(key, request.headers[key])
    }
    response.status(200).send(request.body);
});

function sleep(ms) {
    return new Promise((resolve) => {
      setTimeout(resolve, ms);
    });
}

// =============================================================================

// Statuses:
//  Make Ready
//  Ready
//  In Progress
//  Done
//  Accepted

// Types:
//  UserStory
//  Bug
//  Feature
//  Task


// Test Connection
app.get('/api/v1/Users', (request, response) => {
    var users = [
          {
            "ResourceType": "User",
            "Kind": "User",
            "Id": 1,
            "FirstName": "Main",
            "LastName": "Admin",
            "Email": "admin@gmail.com",
            "Times-Spent-Sum": 290,
            "Login": "admin"
          },
          {
            "ResourceType": "User",
            "Kind": "User",
            "Id": 6,
            "FirstName": "John",
            "LastName": "Brown",
            "Email": "John.Brown@targetprocess.com",
            "Times-Spent-Sum": 109,
            "Login": "otheruser"
          }
        ]

    let where = request.query['where'];
    let userToFind = where;
    if(null != where && where.match('\(Login eq \".*\"\)')) {
        console.log("Where clause matched the regex");
        userToFind = userToFind.replaceAll("(", "");
        userToFind = userToFind.replaceAll(")", "");
        userToFind = userToFind.replaceAll("Login eq ", "");
        userToFind = userToFind.replaceAll("\"", "");
        console.log("Looking for user: " + userToFind);
    } else {
        console.log("Where clause didn't match! " + where);
    }

    let founduser = users;
    if(null != userToFind) {
      for(let user in users) {
        if(users[user]['Login'] == userToFind) {
            founduser = [ users[user] ];
            console.log("Found user: " + founduser);
            break;
        }
      }
    } 

    let usersresp = {
        "Items": founduser
    }

    response.status(200).contentType('application/json').send(usersresp);
});

// Get ticket
app.get('/api/v1/UserStories/', (request, response) => {
    // /api/v1/userstories?include=[Id,Name,Tasks]&take=100&innertake=1000
    // /api/v1/tasks?include=[Id,Name,UserStory]&take=1000
    console.log("Looking up user story")
    let userStories = fs.readFileSync("sample_data/UserStories.json");

    let where = request.query['where'];
    let ticketId = where;
    let foundTicket = {};
    
    if(null != where && where.match('\(Id eq .*\)')) {
        console.log("Where clause matched the regex");
        ticketId = ticketId.replaceAll("(", "");
        ticketId = ticketId.replaceAll(")", "");
        ticketId = ticketId.replaceAll("Id eq ", "");
        ticketId = ticketId.replaceAll("\"", "");
        console.log("Looking for story: " + ticketId);
    } else {
        console.log("Where clause didn't match! " + where);
        foundTicket = userStories;
    }

    let usJsonObj = JSON.parse(userStories);
    let itemsArray = usJsonObj['Items'];
    //console.log(usJsonObj);
    

    for(let story in itemsArray) {
        if(itemsArray[story]['Id'] == ticketId) {
            foundTicket = [ itemsArray[story] ];
            console.log("Found story: " + JSON.stringify(foundTicket));
            break;
        }
    }

    let userStoryResponse = {
        "Next": "https://restapi.tpondemand.com/api/v1/UserStories/?include=[Id,Name,Effort,Project]&append=[Bugs-count]&where=(EntityState.IsFinal eq 'false')&orderByDesc=Effort&format=json&take=10&skip=10",
        "Items": foundTicket
        
    };

    response.status(200).contentType('application/json').send(userStoryResponse);
});



// //create API endpoint
// app.get('/api/v1/person/info', (request, response) => {
//     response.status(200).send({
//         success: 'true',
//         message: 'information retrieved successfully',
//         db: db
//     });
// });

// // Create a POST Request (second part of workshop)
// app.post('/api/v1/person/info', (request, response) => {
//     if (!request.body.name) {
//         return response.status(400).send({
//             success: 'false',
//             message: 'name is required'
//         });
//     }
//     if (!request.body.address) {
//         return response.status(400).send({
//             success: 'false',
//             message: 'address is required'
//         });
//     }
//     const newRecord = {
//         id: db.length + 1,
//         name: request.body.name,
//         address: request.body.address
//     }

//     db.push(newRecord);
//     return response.status(201).send({
//         success: 'true',
//         message: 'new record added successfully',
//         newRecord
//     })
// });