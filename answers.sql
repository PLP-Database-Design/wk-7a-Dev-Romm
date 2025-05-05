
-- QUESTION 1
    CREATE TABLE ProductDetails (
        OrderID INT PRIMARY KEY,
        CustomerName VARCHAR(50),
        Product VARCHAR(50),
    );

    INSERT INTO ProductDetails (OrderID, CustomerName, Product) VALUES
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');


-- QUESTION 2
    -- Orders Table 
    CREATE TABLE Orders (
        OrderID INT PRIMARY KEY,
        CustomerName VARCHAR(50)
    );

    INSERT INTO Orders (OrderID, CustomerName) VALUES
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');


    -- Products Table
    CREATE TABLE Products (
        OrderID INT,
        Product VARCHAR(50),
        Quantity INT,
        PRIMARY KEY (OrderID, Product),
        FOREIGN KEY (OrderID) REFERENCES CustomerDetails(OrderID)
    );

    INSERT INTO Products (OrderID, Product, Quantity) VALUES
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);

