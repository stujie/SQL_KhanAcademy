/**
  Header
  Name: Stutie Banerjie
  Date: 2.11.2026
  Project: Design a Store Database
**/

/**
    Instructions

    Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.
**/

CREATE TABLE store (id INTEGER PRIMARY KEY, name TEXT, price INTEGER, color TEXT, sale INTEGER);

INSERT INTO store VALUES(1, "T-Shirt", 10, "Red", 5);
INSERT INTO store VALUES (2, "Pant", 20, "Orange", 4);
INSERT INTO store VALUES (3, "Dress", 30, "Yellow", 0);
INSERT INTO store VALUES (4, "Underwear", 8, "Green", 2);
INSERT INTO store VALUES (5, "Shoes", 50, "Blue", 10);

SELECT * FROM store WHERE sale > 0 ORDER BY price;

SELECT SUM(sale) FROM store;

