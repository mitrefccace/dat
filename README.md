# dat

This repo contains configuration and data files for the ACE Direct system. It lives in the home folder of the user (~/).

## config.json_TEMPLATE

All ACE Direct servers use a global JSON configuration file. The common section of the configuration file contains common parameters for all servers. The remaining sections are application-specific parameters. To create the configuration file for the first time, copy *~/dat/config.json_TEMPLATE* to *~/dat/config.json*. Then add the values for your environment. This file is ignored by Git, so doing a ```git pull``` will not overwrite your existing *config.json* file.

## parameter_desc.json

The purpose of the *parameter_desc.json* file is to document each parameter in the global configuration file. It has the same structure as *config.json_TEMPLATE*, but the values are descriptions of each parameter. This file must be maintained along with *config.json_TEMPLATE*.

## parameter_desc.json

This JSON file mirrors config.json_TEMPLATE. The parameter names are the same. The parameter values are descriptions of the fields. This JSON file documents the config. parameters, and it must be maintained along with config.json_TEMPLATE.

## Kuando Busylight Configuration Files

The *color_config.json_TEMPLATE* and *default_color_config.json_TEMPLATE* files must be copied to the ~/dat folder and renamed to *color_config.json* and *default_color_config.json*. The *default_color_config.json* file is a 508 compliant color scheme. Do not change this file. Make any custom changes in the *color_config.json* file, but there is a Management Portal web page that maintains this. For dynamic updating of Busylight status colors, the Management Portal reads the ACE Direct URL from the configuration file.

## process.json_TEMPLATE

This is a template for process.json. Rename it to process.json and update the port numbers. To start all servers: ```pm2 start process.json```.
