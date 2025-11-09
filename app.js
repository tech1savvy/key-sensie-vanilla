// Import packages
const express = require("express");
const app = express();
const path = require("path");

const port = 8080;

// Load js and css files
app.use(express.static(path.join(__dirname, "public")));

app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "public/homepage.html"));
});

app.listen(port, () => {
  console.log(`Server is running on port http://localhost:${port}`);
});