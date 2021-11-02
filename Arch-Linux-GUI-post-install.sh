#After Installing Arch Linux GUI
# Post Install Options
# Update
sudo pacman -Syu
# or
sudo pacman -Syyu
# install the LTS kernel and Linux LTS headers
sudo pacman -S linux-lts
sudo pacman -S linux-lts-headers
# remove the older kernels
sudo pacman -Rs linux
# Installing Codecs and plugins
sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins
# Install archive managers
sudo pacman -S p7zip p7zip-plugins unrar tar rsync
# Install Microcode
# For Intel Processors:
sudo pacman -S intel-ucode
sudo grub-mkconfig -o /boot/grub/grub.cfg
# For AMD Processors:
sudo pacman -S linux-firmware
sudo grub-mkconfig -o /boot/grub/grub.cfg
# Rank Mirrorlists
sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
sudo rankmirrors /etc/pacman.d/mirrorlist.bak > /etc/pacman.d/mirrorlist
# Install Bluetooth
sudo pacman -S bluez blueman bluez-utils
# start btusb module:
sudo modeprobe btusb
# Enable and Start bluetooth service:
sudo systemctl enable bluetooth && sudo systemctl start bluetooth
# Install and Enable the firewall
sudo pacman -S ufw
sudo ufw enable
# Remove orphans
sudo pacman -Rns $(pacman -Qtdq)
# Optimize pacman's database
sudo pacman-optimize
# Check for errors in
# systemd
sudo systemctl --failed
# logfiles
sudo journalctl -p 3 -xb
