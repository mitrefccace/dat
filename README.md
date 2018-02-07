# dat

This repo contains configuration and data files for the ACE Direct system. It lives in the home folder of the ACE Direct user (~/).

## config.json_TEMPLATE

All ACE Direct servers use a global JSON configuration file named *config.json*. The default version of this configuration file is named *config.json_TEMPLATE*. You may copy config.json_TEMPLATE to config.json initially, or let the automated installation process do it for you (see the autoinstall repo). The common section of the configuration file contains common parameters for all servers. The remaining sections are application-specific parameters. Create the initial config.json file, then add the values for your environment. The config.json file is ignored by Git, so doing a ```git pull``` will not overwrite your existing config.json file.

## parameter_desc.json

The purpose of the *parameter_desc.json* file is to document each parameter in the global configuration file. It has the same structure as *config.json_TEMPLATE*, but the values are descriptions of each parameter. This file must be maintained along with *config.json_TEMPLATE*.

## parameter_desc.json

This JSON file mirrors config.json_TEMPLATE. It is for documentation purposes only. The parameter names are the same. The parameter values are the descriptions of the fields. This file must must be maintained along with config.json_TEMPLATE.

## color_config.json_TEMPLATE and default_color_config.json_TEMPLATE

The *color_config.json_TEMPLATE* and *default_color_config.json_TEMPLATE* files are the Kuando Busylight Configuration Files. To create them for the first time, rename them to *color_config.json* and *default_color_config.json*. The *default_color_config.json* file is a 508 compliant color scheme. Do not change this file. Make any custom changes in the *color_config.json* file, but there is a Management Portal web page that maintains this. For dynamic updating of Busylight status colors, the Management Portal reads the ACE Direct URL from the configuration file.

## process.json_TEMPLATE

The purpose of the process.json_TEMPLATE file is to simplify the starting/stopping/restarting of ACE Direct servers. To create it for the first time, rename it to process.json. ACE Direct uses the *pm2* program to manage processes. To start all servers the first time: ```pm2 start process.json```. Then you may execute ```pm2 start all```, ```pm2 stop all```, ```pm2 restart all```, ```pm2 start 1```, ```pm2 stop 1```, etc.

## acedirectdefault.sql

This file is a SQL script to create the initial ACE Direct database and populate it with sample data. Globally replace _EXTENSION_PASSWORD_ in this script with your actual Asterisk extension passwords. To import this database into your environment: 1) Create an ACE Direct database user with appropriate grants to read/write to the database, 2) Create the database, and 3) Import the script into the database. Here is a sample run:

```
[centos@dev1demo ~]$ mysql -u someuser -p -h 127.0.0.1
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 26
Server version: 5.6.39 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [(none)]> create database acedirect;
Query OK, 1 row affected (0.00 sec)

MySQL [(none)]> quit
Bye
[centos@dev1demo ~]$ mysql -u someuser -p -h 127.0.0.1 acedirect < acedirectdefault.sql
```

Finally, update your ~/dat/config.json file to point to this ACE Direct database.
