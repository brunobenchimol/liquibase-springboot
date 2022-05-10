# liquibase-springboot

Not ready for OpenShift / K8S yet

# Enviroment Variables 

| Variable | Description | 
| -------- | ----------- |
| `LIQUIBASE_URL` | JDBC URL Connection. Equals to --url | 
| `LIQUIBASE_USERNAME` | JDBC Username. Equals to --username |
| `LIQUIBASE_PASSWORD` | JDBC Password. Equals to --password |
| `LIQUIBASE_DEFAULT_SCHEMA_NAME` |  Specifies the default schema to use for managed database objects and for Liquibase control tables. Equals to --default-schema-name |
| `LIQUIBASE_CHANGELOGFILE` | Default Schema to use with Liquibase. Equals to --changelog-file |

# Commands  

To run with Maven:  
`export LIQUIBASE_URL="jdbc:postgresql://127.0.0.1:5432/docker" LIQUIBASE_USERNAME=postgres LIQUIBASE_PASSWORD=docker LIQUIBASE_CHANGELOGFILE=changelog.xml LIQUIBASE_DEFAULT_SCHEMA_NAME=testing`  
`mvn spring-boot:run`   

# TODO

https://github.com/blagerweij/liquibase-sessionlock  
May be helpful on openshift pod kills, prefer initContainers to solve problems.

# References  

1. https://spring.io/guides/gs/spring-boot/
2. https://docs.spring.io/spring-boot/docs/2.6.7/reference/html/
3. https://www.liquibase.com/blog/using-liquibase-in-kubernetes  


5. https://github.com/lbruun/Pre-Liquibase

3. https://zetcode.com/springboot/postgresql/
4. https://medium.com/sde-base/liquibase-create-schema-tables-items-in-your-database-753a6dd38893 
