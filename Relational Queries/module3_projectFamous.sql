/**
  Header
  Name: Stutie Banerjie
  Date: 2.18.2026
  Project: Famous People
**/

/**
    Instructions
    > In this project, you’re going to make your own table with some small set of “famous people”, then make more tables about things they do and join those to create nice human readable lists.

    > For example, here are types of famous people and the questions your data could answer:
        Movie stars: What movies are they in? Are they married to each other?
        Singers: What songs did they write? Where are they from?
        Authors: What books did they write?
        Fictional characters: How are they related to other characters? What books do they show up in?
**/

/** 
    Table 1: global artists - name, spotify rank, age, and nationality
**/

CREATE TABLE global_artists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    global_rank INTEGER, 
    age INTEGER,
    nationality TEXT);

INSERT INTO global_artists (fullname, global_rank, age, nationality) VALUES ("Bad Bunny", 1, 31, "Puerto Rican");
INSERT INTO global_artists (fullname, global_rank, age, nationality) VALUES ("Taylor Swift", 2, 36,"American");
INSERT INTO global_artists (fullname, global_rank, age, nationality) VALUES ("The Weeknd", 3, 36, "Canadian");
INSERT INTO global_artists (fullname, global_rank, age, nationality) VALUES ("Drake", 4, 39, "Canadian");
INSERT INTO global_artists (fullname, global_rank, age, nationality) VALUES ("Billie Eilish", 5, 24, "American");
INSERT INTO global_artists (fullname, global_rank, age, nationality) VALUES ("Kendrick Lamar", 6, 38,"American");
INSERT INTO global_artists (fullname, global_rank, age, nationality) VALUES ("Bruno Mars", 7, 40,"American");
INSERT INTO global_artists (fullname, global_rank, age, nationality) VALUES ("Ariana Grande", 8, 32, "American");
INSERT INTO global_artists (fullname, global_rank, age, nationality) VALUES ("Arijit Singh", 9, 38, "Indian");
INSERT INTO global_artists (fullname, global_rank, age, nationality) VALUES ("Fuerza Regida", 10, 28, "Mexican");

/** 
    Table 2: net worth - artist id in relation to table global_artists, rank globally, and networth in dollars
**/

CREATE TABLE net_worth (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist_id INTEGER,
    rank INTEGER,
    networth INTEGER
);

INSERT INTO net_worth (artist_id, rank, networth) VALUES (2, 2, 1600000000);
INSERT INTO net_worth (artist_id, rank, networth) VALUES (3, 3, 600000000);
INSERT INTO net_worth (artist_id, rank, networth) VALUES (4, 4, 400000000);
INSERT INTO net_worth (artist_id, rank, networth) VALUES (8, 8, 250000000);
INSERT INTO net_worth (artist_id, rank, networth) VALUES (6, 6, 140000000);
INSERT INTO net_worth (artist_id, rank, networth) VALUES (1, 1, 100000000);
INSERT INTO net_worth (artist_id, rank, networth) VALUES (7, 7, 70000000);
INSERT INTO net_worth (artist_id, rank, networth) VALUES (5, 5, 53000000);
INSERT INTO net_worth (artist_id, rank, networth) VALUES (9, 9, 50000000);
INSERT INTO net_worth (artist_id, rank, networth) VALUES (10, 10, 30000000);

/**
    Queries
**/

SELECT global_artists.fullname as "artist name", net_worth.networth as "net worth in usd", global_artists.global_rank as "spotify global rank"
    FROM global_artists
    JOIN net_worth
    ON global_artists.global_rank = net_worth.rank 
    ORDER BY net_worth.networth desc;
    
    
SELECT global_artists.fullname as "artist", global_artists.global_rank as "popularity rank", net_worth.networth, net_worth.id as "wealth rank"
    FROM global_artists
    JOIN net_worth
    ON global_artists.id = net_worth.artist_id
    ORDER BY "popularity rank";

