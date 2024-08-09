CREATE TABLE dbo.Product
(
    ProductID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    ProductPrice DECIMAL(10,2) NOT NULL,
    ProductCode VARCHAR(100) NOT NULL,
    Description VARCHAR(100) NOT NULL,
    UserID INT NOT NULL FOREIGN KEY REFERENCES dbo.[User](UserID)
);

INSERT INTO dbo.Product (ProductName, ProductPrice, ProductCode, Description, UserID)
VALUES 
('Product A', 10.00, 'PRA100', 'Description of Product A', 1),
('Product B', 20.00, 'PRB200', 'Description of Product B', 2),
('Product C', 30.00, 'PRC300', 'Description of Product C', 1),
('Product D', 40.00, 'PRD400', 'Description of Product D', 3),
('Product E', 50.00, 'PRE500', 'Description of Product E', 2);
SELECT * FROM dbo.Product

CREATE TABLE dbo.[User]
(
    UserID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    UserName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Password VARCHAR(100) NOT NULL,
    MobileNo VARCHAR(15) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    IsActive BIT NOT NULL
);


INSERT INTO dbo.[User] (UserName, Email, Password, MobileNo, Address, IsActive)
VALUES 
('John Doe', 'john.doe@example.com', 'password123', '1234567890', '123 Main St', 1),
('Jane Smith', 'jane.smith@example.com', 'password456', '0987654321', '456 Elm St', 1),
('Alice Johnson', 'alice.johnson@example.com', 'password789', '1122334455', '789 Pine St', 0),
('Bob Brown', 'bob.brown@example.com', 'password321', '2233445566', '321 Oak St', 1),
('Charlie Davis', 'charlie.davis@example.com', 'password654', '3344556677', '654 Cedar St', 0);
SELECT * FROM dbo.[User]

CREATE TABLE dbo.[Order]
(
    OrderID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    OrderDate DATETIME NOT NULL,
    CustomerID INT NOT NULL,
    PaymentMode VARCHAR(100) NULL,
    TotalAmount DECIMAL(10,2) NULL,
    ShippingAddress VARCHAR(100) NOT NULL,
    UserID INT NOT NULL FOREIGN KEY REFERENCES dbo.[User](UserID)
);

INSERT INTO dbo.[Order] (OrderDate, CustomerID, PaymentMode, TotalAmount, ShippingAddress, UserID)
VALUES 
('2023-07-01 10:30:00', 1, 'Credit Card', 150.75, '123 Main St', 1),
('2023-07-02 14:00:00', 2, 'PayPal', 200.00, '456 Elm St', 2),
('2023-07-03 09:15:00', 3, NULL, NULL, '789 Pine St', 1),
('2023-07-04 11:45:00', 4, 'Cash', 99.99, '321 Oak St', 3),
('2023-07-05 16:20:00', 5, 'Debit Card', 175.50, '654 Cedar St', 2);
SELECT * FROM dbo.[Order]

CREATE TABLE dbo.OrderDetail
(
    OrderDetailID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    OrderID INT NOT NULL FOREIGN KEY REFERENCES dbo.[Order](OrderID),
    ProductID INT NOT NULL FOREIGN KEY REFERENCES dbo.Product(ProductID),
    Quantity INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL,
    UserID INT NOT NULL FOREIGN KEY REFERENCES dbo.[User](UserID)
);

INSERT INTO dbo.OrderDetail (OrderID, ProductID, Quantity, Amount, TotalAmount, UserID)
VALUES 
(1, 1, 1, 10.00, 10.00, 1),
(1, 2, 2, 20.00, 40.00, 1),
(2, 3, 1, 30.00, 30.00, 2),
(2, 4, 2, 40.00, 80.00, 2),
(3, 5, 1, 50.00, 50.00, 3),
(3, 1, 3, 10.00, 30.00, 3),
(4, 2, 2, 20.00, 40.00, 1),
(4, 3, 1, 30.00, 30.00, 1),
(5, 4, 2, 40.00, 80.00, 2),
(5, 5, 1, 50.00, 50.00, 2);
SELECT * FROM dbo.OrderDetail

CREATE TABLE dbo.Bills
(
    BillID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    BillNumber VARCHAR(100) NOT NULL,
    BillDate DATETIME NOT NULL,
    OrderID INT NOT NULL FOREIGN KEY REFERENCES dbo.[Order](OrderID),
    TotalAmount DECIMAL(10,2) NOT NULL,
    Discount DECIMAL(10,2) NULL,
    NetAmount DECIMAL(10,2) NOT NULL,
    UserID INT NOT NULL FOREIGN KEY REFERENCES dbo.[User](UserID)
);

