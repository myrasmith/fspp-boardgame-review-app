DROP DATABASE IF EXISTS boardgame_reviews;
CREATE DATABASE boardgame_reviews;

\c boardgame_reviews;

CREATE TABLE boardgames (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    game_description TEXT NOT NULL,
    min_players INT NOT NULL CHECK (min_players > 0),
    max_players INT NOT NULL CHECK (max_players >= min_players)
);

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    author TEXT NOT NULL,
    headline TEXT NOT NULL,
    review TEXT NOT NULL,
    rating INT NOT NULL CHECK (rating <= 5 AND rating >= 0),
    review_date TIMESTAMP DEFAULT NOW(),
    game_id INT NOT NULL REFERENCES boardgames(id) ON DELETE CASCADE
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    category TEXT NOT NULL
);

CREATE TABLE boardgame_categories (
    boardgame_id INT NOT NULL REFERENCES boardgames(id) ON DELETE CASCADE,
    category_id INT NOT NULL REFERENCES categories(id) ON DELETE CASCADE,
    PRIMARY KEY (boardgame_id, category_id)
);

