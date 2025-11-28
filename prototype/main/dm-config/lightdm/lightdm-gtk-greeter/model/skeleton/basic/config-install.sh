#!/usr/bin/env bash

set -e


################################################################################
### Head: lightdm
##

lightdm_config_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Config: lightdm"
	echo "##"
	echo


	#lightdm_config_install_by_dir

	lightdm_config_install_by_each_file

	echo

}



lightdm_config_install_by_dir () {

	echo
	echo "sudo install -dm755 /etc/lightdm"
	sudo install -dm755 "/etc/lightdm"

	echo
	echo "sudo cp -rf ./asset/overlay/etc/lightdm/. /etc/lightdm"
	sudo cp -rf "./asset/overlay/etc/lightdm/." "/etc/lightdm"

}

lightdm_config_install_by_each_file () {


	lightdm_conf_install_by_each_file
	lightdm_conf_d_install_by_each_file


	lightdm_gtk_greeter_conf_install_by_each_file
	lightdm_gtk_greeter_conf_d_install_by_each_file


	return 0

}

lightdm_conf_install_by_each_file () {


	echo
	echo "sudo install -dm755 /etc/lightdm"
	sudo install -dm755 "/etc/lightdm"

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf"
	sudo install -Dm644 "./asset/overlay/etc/lightdm/lightdm.conf" "/etc/lightdm/lightdm.conf"


	return 0

}

lightdm_conf_d_install_by_each_file () {


	echo
	echo "sudo install -dm755 /etc/lightdm/lightdm.conf.d"
	sudo install -dm755 "/etc/lightdm/lightdm.conf.d"

	#lightdm_conf_d_install_by_each_file_for_basic
	#lightdm_conf_d_install_by_each_file_for_greeter


	return 0

}

lightdm_conf_d_install_by_each_file_for_basic () {

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/lightdm/lightdm.conf.d/50_basic.conf /etc/lightdm/lightdm.conf.d/50_basic.conf"
	sudo install -Dm644 "./asset/overlay/etc/lightdm/lightdm.conf.d/50_basic.conf" "/etc/lightdm/lightdm.conf.d/50_basic.conf"


	return 0

}


lightdm_conf_d_install_by_each_file_for_greeter () {

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/lightdm/lightdm.conf.d/70_greeter.conf /etc/lightdm/lightdm.conf.d/70_greeter.conf"
	sudo install -Dm644 "./asset/overlay/etc/lightdm/lightdm.conf.d/70_greeter.conf" "/etc/lightdm/lightdm.conf.d/70_greeter.conf"


	return 0

}

lightdm_gtk_greeter_conf_install_by_each_file () {


	echo
	echo "sudo install -dm755 /etc/lightdm"
	sudo install -dm755 "/etc/lightdm"

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf"
	sudo install -Dm644 "./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf" "/etc/lightdm/lightdm-gtk-greeter.conf"


	return 0

}

lightdm_gtk_greeter_conf_d_install_by_each_file () {

	echo
	echo "sudo install -dm755 /etc/lightdm/lightdm-gtk-greeter.conf.d"
	sudo install -dm755 "/etc/lightdm/lightdm-gtk-greeter.conf.d"

	lightdm_gtk_greeter_conf_d_install_by_each_file_for_basic
	lightdm_gtk_greeter_conf_d_install_by_each_file_for_panel
	lightdm_gtk_greeter_conf_d_install_by_each_file_for_theme
	lightdm_gtk_greeter_conf_d_install_by_each_file_for_background


	return 0

}

lightdm_gtk_greeter_conf_d_install_by_each_file_for_basic () {

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf /etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf"
	sudo install -Dm644 "./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf" "/etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf"


	return 0

}


lightdm_gtk_greeter_conf_d_install_by_each_file_for_panel () {

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/60_panel.conf /etc/lightdm/lightdm-gtk-greeter.conf.d/60_panel.conf"
	sudo install -Dm644 "./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/60_panel.conf" "/etc/lightdm/lightdm-gtk-greeter.conf.d/60_panel.conf"


	return 0

}

lightdm_gtk_greeter_conf_d_install_by_each_file_for_theme () {

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/70_theme.conf /etc/lightdm/lightdm-gtk-greeter.conf.d/70_theme.conf"
	sudo install -Dm644 "./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/70_theme.conf" "/etc/lightdm/lightdm-gtk-greeter.conf.d/70_theme.conf"


	return 0

}

lightdm_gtk_greeter_conf_d_install_by_each_file_for_background () {

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/80_background.conf /etc/lightdm/lightdm-gtk-greeter.conf.d/80_background.conf"
	sudo install -Dm644 "./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/80_background.conf" "/etc/lightdm/lightdm-gtk-greeter.conf.d/80_background.conf"


	return 0

}

##
### Tail: lightdm
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	lightdm_config_install

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
