const express = require('express');

const app = express();

app.get('/', (req, res) => {
  return res.send('Eu sou Full Cycle');
});

app.listen(8080, () => {
  console.log('Eu sou Full Cycle');
});
