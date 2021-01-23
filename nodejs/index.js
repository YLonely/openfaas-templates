const { handle, init } = require('./function/handler')
const express = require('express')
var app = express()
app.use(express.urlencoded())

app.post('/', function (req, res) {
  error = handle(req, res)
  if (error.length != 0) {
    console.log(error);
  }
})

app.get('/_/health', function (req, res) {
  res.send('OK')
})

process.on('SIGINT', function () {
  console.log('shutting down');
  process.exit();
});

init()
app.listen(8080)

