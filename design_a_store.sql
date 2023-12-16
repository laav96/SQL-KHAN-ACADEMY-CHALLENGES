/*Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.*/

CREATE TABLE mindful_mama (id INTEGER PRIMARY KEY, name TEXT, size TEXT, quantity INTEGER, price INTEGER);

INSERT INTO mindful_mama VALUES (1, "Mindful Mama Sweatshirt", "XS", 7, 42.00);
INSERT INTO mindful_mama VALUES (2, "Mindful Mama Sweatpants", "XS", 26, 48.00);
INSERT INTO mindful_mama VALUES (3, "Mindful Mama Jacket", "XS", 86, 42.00);
INSERT INTO mindful_mama VALUES (4, "Mindful Mama T-Shirt", "XS", 44, 25.00);
INSERT INTO mindful_mama VALUES (5, "Mindful Mama Hoodie", "XS", 15, 55.00);
INSERT INTO mindful_mama VALUES (6, "Mindful Mama Bikini", "S", 90, 65.00);
INSERT INTO mindful_mama VALUES (7, "Mindful Mama Skirt", "M", 26, 58.00);
INSERT INTO mindful_mama VALUES (8, "Mindful Mama Dress", "L", 26, 38.00);
INSERT INTO mindful_mama VALUES (9, "Mindful Mama Short Set", "S", 24, 78.00);
INSERT INTO mindful_mama VALUES (10, "Mindful Mama Pant Set", "XS", 120, 88.00);
INSERT INTO mindful_mama VALUES (11, "Mindful Mama Tank Top", "XL", 17, 22.00);
INSERT INTO mindful_mama VALUES (12, "Mindful Mama Lingerie", "M", 122, 58.00);
INSERT INTO mindful_mama VALUES (13, "Mindful Mama Biker Short Jumpsuit", "XL", 52, 88.00);
INSERT INTO mindful_mama VALUES (14, "Mindful Mama Sleeveless Jumpsuit", "L", 87, 88.00);
INSERT INTO mindful_mama VALUES (15, "Mindful Mama Long Sleeve Jumpsuit", "S", 12, 98.00);

SELECT * FROM mindful_mama ORDER BY price;

SELECT SUM(quantity) FROM mindful_mama;
