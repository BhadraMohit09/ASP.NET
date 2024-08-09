CREATE TABLE Country (
CountryID INT IDENTITY(1,1) PRIMARY KEY,
CountryName VARCHAR(30) NOT NULL,
CountryCode INT NOT NULL,
Created DATETIME,
Modified DATETIME
);

DROP TABLE Country;

CREATE TABLE State (
StateID INT IDENTITY(1,1) PRIMARY KEY,
StateName VARCHAR(30) NOT NULL,
StateCode INT NOT NULL,
CountryID INT,
FOREIGN KEY(CountryID) REFERENCES Country(CountryID),
Created DATETIME,
Modiefied DATETIME
);

DROP TABLE State;

INSERT INTO Country VALUES('Afghanistan',101,'2024-07-11','2024-07-12');
INSERT INTO Country VALUES('Africa',102,'2024-07-11','2024-07-12');
INSERT INTO Country VALUES('Argentina',103,'2024-07-11','2024-07-12');
INSERT INTO Country VALUES('India',104,'2024-07-11','2024-07-12');
INSERT INTO Country VALUES('New Zealand',105,'2024-07-11','2024-07-12');

SELECT * FROM Country;

INSERT INTO State VALUES('Arunachal Pradesh',1041,4,'2024-07-11','2024-07-12');
INSERT INTO State VALUES('Assam',1042,4,'2024-07-11','2024-07-12');
INSERT INTO State VALUES('Gujarat',1043,4,'2024-07-11','2024-07-12');
INSERT INTO State VALUES('Maharashtra',1044,4,'2024-07-11','2024-07-12');
INSERT INTO State VALUES('Tamil Nadu',1045,4,'2024-07-11','2024-07-12');

SELECT * FROM State;

CREATE PROCEDURE [dbo].[PR_STATE_SELECTALL]
AS 
BEGIN
	SELECT
		[dbo].[State][StateName],
		[dbo].[State][StateCode]
	FROM 
		[dbo][State]
END;

CREATE PROCEDURE [dbo].[PR_COUNTRY_SELECTALL]
AS 
BEGIN
	SELECT
		[dbo].[Country][CountryID],
		[dbo].[Country][CountryName],
		[dbo].[Country][CountryCode],
		[dbo].[Country][Created],
		[dbo].[Country][Modified]
	FROM 
		[dbo][Country]
END;

CREATE PROCEDURE [dbo].[PR_COUNTRY_SELECTBYPK]
@countryid INT
AS
BEGIN
	SELECT
		[dbo].[Country][CountryID],
		[dbo].[Country][CountryName],
		[dbo].[Country][CountryCode],
		[dbo].[Country][Created],
		[dbo].[Country][Modified]
	FROM 
		[dbo][Country]
		WHERE 
		[dbo].[Country].[CountryID] = @countryid
END;

CREATE PROCEDURE [dbo].[PR_STATE_SELECTBYPK]
@stateid INT
AS
BEGIN
	SELECT
		[dbo].[State][StateID],
		[dbo].[State][StateName],
		[dbo].[State][StateCode],
		[dbo].[State][Created],
		[dbo].[State][Modified]
	FROM 
		[dbo][State]
		WHERE 
		[dbo].[State].[StateID] = @stateid
END;

CREATE PROCEDURE [dbo].[PR_COUNTRY_INSERTCOUNTRY]
@countryname VARCHAR(30),
@countrycode INT,
@created DATETIME,
@modified DATETIME
AS 
BEGIN
	INSERT INTO [dbo].[Country]
	(
		[CountryName],
		[CountryCode],
		[Created],
		[Modified]
	)
	VALUES 
	(
		@countryname,
		@countrycode,
		ISNULL(@created, GETDATE()),
		ISNULL(@modified, GETDATE())
	)
END;


CREATE PROCEDURE [dbo].[PR_STATE_INSERTSTATE]
@statename VARCHAR(30),
@statecode INT,
@countrycode INT,
@created DATETIME,
@modified DATETIME
AS 
BEGIN
	INSERT INTO [dbo].[State]
	(
		[StateName],
		[StateCode],
		[CountryID],
		[Created],
		[Modiefied]
	)
	VALUES 
	(
		@statename,
		@statecode,
		@countrycode,
		ISNULL(@created, GETDATE()),
		ISNULL(@modified, GETDATE())
	)
END;


CREATE PROCEDURE [dbo].[PR_COUNTRY_UPDATE]
@countryid INT,
@countryname VARCHAR(30)
AS 
BEGIN
	UPDATE [dbo].[Country]
	SET [CountryName] = @countryname
	WHERE [dbo].[Country].[CountryID] = @countryid
END;

CREATE PROCEDURE [dbo].[PR_STATE_UPDATE]
@stateid INT,
@statename VARCHAR(30),
@statecode INT,
@created DATETIME,
@modified DATETIME
AS 
BEGIN
	UPDATE [dbo].[State]
	SET [StateName] = @statename,
		[StateCode] = @statecode,
		[Created] = @created,
		[Modiefied] = @modified
	WHERE 
		[dbo].[State].[StateID] = @stateid
END;



