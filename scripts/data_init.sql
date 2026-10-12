/*
    This script initializes the DataWarehouse database and creates the necessary schemas.
    It drops the existing DataWarehouse database if it exists, and then creates a new one.
    The following schemas are created:
    - bronze
    - silver
    - gold

    warning : This script will drop the existing DataWarehouse database if it exists, which will result in the loss of all data in that database. Use with caution.
*/



USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
