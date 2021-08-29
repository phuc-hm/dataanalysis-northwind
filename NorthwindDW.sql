USE NorthwindDW
GO

--Drop all table and constraint
DROP TABLE IF EXISTS NorthwindDW.dbo.factOrders
DROP TABLE IF EXISTS NorthwindDW.dbo.factOrdersDetails
DROP TABLE IF EXISTS NorthwindDW.dbo.dimProducts
DROP TABLE IF EXISTS NorthwindDW.dbo.dimCustomers
DROP TABLE IF EXISTS NorthwindDW.dbo.dimEmployees
DROP TABLE IF EXISTS NorthwindDW.dbo.dimSupervisors

-- Orders fact:
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
CREATE TABLE factOrdersDetails(
	[OrderID] int,
	[ProductID] int,
	[UnitPrice] money,
	[Quantity] smallint,
	[Discount] real
);

-- Customers dimension:
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