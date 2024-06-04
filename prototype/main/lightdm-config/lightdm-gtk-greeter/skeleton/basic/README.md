
# lightdm / lightdm-gtk-greeter / skeleton




## Config File Path


### lightdm

| Config File Path |
| --- |
| [/etc/lightdm/lightdm.conf.d/50_basic.conf](./asset/overlay/etc/lightdm/lightdm.conf.d/50_basic.conf) |
| [/etc/lightdm/lightdm.conf.d/70_greeter.conf](./asset/overlay/etc/lightdm/lightdm.conf.d/70_greeter.conf) |
| [/etc/lightdm/lightdm.conf](./asset/overlay/etc/lightdm/lightdm.conf) |


### lightdm-gtk-greeter

| Config File Path |
| --- |
| [/etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf](./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf) |
| [/etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf](./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/60_panel.conf) |
| [/etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf](./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/70_theme.conf) |
| [/etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf](./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/80_background.conf) |
| [/etc/lightdm/lightdm-gtk-greeter.conf](./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf) |




## Fedora Package

> For LightDM and LightDM Gtk Greeter

| Fedora Package |
| --- |
| [lightdm](https://packages.fedoraproject.org/pkgs/lightdm/lightdm/) |
| [lightdm-gtk](https://packages.fedoraproject.org/pkgs/lightdm-gtk/lightdm-gtk/) |

> For `theme-name =`

| Fedora Package |
| --- |
| [arc-theme](https://packages.fedoraproject.org/pkgs/arc-theme/arc-theme/) |


> For `icon-theme-name  =`

| Fedora Package |
| --- |
| [papirus-icon-theme](https://packages.fedoraproject.org/pkgs/papirus-icon-theme/papirus-icon-theme/) |


> For `cursor-theme-name =`

| Fedora Package |
| --- |
| [breeze-cursor-theme](https://packages.fedoraproject.org/pkgs/plasma-breeze/breeze-cursor-theme/) |




## Howto


### install

``` sh
./install.sh
```

or

``` sh
make install
```


### package-install

``` sh
./package-install.sh
```

or

``` sh
make package-install
```


### config-install

``` sh
./config-install.sh
```

or

``` sh
make config-install
```
