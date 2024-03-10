CREATE TABLE Product_Category (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT
);

CREATE TABLE Product (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  inventory INT,
  discount DECIMAL(5,2),
  active BOOLEAN NOT NULL DEFAULT TRUE,
  category_id INT NOT NULL,
  FOREIGN KEY (category_id) REFERENCES Product_Category(id)
);
