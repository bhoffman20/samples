import express from 'express';
import bodyParser from 'body-parser';
import audit from 'express-requests-logger'
// Set up the express app
const app = express();


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

// Test Connection
app.get('/api/now/ui/user/current_user', (request, response) => {
    response.status(200).contentType('application/json').send('{}');
}); 

// ServiceNow Request GET URL
app.get('/api/now/table/change_request', (request, response) => {
    var ticketNum = request.query['sysparm_query'];
    console.log(ticketNum);
    // console.log("start sleep");
    // console.log("end sleep");

    var approvalStatus = 'approved';
    if(ticketNum == 'TEST-A') {
        approvalStatus = 'approved';
    } else if(ticketNum == 'TEST-R') {
        approvalStatus = 'rejected';
    } else if(ticketNum == 'TEST-P'){
        approvalStatus = 'PENDING';
    }

    var payload = {
        result: {
            number: ticketNum,
            description: 'Fake Ticket',
            approval: approvalStatus
        }
    }
    
    if('NO-RESPONSE' != ticketNum) {
        response.status(200).contentType('application/json').send(payload);
    }
}); 

// ServiceNow Request POST URL
app.post('/api/now/table/change_request', (request, response) => {
    console.log(request.body);
    response.status(200).contentType('application/json').send('{}');
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