const express = require("express");
const cors = require("cors");
const app = express();
const boardgamesController = require("./controllers/boardgames");

app.use(cors());
app.get("/", (_, res) => res.send("hello!"));
app.use("/boardgames", boardgamesController);

module.exports = app;
