/**
    Header
    Name: Stutie Banerjie
**/

/**
    Instructions

    What are your favorite books? You can make a database table to store them in! In this first step, create a table to store your list of books. It should have columns for id, name, and rating.
**/

/** Favorite Book Data base **/

CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);

INSERT INTO books VALUES (1, "East of Eden", 3);
INSERT INTO books VALUES (2, "Katabasis", 4);
INSERT INTO books VALUES (3, "Angels & Demons", 2);

SELECT*FROM books;