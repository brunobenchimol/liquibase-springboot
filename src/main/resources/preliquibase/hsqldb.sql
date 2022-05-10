-- PreLiquibase
--    The following SQL gets executed prior to invoking Liquibase. 
--    It only gets executed if the database is HyperSQL.
--
CREATE SCHEMA IF NOT EXISTS ${spring.liquibase.liquibase-schema:liquibase};