INSERT INTO dbo.Bills (BillNumber, BillDate, OrderID, TotalAmount, Discount, NetAmount, UserID)
VALUES 
('BILL001', '2024-07-01', 1, 100.00, 5.00, 95.00, 1),
('BILL002', '2024-07-02', 2, 200.00, 10.00, 190.00, 2),
('BILL003', '2024-07-03', 3, 300.00, 15.00, 285.00, 3),
('BILL004', '2024-07-04', 4, 150.00, NULL, 150.00, 1),
('BILL005', '2024-07-05', 5, 250.00, 12.50, 237.50, 2);
SELECT * FROM dbo.Bills

CREATE TABLE dbo.Customer
(
    CustomerID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    CustomerName VARCHAR(100) NOT NULL,
    HomeAddress VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    MobileNo VARCHAR(15) NOT NULL,
    GST_NO VARCHAR(15) NOT NULL,
    CityName VARCHAR(100) NOT NULL,
    PinCode VARCHAR(15) NOT NULL,
    NetAmount DECIMAL(10,2) NOT NULL,
    UserID INT NOT NULL FOREIGN KEY REFERENCES dbo.[User](UserID)
);

INSERT INTO dbo.Customer (CustomerName, HomeAddress, Email, MobileNo, GST_NO, CityName, PinCode, NetAmount, UserID)
VALUES 
('Alice Green', '789 Pine St', 'alice.green@example.com', '1234567890', 'GST1234567890', 'Pine City', '123456', 1000.00, 1),
('Bob White', '321 Oak St', 'bob.white@example.com', '0987654321', 'GST0987654321', 'Oak Town', '654321', 2000.00, 2),
('Charlie Black', '456 Elm St', 'charlie.black@example.com', '1122334455', 'GST1122334455', 'Elm Village', '789012', 1500.00, 3),
('David Blue', '654 Cedar St', 'david.blue@example.com', '2233445566', 'GST2233445566', 'Cedar Grove', '345678', 2500.00, 4),
('Emma Yellow', '123 Main St', 'emma.yellow@example.com', '3344556677', 'GST3344556677', 'Main City', '567890', 3000.00, 5);
SELECT * FROM dbo.Customer

--PROCEDURES

--InsertProduct
CREATE PROCEDURE dbo.InsertProduct
(
    @ProductName VARCHAR(100),
    @ProductPrice DECIMAL(10, 2),
    @ProductCode VARCHAR(100),
    @Description VARCHAR(100),
    @UserID INT
)
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO dbo.Product (ProductName, ProductPrice, ProductCode, Description, UserID)
    VALUES (@ProductName, @ProductPrice, @ProductCode, @Description, @UserID);
END

--UpdateProduct
CREATE PROCEDURE dbo.UpdateProduct
(
    @ProductID INT,
    @ProductName VARCHAR(100),
    @ProductPrice DECIMAL(10, 2),
    @ProductCode VARCHAR(100),
    @Description VARCHAR(100),
    @UserID INT
)
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE dbo.Product
    SET ProductName = @ProductName,
        ProductPrice = @ProductPrice,
        ProductCode = @ProductCode,
        Description = @Description,
        UserID = @UserID
    WHERE ProductID = @ProductID;
END

--DeleteProduct
CREATE PROCEDURE dbo.DeleteProduct
(
    @ProductID INT
)
AS
BEGIN
    SET NOCOUNT ON;
    
    DELETE FROM dbo.Product
    WHERE ProductID = @ProductID;
END


