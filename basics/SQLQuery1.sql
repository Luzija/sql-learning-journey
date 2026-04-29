CREATE DATABASE PracticeSQL2;
GO

USE PracticeSQL2;
GO

CREATE TABLE people ( 
	PersonID INT IDENTITY(1,1) PRIMARY KEY,
	FirstName NVARCHAR(50)
	LastName NVARCHAR(50)
	CreatedAT DATETIME2 DEFAULT SYSDATETIME()
);

INSERT INTO People (FirstName, LastName)
Values ('Ada', 'Lovelave'), ('Grace','Hopper');

SELECT * FROM People;

