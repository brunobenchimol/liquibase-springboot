-- PreLiquibase
--    The following SQL gets exexuted prior to invoking Liquibase. 
--    This file gets executed if no database specific SQL script exist for 
--    the database in question. Hence, it acts as a fallback. 
-- 
CREATE SCHEMA ${spring.liquibase.liquibase-schema:liquibase};