System daemon for reading info about Radeon GPU clocks and volts as well as control card power profiles so the GUI [radeon-profile](https://github.com/blackPantherOS/radeon-profile-qt6) application can be run as normal user.

Supprts opensource xf86-video-ati and  xf86-video-amdgpu drivers.

# Dependencies

1. `qt6-base`

# Build

Type:

```
git clone https://github.com/blackPantherOS/radeon-profile-daemon.git &&
cd radeon-profile-daemon
qmake-qt6 &&
make
``` 

# systemd service

There is a service file for systemd in extra folder. If installed manually, copy service file to `/etc/systemd/system/`. After that, execute `systemctl enable radeon-profile-daemon.service` and `systemctl start radeon-profile-daemon.service` to make the daemon running.

# Links

* radeon-profile: https://github.com/blackPantherOS/radeon-profile-qt6
* AUR package for Qt5 version: https://aur.archlinux.org/packages/radeon-profile-daemon-git
