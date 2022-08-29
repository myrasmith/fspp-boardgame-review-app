\c boardgame_reviews;
SELECT boardgames.title AS title, categories.category AS category
FROM boardgames
    JOIN boardgame_categories ON boardgames.id = boardgame_categories.boardgame_id
    JOIN categories ON boardgame_categories.category_id = categories.id;