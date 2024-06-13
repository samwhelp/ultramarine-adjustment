#!/usr/bin/env bash

set -e


################################################################################
### Head: firefox
##

firefox_config_install () {

	echo
	echo "##"
	echo "## Config: firefox"
	echo "##"
	echo


	firefox_config_install_by_dir

	#firefox_config_install_by_each_file


	echo

}

firefox_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

firefox_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/firefox"
	mkdir -p "${HOME}/.config/firefox"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/firefox/firefox.conf ${HOME}/.config/firefox/firefox.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/firefox/firefox.conf" "${HOME}/.config/firefox/firefox.conf"


}

##
### Tail: firefox
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	firefox_config_install

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
