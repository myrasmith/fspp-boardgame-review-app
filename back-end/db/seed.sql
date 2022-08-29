\c boardgame_reviews;

INSERT INTO boardgames (title, game_description, min_players, max_players) VALUES ('Azul', 'Compete to build the most impressive tilework in Portugal', 1, 4);
INSERT INTO boardgames (title, game_description, min_players, max_players) VALUES ('Monopoly', 'Compete for economic domination of the world!', 2, 6);
INSERT INTO boardgames (title, game_description, min_players, max_players) VALUES ('Solitaire', 'A classic one-player card game', 1, 1);

INSERT INTO reviews (author, headline, review, rating, game_id) VALUES ('myra', 'my favorite game', 'this game is my all time favorite. I love to bond with friends and family over this game', 5, 1);
INSERT INTO reviews (author, headline, review, rating, game_id) VALUES ('abby', 'pretty darn good', 'love to play with my friends', 4, 1);
INSERT INTO reviews (author, headline, review, rating, game_id) VALUES ('myra', 'Meh.', 'I dont like how competitive it gets, and i have bad memories of arguments breaking out.', 2, 2);
INSERT INTO reviews (author, headline, review, rating, game_id) VALUES ('abby', 'Domination', 'I will beat any and everyone at this game', 4, 2);

INSERT INTO categories (category) VALUES ('randomness');
INSERT INTO categories (category) VALUES ('puzzle');
INSERT INTO categories (category) VALUES ('abstract strategy');
INSERT INTO categories (category) VALUES ('economic');
INSERT INTO categories (category) VALUES ('negotiation');
INSERT INTO categories (category) VALUES ('cards');
INSERT INTO categories (category) VALUES ('solo');

INSERT INTO boardgame_categories (boardgame_id, category_id) VALUES (1, 1);
INSERT INTO boardgame_categories (boardgame_id, category_id) VALUES (1, 2);
INSERT INTO boardgame_categories (boardgame_id, category_id) VALUES (1, 3);
INSERT INTO boardgame_categories (boardgame_id, category_id) VALUES (2, 1);
INSERT INTO boardgame_categories (boardgame_id, category_id) VALUES (2, 4);
INSERT INTO boardgame_categories (boardgame_id, category_id) VALUES (2, 5);
INSERT INTO boardgame_categories (boardgame_id, category_id) VALUES (3, 1);
INSERT INTO boardgame_categories (boardgame_id, category_id) VALUES (3, 2);
INSERT INTO boardgame_categories (boardgame_id, category_id) VALUES (3, 6);
INSERT INTO boardgame_categories (boardgame_id, category_id) VALUES (3, 7);
