#!/bin/bash

if (( $EUID != 0 )); then
    echo "This script requires root permissions, please run 'sudo ./setup.sh' without the quotations"
    exit 1
fi

echo "Welcome to the setup!"
echo ""
echo "To start, we need to make a system user to run the backup script."
echo ""
echo ""
echo "The name 'ncbackup' will be used. To change the name, press the 'C' key. Otherwise, press the enter/return key"
read var

if $var = "C"

elif $var = ""

fi