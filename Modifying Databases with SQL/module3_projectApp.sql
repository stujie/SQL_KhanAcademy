/**
  Header
  Name: Stutie Banerjie
  Date: 2.24.2026
  Project: Data dig
**/

/**
  Instructions:
  Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc. Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), and write SQL statements that might look like their own SQL.
**/

-- Step 1: CREATE  a table to store the data

CREATE TABLE instagram (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    account TEXT,
    likes INTEGER, 
    comments INTEGER, 
    reposts INTEGER,
    caption TEXT);

-- Step 2: INSERT a few example rows in the table.
INSERT INTO instagram(account, likes, comments, reposts, caption) VALUES ("Melissa Martin", 38294, 349, 21, "Just a vacation lol");
INSERT INTO instagram(account, likes, comments, reposts, caption) VALUES ("mm_835", 32, 2, 0, "I'm so freaking tiredddddd");
INSERT INTO instagram(account, likes, comments, reposts, caption) VALUES ("MellyTravels!", 3249193, 1485, 492, "#Bahamas #Grateful");

-- Step 3: Use an UPDATE to emulate what happens when you edit data in the app.
UPDATE instagram SET caption = "sunlight is the best accessory :) #Bahamas #Grateful" WHERE id = 3;

-- Step 4: Deletes at least 1 row of data.
DELETE FROM instagram where id = 2;