--SelectProduct/WithID-WithoutID
CREATE PROCEDURE dbo.SelectProduct
(
    @ProductID INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    
    IF @ProductID IS NULL
    BEGIN
        SELECT ProductID, ProductName, ProductPrice, ProductCode, Description, UserID
        FROM dbo.Product;
    END
    ELSE
    BEGIN
        SELECT ProductID, ProductName, ProductPrice, ProductCode, Description, UserID
        FROM dbo.Product
        WHERE ProductID = @ProductID;
    END
END
EXEC dbo.SelectProduct 3

--UserPrecedures
--GetByID
CREATE PROCEDURE dbo.GetUserByID
    @UserID INT
AS
BEGIN
    SELECT * FROM dbo.[User]
    WHERE UserID = @UserID;
END


--GetAll
CREATE PROCEDURE dbo.GetAllUsers
AS
BEGIN
    SELECT * FROM dbo.[User];
END

--InsertUser
CREATE PROCEDURE dbo.InsertUser
    @UserName VARCHAR(100),
    @Email VARCHAR(100),
    @Password VARCHAR(100),
    @MobileNo VARCHAR(15),
    @Address VARCHAR(100),
    @IsActive BIT
AS
BEGIN
    INSERT INTO dbo.[User] (UserName, Email, Password, MobileNo, Address, IsActive)
    VALUES (@UserName, @Email, @Password, @MobileNo, @Address, @IsActive);
END

--UpdateUser
CREATE PROCEDURE dbo.UpdateUser
    @UserID INT,
    @UserName VARCHAR(100),
    @Email VARCHAR(100),
    @Password VARCHAR(100),
    @MobileNo VARCHAR(15),
    @Address VARCHAR(100),
    @IsActive BIT
AS
BEGIN
    UPDATE dbo.[User]
    SET UserName = @UserName,
        Email = @Email,
        Password = @Password,
        MobileNo = @MobileNo,
        Address = @Address,
        IsActive = @IsActive
    WHERE UserID = @UserID;
END

--DeleteUser
CREATE PROCEDURE dbo.DeleteUser
    @UserID INT
AS
BEGIN
    DELETE FROM dbo.[User]
    WHERE UserID = @UserID;
END

--OrderProcedure

--InsertOrder
CREATE PROCEDURE dbo.InsertOrder
    @OrderDate DATETIME,
    @CustomerID INT,
    @PaymentMode VARCHAR(100) = NULL,
    @TotalAmount DECIMAL(10,2) = NULL,
    @ShippingAddress VARCHAR(100),
    @UserID INT
AS
BEGIN
    INSERT INTO dbo.[Order] (OrderDate, CustomerID, PaymentMode, TotalAmount, ShippingAddress, UserID)
    VALUES (@OrderDate, @CustomerID, @PaymentMode, @TotalAmount, @ShippingAddress, @UserID);
END

--GetByIDOrder
CREATE PROCEDURE dbo.GetOrderByID
    @OrderID INT
AS
BEGIN
    SELECT * FROM dbo.[Order]
    WHERE OrderID = @OrderID;
END


--GetAllOrder
CREATE PROCEDURE dbo.GetAllOrders
AS
BEGIN
    SELECT * FROM dbo.[Order];
END


--UpdateOrder
CREATE PROCEDURE dbo.UpdateOrder
    @OrderID INT,
    @OrderDate DATETIME,
    @CustomerID INT,
    @PaymentMode VARCHAR(100) = NULL,
    @TotalAmount DECIMAL(10,2) = NULL,
    @ShippingAddress VARCHAR(100),
    @UserID INT
AS
BEGIN
    UPDATE dbo.[Order]
    SET OrderDate = @OrderDate,
        CustomerID = @CustomerID,
        PaymentMode = @PaymentMode,
        TotalAmount = @TotalAmount,
        ShippingAddress = @ShippingAddress,
        UserID = @UserID
    WHERE OrderID = @OrderID;
END


--DeleteOrder
CREATE PROCEDURE dbo.DeleteOrder
    @OrderID INT
AS
BEGIN
    DELETE FROM dbo.[Order]
    WHERE OrderID = @OrderID;
END

--OrderDetailProcedure

--InsertOrderDetail
CREATE PROCEDURE dbo.InsertOrderDetail
    @OrderID INT,
    @ProductID INT,
    @Quantity INT,
    @Amount DECIMAL(10,2),
    @TotalAmount DECIMAL(10,2),
    @UserID INT
AS
BEGIN
    INSERT INTO dbo.OrderDetail (OrderID, ProductID, Quantity, Amount, TotalAmount, UserID)
    VALUES (@OrderID, @ProductID, @Quantity, @Amount, @TotalAmount, @UserID);
END

--GetByID
CREATE PROCEDURE dbo.GetOrderDetailByID
    @OrderDetailID INT
AS
BEGIN
    SELECT * FROM dbo.OrderDetail
    WHERE OrderDetailID = @OrderDetailID;
END

--GetAll
CREATE PROCEDURE dbo.GetAllOrderDetails
AS
BEGIN
    SELECT * FROM dbo.OrderDetail;
END

--UpdateOrderDetail
CREATE PROCEDURE dbo.UpdateOrderDetail
    @OrderDetailID INT,
    @OrderID INT,
    @ProductID INT,
    @Quantity INT,
    @Amount DECIMAL(10,2),
    @TotalAmount DECIMAL(10,2),
    @UserID INT
AS
BEGIN
    UPDATE dbo.OrderDetail
    SET OrderID = @OrderID,
        ProductID = @ProductID,
        Quantity = @Quantity,
        Amount = @Amount,
        TotalAmount = @TotalAmount,
        UserID = @UserID
    WHERE OrderDetailID = @OrderDetailID;
END

--DeleteOrderDetail
CREATE PROCEDURE dbo.DeleteOrderDetail
    @OrderDetailID INT
AS
BEGIN
    DELETE FROM dbo.OrderDetail
    WHERE OrderDetailID = @OrderDetailID;
END

--Bill Procedure

--InsertBill
CREATE PROCEDURE dbo.InsertBill
    @BillNumber VARCHAR(100),
    @BillDate DATETIME,
    @OrderID INT,
    @TotalAmount DECIMAL(10,2),
    @Discount DECIMAL(10,2) = NULL,
    @NetAmount DECIMAL(10,2),
    @UserID INT
AS
BEGIN
    INSERT INTO dbo.Bills (BillNumber, BillDate, OrderID, TotalAmount, Discount, NetAmount, UserID)
    VALUES (@BillNumber, @BillDate, @OrderID, @TotalAmount, @Discount, @NetAmount, @UserID);
END

--GetByID
CREATE PROCEDURE dbo.GetBillByID
    @BillID INT
AS
BEGIN
    SELECT * FROM dbo.Bills
    WHERE BillID = @BillID;
END

--GetAll
CREATE PROCEDURE dbo.GetAllBills
AS
BEGIN
    SELECT * FROM dbo.Bills;
END


--GetByOrderID
CREATE PROCEDURE dbo.GetBillsByOrderID
    @OrderID INT
AS
BEGIN
    SELECT * FROM dbo.Bills
    WHERE OrderID = @OrderID;
END

--UpdateBill
CREATE PROCEDURE dbo.UpdateBill
    @BillID INT,
    @BillNumber VARCHAR(100),
    @BillDate DATETIME,
    @OrderID INT,
    @TotalAmount DECIMAL(10,2),
    @Discount DECIMAL(10,2) = NULL,
    @NetAmount DECIMAL(10,2),
    @UserID INT
AS
BEGIN
    UPDATE dbo.Bills
    SET BillNumber = @BillNumber,
        BillDate = @BillDate,
        OrderID = @OrderID,
        TotalAmount = @TotalAmount,
        Discount = @Discount,
        NetAmount = @NetAmount,
        UserID = @UserID
    WHERE BillID = @BillID;
END

--DeleteBill
CREATE PROCEDURE dbo.DeleteBill
    @BillID INT
AS
BEGIN
    DELETE FROM dbo.Bills
    WHERE BillID = @BillID;
END

--CustomerProcedure

--InsertCustomer
CREATE PROCEDURE dbo.InsertCustomer
    @CustomerName VARCHAR(100),
    @HomeAddress VARCHAR(100),
    @Email VARCHAR(100),
    @MobileNo VARCHAR(15),
    @GST_NO VARCHAR(15),
    @CityName VARCHAR(100),
    @PinCode VARCHAR(15),
    @NetAmount DECIMAL(10,2),
    @UserID INT
AS
BEGIN
    INSERT INTO dbo.Customer (CustomerName, HomeAddress, Email, MobileNo, GST_NO, CityName, PinCode, NetAmount, UserID)
    VALUES (@CustomerName, @HomeAddress, @Email, @MobileNo, @GST_NO, @CityName, @PinCode, @NetAmount, @UserID);
END

--GetByID
CREATE PROCEDURE dbo.GetCustomerByID
    @CustomerID INT
AS
BEGIN
    SELECT * FROM dbo.Customer
    WHERE CustomerID = @CustomerID;
END

--GetByUserID
CREATE PROCEDURE dbo.GetCustomersByUserID
    @UserID INT
AS
BEGIN
    SELECT * FROM dbo.Customer
    WHERE UserID = @UserID;
END

--GetAll
CREATE PROCEDURE dbo.GetAllCustomers
AS
BEGIN
    SELECT * FROM dbo.Customer;
END

--UpdateCustomer
CREATE PROCEDURE dbo.UpdateCustomer
    @CustomerID INT,
    @CustomerName VARCHAR(100),
    @HomeAddress VARCHAR(100),
    @Email VARCHAR(100),
    @MobileNo VARCHAR(15),
    @GST_NO VARCHAR(15),
    @CityName VARCHAR(100),
    @PinCode VARCHAR(15),
    @NetAmount DECIMAL(10,2),
    @UserID INT
AS
BEGIN
    UPDATE dbo.Customer
    SET CustomerName = @CustomerName,
        HomeAddress = @HomeAddress,
        Email = @Email,
        MobileNo = @MobileNo,
        GST_NO = @GST_NO,
        CityName = @CityName,
        PinCode = @PinCode,
        NetAmount = @NetAmount,
        UserID = @UserID
    WHERE CustomerID = @CustomerID;
END

--DeleteCustomer
CREATE PROCEDURE dbo.DeleteCustomer
    @CustomerID INT
AS
BEGIN
    DELETE FROM dbo.Customer
    WHERE CustomerID = @CustomerID;
END

















