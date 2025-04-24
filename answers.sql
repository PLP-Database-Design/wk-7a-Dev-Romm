
-- QUESTION 1
    CREATE TABLE ProductDetails (
        OrderID INT PRIMARY KEY,
        CustomerName VARCHAR(50),
        Product VARCHAR(50),
        Quantity INT
    );

-- QUESTION 2
    -- Customer Details Table 
    CREATE TABLE CustomerDetails (
        OrderID INT PRIMARY KEY,
        CustomerName VARCHAR(50)
    );

    -- Order Details Table
    CREATE TABLE OrderDetails (
        OrderID INT PRIMARY KEY,
        Product VARCHAR(50),
        Quantity INT,
        FOREIGN KEY (OrderID) REFERENCES CustomerDetails(OrderID)
    );
