const express = require('express');
const http = require('http');
const mongoose = require('mongoose')

const app = express();
const port = process.env.PORT || 3000;

var server = http.createServer(app);

var io = require('socket.io')(server);

app.use(express.json());

const DB = "mongodb+srv://hemang:hemang@cluster0.rp8dcop.mongodb.net/?retryWrites=true&w=majority";

io.on('connection', (socket) => {
    console.log("connected socket");
    socket.on('createRoom', ({ nickname }) => {
        console.log("hi");
        console.log(nickname);
    });
});

mongoose.connect(DB).then(() => {
    console.log("Connection Successful");
})
    .catch((e) => {
        console.log(e);
    });


server.listen(port, '0.0.0.0', () => {
    console.log(`server started and running on ${port}`);
});