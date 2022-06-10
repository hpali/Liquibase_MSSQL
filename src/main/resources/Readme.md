Die Einführung vonm Liquibase in Springboot projekt hat die folgende Schritte

1,
<plugin>
<groupId>org.liquibase</groupId>
<artifactId>liquibase-maven-plugin</artifactId>
<version>4.3.2</version>
<configuration>
<username>postgres</username>
<password>postgrep</password>
<driver>org.postgresql.Driver</driver>
<url>jdbc:postgresql://localhost:5432/airport_liq_b</url>
<changeLogFile>src/main/resources/db/changelog/master-changelog.xml</changeLogFile>
<outputChangeLogFile>src/main/resources/db/changelog/18-01-d-changelog.xml</outputChangeLogFile>
<diffTypes>catalogs,tables,functions,views,columns,indexes,foreignkeys,primarykeys,uniqueconstraints,data,storedprocedures,triggers,sequences,databasepackage,databasepackagebody
</diffTypes>
<changeSetAuthor>hp</changeSetAuthor>
</configuration>
<dependencies>
<dependency>
<groupId>org.postgresql</groupId>
<artifactId>postgresql</artifactId>
<version>42.2.12</version>
</dependency>
</dependencies>
</plugin>
