'use strict';

const express = require('express');
const app = express();

app.get('/', function(request, response) {
  response.send('Hello World!');
});

app.listen(80, '0.0.0.0', function() {
  console.log('Server started successfully!');
});
