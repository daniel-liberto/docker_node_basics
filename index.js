const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send("Hello Docker! i'm fully working now!");
});

app.listen(port, () => {
  console.log(`App running in port: ${port}`);
});
