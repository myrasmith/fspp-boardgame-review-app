const db = require("../db/dbConfig");

const getGameCategories = async (gameId) => {
  return await db.any(
    "SELECT boardgames.title AS title, categories.category AS category\
       FROM boardgames\
        JOIN boardgame_categories ON boardgames.id = boardgame_categories.boardgame_id\
        JOIN categories ON boardgame_categories.category_id = categories.id\
       WHERE boardgames.id = $1;",
    [gameId]
  );
};

module.exports = {
  getGameCategories,
};
