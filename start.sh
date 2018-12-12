#!/bin/bash

########################################################################
# Write Config variables in envrionment to the configuration JSON file #
########################################################################
lib/envsubst < config/config-heroku-template.toml > config/config-heroku.toml

######################
# Start Matterbridge #
######################
exec ./matterbridge -conf=config/config-heroku.toml
