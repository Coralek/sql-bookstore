# first i create new database
create database Bookstore;

# this is table with genres. this could be in books table, but i decided to keep it separate for learning purposes
create table Genres (
	id int auto_increment primary key
	,genre varchar(200) not null
);

# here will be all books data. i keep reference to genres table (1-M relation)
create table Books (
	id int auto_increment primary key
	,genre_id int not null
	,title varchar(200) not null
	,author varchar(200) not null
	,publisher varchar(200) not null 
	,publication_year int not null 
	,selling_price float not null
	,purchase_price float not null
	,foreign key (genre_id) references Genres(id)
);

# current state of books in the store
create table Warehouses (
	id int auto_increment primary key
	,book_id int not null
	,item_quantity int not null
	,foreign key (book_id) references Books(id)
);

# all sales, with tin being null in case of normal purshase, or company purshase otherwise
create table Sales (
	id int auto_increment primary key
	,TIN varchar(200)
	,order_date date not null
);

# details for given sale. technically, i could make sales and salesbook a single table (with invoice id or smth),
# but i wanted to have N-M relation for lerning purposes 
create table SalesBooks (
	id int auto_increment primary key
	,sales_id int not null 
	,book_id int not null
	,quantity int not null
	,foreign key (sales_id) references Sales(id)
	,foreign key (book_id) references Books(id)
);
