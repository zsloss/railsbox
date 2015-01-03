#!/bin/bash

if [ $# != 1 ]; then
	echo "Usage: $0 <app name>"
	exit 1
fi

echo "Creating new Rails app in /vagrant/$1 ..."
cd /vagrant
rails new $1 || exit 2

echo "Creating symlink in ~/ ..."
ln -s /vagrant/$1 ~/$1 || exit 3

echo "... Done!"
echo "You can now access your new Rails app here in ~/$1,"
echo "or in $1/ in your Vagrant shared folder on the host."
