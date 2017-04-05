require('babel/register');
require('./server.js');

// server.js
import express from 'express';

let app = express();
let PORT = 3000;

app.post('/graphql', (req, res) => {
  res.send('Hello!');
});

let server = app.listen(PORT, function () {
  let host = server.address().address;
  let port = server.address().port;

  consol.log('GraphQL listening on http://%s:%S', host, port);
});
