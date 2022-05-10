-- PreLiquibase
--    The following SQL gets executed prior to invoking Liquibase. 
--    It only gets executed if the database is Microsoft SQL Server.
--
--    WARNING:
--    The following will execute correctly, but it won't get you far.
--    MS SQL Server does not have a way of setting the schema-to-use on a 
--    per-session level. Neither can it be specified in the connection URL.
--    All in all: For MS SQL Server you'll need to create multiple logins
--    and database users, each representing an environement for 'Medusa'
--    application and each user having a separate default schema.
IF (SCHEMA_ID('${spring.liquibase.liquibase-schema:liquibase}') IS NULL) 
BEGIN
    EXEC ('CREATE SCHEMA ${spring.liquibase.liquibase-schema:liquibase}')
END;
