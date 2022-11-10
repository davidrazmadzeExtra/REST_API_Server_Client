import fetch from "node-fetch";

fetch("http://localhost:8080/api/icecream", {
  method: "GET",
  headers: {
    Accept: "application/json",
  },
})
  .then((response) => response.text())
  .then((text) => console.log(text));
