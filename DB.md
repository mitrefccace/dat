# DB.md

This README contains instructions to create the initial ACE Direct database.

## Assumptions

* Initial database has been created
* Grants have been issued for a username/password to provide read and write
access

To create the tables:

```
mysql -uusername -p database_name < acedirect_schema.txt
```
