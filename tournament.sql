-- Table definitions for the tournament project.

-- Create the tournament database
DROP DATABASE IF EXISTS tournament;

CREATE DATABASE tournament;

\c tournament

-- Create players Table
CREATE TABLE players (
	id SERIAL PRIMARY KEY,
	name TEXT
);

-- Create matches Table and referencces to players ID
CREATE TABLE matches (
	id SERIAL PRIMARY KEY,
	winner INTEGER REFERENCES players (id),
	loser INTEGER REFERENCES players (id)
);
