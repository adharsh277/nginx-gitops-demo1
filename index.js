const http = require('http');

const port = 3000;

const requestHandler = (request, response) => {
  response.end('Hello from your Dockerized app!');
};

const server = http.createServer(requestHandler);

server.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
