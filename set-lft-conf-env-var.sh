#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters."
    echo "Expecting a full path to a json config file"
    exit
fi

launchctl setenv LFT_TEST_CONFIG $1

echo "LFT_TEST_CONFIG environment variable is set to: " $(launchctl getenv LFT_TEST_CONFIG)

#launchctl unsetenv LFT_TEST_CONFIG
