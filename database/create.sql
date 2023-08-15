-- @block create books table
CREATE TABLE IF NOT EXISTS books (
    bookID INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantityInStock INT NOT NULL,
    short_description VARCHAR(255) NOT NULL,
    publisher VARCHAR(255) NOT NULL
);
-- @block create customers table
CREATE TABLE IF NOT EXISTS customers (
    customerID INT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    address VARCHAR(255),
    phone VARCHAR(255)
);
-- @block create orders table
CREATE TABLE IF NOT EXISTS orders (
    orderID INT PRIMARY KEY,
    customerID INT NOT NULL,
    bookID INT NOT NULL,
    orderDate DATE NOT NULL,
    pickupDate DATE NOT NULL,
    status VARCHAR(255) NOT NULL,
    FOREIGN KEY (customerID) REFERENCES customers(customerID),
    FOREIGN KEY (bookID) REFERENCES books(bookID)
);
-- @block create reviews table
CREATE TABLE IF NOT EXISTS reviews (
    reviewID INT PRIMARY KEY,
    customerID INT NOT NULL,
    orderID INT NOT NULL,
    reviewRating INT NOT NULL,
    reviewText VARCHAR(255) NOT NULL,
    reviewDate DATE NOT NULL,
    FOREIGN KEY (customerID) REFERENCES customers(customerID),
    FOREIGN KEY (orderID) REFERENCES orders(orderID)
)