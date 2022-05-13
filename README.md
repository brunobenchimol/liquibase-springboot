# liquibase-springboot

Running Liquibase inside Spring Boot Application

# Enviroment Variables 

| Variable | Description | 
| -------- | ----------- |
| `APP_INITCONTAINER_ENABLE` | Enable/disable to run on initContainers mode for k8s. Run and exit. Defaults `false` |
| `LIQUIBASE_ENABLE` | Enable/disable Liquibase. Defaults to `true` |
| `LIQUIBASE_URL` | JDBC URL Connection. Equals to --url | 
| `LIQUIBASE_USERNAME` | JDBC Username. Equals to --username |
| `LIQUIBASE_PASSWORD` | JDBC Password. Equals to --password |
| `LIQUIBASE_DEFAULT_SCHEMA_NAME` |  Specifies the default schema to use for managed database objects and for Liquibase control tables. Equals to --default-schema-name |
| `LIQUIBASE_CHANGELOGFILE` | Default Schema to use with Liquibase. Equals to --changelog-file |

# Notes
If you want to run liquibase inside a pipeline or within kubernetes (initConainters), set `APP_INITCONTAINER_ENABLE` to `true` to run and exit after running liquibase.   

# Commands  

To run with Maven:  
`export LIQUIBASE_URL="jdbc:postgresql://127.0.0.1:5432/docker" LIQUIBASE_USERNAME=postgres LIQUIBASE_PASSWORD=docker LIQUIBASE_CHANGELOGFILE=changelog.xml LIQUIBASE_DEFAULT_SCHEMA_NAME=testing`  
   
`mvn spring-boot:run`   

To build packages (application) for using with Dockerfile (docker build):  
`mvn package`   

To build Docker image:  
`docker build -t liquibase-springboot:tag .`   


# References  

1. https://spring.io/guides/gs/spring-boot/
2. https://docs.spring.io/spring-boot/docs/2.6.7/reference/html/
3. https://www.liquibase.com/blog/using-liquibase-in-kubernetes  
4. https://github.com/lbruun/Pre-Liquibase
5. https://zetcode.com/springboot/postgresql/
6. https://medium.com/sde-base/liquibase-create-schema-tables-items-in-your-database-753a6dd38893 
7. https://stacktraceguru.com/springboot/run-method-on-startup 
8. https://docs.spring.io/spring-boot/docs/current/reference/html/features.html 