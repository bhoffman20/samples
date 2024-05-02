import express from 'express';
import db from './database/db';      // make sure you select the path where you placed the db file in your harddrive
import bodyParser from 'body-parser';
// Set up the express app
const app = express();

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


// Read file contents
app.get('/readfile', (request, response) => {
    let filePathParam = request.query.file;
    console.log(filePathParam);

    if(null == filePathParam || '' == filePathParam) {
        return response.status(400).send("Missing 'file' query parameter.");
    }

    const stream = fs.createReadStream(filePathParam);

    // Create a string variable to store the data
    let data = '';

    // Listen for the 'data' event and append the data to the string variable
    stream.on('data', (chunk) => {
        data += chunk.toString();
    });

    // Listen for the 'end' event and log the final string value
    stream.on('end', () => {
        //console.log(data);
        return response.status(200).send(data);
    });

});

app.get('/echo', (request, response) => {
    for (const key in request.headers) {
        response.set(key, request.headers[key])
    }
    response.status(200).send(request.body);
});

app.get('/weirdHeaders', (request, response) => {
    response.set("XX_b0967ss+p", "sdfsdf")
    response.set("abc", "def")
    response.set("123","456")
    //response.set("bad-!@#$%", "(*&%$#")
    response.status(200).send(request.body);
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