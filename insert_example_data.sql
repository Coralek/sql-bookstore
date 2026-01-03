# note: these are just example data to start with. i think in the near future i'll use ai to generate larger dataset

insert into genres 
	(
	genre
	)
values
	('fantasy'),
	('science fiction'),
	('mystery');


insert into books 
	(
	genre_id, title, author, publisher, publication_year, selling_price, purchase_price
	)
values
	(1, 'The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin', 1937, 10, 8),
    (1, 'The Fellowship of the Ring', 'J.R.R. Tolkien', 'George Allen & Unwin', 1954, 12, 8),
    (1, 'The Two Towers', 'J.R.R. Tolkien', 'George Allen & Unwin', 1954, 12, 8),
    (2, 'Dune', 'Frank Herbert', 'Chilton Books', 1965, 12, 8),
    (2, 'Foundation', 'Isaac Asimov', 'Gnome Press', 1951, 10, 8),
    (2, 'Neuromancer', 'William Gibson', 'Ace', 1984, 11, 8),
    (3, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Norstedts', 2005, 12, 8),
    (3, 'Gone Girl', 'Gillian Flynn', 'Crown', 2012, 13, 10),
    (3, 'The Da Vinci Code', 'Dan Brown', 'Doubleday', 2003, 12, 8);

insert into warehouses
	(
	book_id, item_quantity
	)
values
    (1, 8),
    (2, 10),
    (3, 5),
    (4, 6),
    (5, 6),
    (6, 10),
    (7, 11),
    (8, 12),
    (9, 5);


insert into sales
	(
	TIN, order_date
	)
values
	('TIN000007','2023-01-05'),
	(NULL,'2023-01-05'),
	(NULL,'2023-01-07'),
	(NULL,'2023-01-08'),
	('TIN000020','2023-01-10'),
	(NULL,'2023-02-10'),
	(NULL,'2023-02-11'),
	(NULL,'2023-02-11'),
	('TIN000027','2023-03-11'),
	(NULL,'2023-03-12'),
	(NULL,'2023-03-13'),
	(NULL,'2023-03-14'),
	('TIN000034','2023-03-16');


insert into salesbooks
	(
	sales_id, book_id, quantity
	)
values
    (1, 2, 1),
    (2, 1, 2),
    (3, 8, 3),
    (4, 9, 1),
    (5, 8, 2),
    (6, 5, 3),
    (7, 2, 1),
    (8, 3, 2),
    (9, 1, 3),
    (10, 3, 1),
    (11, 2, 2),
    (12, 9, 3),
    (13, 1, 1);