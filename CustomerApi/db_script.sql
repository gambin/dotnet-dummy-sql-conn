USE CustomerDb;

CREATE TABLE Customers (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100) NOT NULL
);

INSERT INTO Customers (Name) VALUES ('John Doe'), ('Jane Smith'), ('Alice Johnson');
