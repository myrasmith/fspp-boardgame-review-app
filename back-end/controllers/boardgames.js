const express = require("express");
const { getGameCategories } = require("../queries/boardgames");

boardgamesController = express.Router();

boardgamesController.get("/:id/categories", async (req, res) => {
  try {
    const categories = await getGameCategories(req.params.id);
    res.json(categories);
  } catch (e) {
    console.error(e);
    res.status(500).send("Oops, something went wrong");
  }
});

module.exports = boardgamesController;
