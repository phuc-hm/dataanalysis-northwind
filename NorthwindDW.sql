USE NorthwindDW
GO
-- Orders fact:
DROP TABLE NorthwindDW.dbo.factOrders

CREATE TABLE factOrders(
	[OrderID] int,
    [CustomerID] nchar(5),
    [EmployeeID] int,
    [OrderDate] datetime,
    [RequiredDate] datetime,
    [ShippedDate] datetime,
    [ShipVia] int,
    [Freight] money,
    [ShipName] nvarchar(40),
    [ShipAddress] nvarchar(60),
    [ShipCity] nvarchar(15),
    [ShipRegion] nvarchar(15),
    [ShipPostalCode] nvarchar(10),
    [ShipCountry] nvarchar(15)
);

-- OrdersDetails fact:
DROP TABLE NorthwindDW.dbo.factOrdersDetails

CREATE TABLE factOrdersDetails(
	[OrderID] int,
	[ProductID] int,
	[UnitPrice] money,
	[Quantity] smallint,
	[Discount] real
);

-- Customers dimension:
DROP TABLE NorthwindDW.dbo.dimProducts

CREATE TABLE dimProducts(
	[ProductID] int,
    [ProductName] nvarchar(40),
    [SupplierID] int,
    [CategoryID] int,
    [QuantityPerUnit]nvarchar(20),
    [UnitPrice] money,
    [UnitsInStock] smallint,
    [UnitsOnOrder] smallint,
    [ReorderLevel] smallint,
    [Discontinued] bit,
    [CategoryName] nvarchar(15),
    [Description] ntext,
    [Picture] image,
	[CompanyName] nvarchar(40),
    [ContactName] nvarchar(30),
    [ContactTitle] nvarchar(30),
    [Address] nvarchar(60),
    [City] nvarchar(15),
    [Region] nvarchar(15),
    [PostalCode] nvarchar(10),
    [Country] nvarchar(15),
    [Phone] nvarchar(24),
    [Fax] nvarchar(24),
    [HomePage] ntext
);


-- Customers dimension:
DROP TABLE NorthwindDW.dbo.dimCustomers

CREATE TABLE dimCustomers(
	[CustomerID] nchar(5),
	[CompanyName] nvarchar(40),
	[ContactName] nvarchar(30),
	[ContactTitle] nvarchar(30),
    [Address] nvarchar(60),
    [City] nvarchar(15),
    [Region] nvarchar(15),
    [PostalCode] nvarchar(10),
    [Country] nvarchar(15),
    [Phone] nvarchar(24),
    [Fax] nvarchar(24),
);

-- Employees dimension:
DROP TABLE NorthwindDW.dbo.dimEmployees

CREATE TABLE dimEmployees(
	[EmployeeID] int,
    [LastName] nvarchar(20),
    [FirstName] nvarchar(10),
    [Title] nvarchar(30),
    [TitleOfCourtesy] nvarchar(30),
    [BirthDate] datetime,
    [HireDate] datetime,
    [Address] nvarchar(60),
    [City] nvarchar(15),
    [Region] nvarchar(15),
    [PostalCode] nvarchar(10),
    [Country] nvarchar(15),
    [HomePhone] nvarchar(24),
    [Extension] nvarchar(4),
    [Photo] image,
    [Notes] ntext,
    [ReportsTo] int,
    [PhotoPath] nvarchar(255),
);

-- Supervisors dimension:
DROP TABLE NorthwindDW.dbo.dimSupervisors

CREATE TABLE dimSupervisors(
	[EmployeeID] int,
    [LastName] nvarchar(20),
    [FirstName] nvarchar(10),
    [Title] nvarchar(30),
    [TitleOfCourtesy] nvarchar(30),
    [BirthDate] datetime,
    [HireDate] datetime,
    [Address] nvarchar(60),
    [City] nvarchar(15),
    [Region] nvarchar(15),
    [PostalCode] nvarchar(10),
    [Country] nvarchar(15),
    [HomePhone] nvarchar(24),
    [Extension] nvarchar(4),
    [Photo] image,
    [Notes] ntext,
    [ReportsTo] int,
    [PhotoPath] nvarchar(255),
);