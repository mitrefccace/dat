# dat

This folder contains global configuration and data files. It lives in the home folder of the user (~/).

## Global Configuration File

The global configuration file is *~/dat/config.json*. Its template is *~/dat/config.json_TEMPLATE*. All ACE Direct applications running on this machine read this single *config.json* file. If the *config.json* file does not exist, copy *config.json_TEMPLATE* to *config.json* and modify the appropriate values.

## parameter_desc.json

This JSON file mirrors config.json_TEMPLATE. The parameter names are the same. The parameter values are descriptions of the fields. This JSON file documents the config. parameters, and it must be maintained along with config.json_TEMPLATE.

## Kuando Busylight Configuration Files

The *color_config.json_TEMPLATE* and *default_color_config.json_TEMPLATE* files must be copied to the ~/dat folder and renamed to *color_config.json* and *default_color_config.json*. The *default_color_config.json* file is a 508 compliant color scheme. Do not change this file. Make any custom changes in the *color_config.json* file, but there is a Management Portal web page that maintains this. For dynamic updating of Busylight status colors, the Management Portal reads the ACE Direct URL from the configuration file.

## process.json_TEMPLATE

This is a template for process.json. Rename it to process.json and update the port numbers. To start all servers: ```pm2 start process.json```.
