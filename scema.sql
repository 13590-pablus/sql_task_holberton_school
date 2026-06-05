CREATE TABLE readers (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    region VARCHAR(255) NOT NULL,
    CONSTRAINT pk_readers PRIMARY KEY (id)
);

CREATE TABLE books (
    id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    retail_price DOUBLE NOT NULL,
    CONSTRAINT pk_books PRIMARY KEY (id)
);

CREATE TABLE sales (
    id INT AUTO_INCREMENT,
    reader_id INT NOT NULL,
    sale_date DATE NOT NULL,
    CONSTRAINT pk_sales PRIMARY KEY (id),
    CONSTRAINT fk_sales_readers FOREIGN KEY (reader_id) REFERENCES readers(id)
);

CREATE TABLE sale_items (
    id INT AUTO_INCREMENT,
    sale_id INT NOT NULL,
    book_id INT NOT NULL,
    item_qty INT NOT NULL,
    CONSTRAINT pk_sale_items PRIMARY KEY (id),
    CONSTRAINT fk_items_sales FOREIGN KEY (sale_id) REFERENCES sales(id),
    CONSTRAINT fk_items_books FOREIGN KEY (book_id) REFERENCES books(id)
);
