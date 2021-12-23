#After Installing Arch Linux GUI
# Post Install Options
# Update
sudo rm /var/lib/pacman/db.lck
sudo pacman -Sy archlinux-keyring
sudo pacman -Syu
# remove the older kernels
sudo pacman -Rs linux
# Install Microcode
# For Intel Processors:
sudo pacman -S intel-ucode
sudo grub-mkconfig -o /boot/grub/grub.cfg
# For AMD Processors:
sudo pacman -S linux-firmware
sudo grub-mkconfig -o /boot/grub/grub.cfg
# Install and Enable the firewall
sudo pacman -S ufw
sudo ufw enable
# Remove orphans
sudo pacman -Rns $(pacman -Qtdq)
# Check for errors in
# systemd
sudo systemctl --failed
# logfiles
sudo journalctl -p 3 -xb
