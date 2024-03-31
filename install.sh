#!/bin/bash

# Just uncomment these two lines if you don't have a specific reason for changing them
#INSTALL_DIR=/usr/local/bin
#CONFIG_DIR=/etc/sewage

if [ -z "$INSTALL_DIR" -o -z "$CONFIG_DIR" ]; then
	echo "You need to edit $0 to set INSTALL_DIR and CONFIG_DIR. There are a couple of good defaults in there ;)"
	exit 2
fi

if [ $UID -ne 0 ]; then
	echo "$0 needs to run as root, sorry!"
	exit 1
fi
SRC=src/main
SHELL_ROOT=$SRC/shell
PERL_ROOT=$SRC/perl

echo Installing tools
if [ ! -d "$INSTALL_DIR" ]; then
	mkdir -p $INSTALL_DIR
fi

for script in $PERL_ROOT/* $SHELL_ROOT/* ; do
	cp $script $INSTALL_DIR
done

echo Installing configuration
if [ ! -d "$CONFIG_DIR" ]; then
	mkdir -p $CONFIG_DIR
fi

cp $SRC/config/config $CONFIG_DIR

echo OK

