#!/bin/bash

PACKAGES='zip unzip libicu-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev libzip-dev libxml2-dev libxslt1-dev golang git lsof'

notinstall_pkgs=""
install=false

for pkg in $PACKAGES; do
	status="$(dpkg-query -W --showformat='${db:Status-Status}' "$pkg" 2>&1)"
	if [ ! $? = 0 ] || [ ! "$status" = installed ]; then
		install=true
		notinstall_pkgs=$pkg" "$notinstall_pkgs
	else
		installed_pkgs=$pkg" "$installed_pkgs
	fi
done

if "$install"; then
	apt-get install -y $notinstall_pkgs
else
	echo "### WARNING ${installed_pkgs} Package[s] already installed. ###"
fi
