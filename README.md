Run Liquibase using property substitution:

Dry run:
```shell
liquibase updateSql --contexts=DEV
liquibase updateSql --contexts=TEST
liquibase updateSql --contexts=QA
liquibase updateSql --contexts=UAT
liquibase updateSql --contexts=PROD
```

Deploy:
```shell
liquibase update --contexts=DEV
liquibase update --contexts=TEST
liquibase update --contexts=QA
liquibase update --contexts=UAT
liquibase update --contexts=PROD
```