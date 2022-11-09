const express = require("express");
const app = express();
const PORT = 8085;

app.use(express.json());

app.listen(PORT, () => console.log(`Server is running on port ${PORT}`));

// GET
app.get("/tshirt", (request, res) => {
  // 1. Send a response
  // res.send("Hello World!");

  // 2. Send a response with status code of 200 and a JSON Object
  res.status(200).send({
    tshirt: "🏠",
    size: "large",
  });
});
