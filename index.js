const express = require("express");
const app = express();
const PORT = 8080;

app.use(express.json());

app.listen(PORT, () => console.log(`Server is running on port ${PORT}`));

// GET
app.get("/api/icecream", (request, res) => {
  const flavors = ["vanilla", "chocolate", "strawberry"];

  // 2. Send a response with status code of 200 and a JSON Object
  res.status(200).send({
    flavors: flavors,
    name: "The best ice cream shop",
    address: "1234 Main St",
  });
});
