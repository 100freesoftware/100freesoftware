# Check for Update, and Upgrade
sudo apt update && sudo apt upgrade -y
# Linux Mint comes pre-packed with various media players 
# without multimedia codes, so it can’t play media files.
sudo apt-get install mint-meta-codecs -y
# Turn your Firewall ON
sudo ufw enable
# Install p7zip-rar: Utility for file compression in order to handle zip and rar files.
# Install catfish: A utility for file search. 
sudo apt install p7zip-rar catfish -y
# Install Extra Fonts (700MB)
sudo apt install fonts-liberation fonts-liberation2 fonts-open-sans msttcorefonts fonts-inconsolata fonts-hack fonts-hack-otf fonts-hack-ttf fonts-hack-web fonts-dejavu fonts-dejavu-core fonts-dejavu-extra fonts-firacode fonts-roboto fonts-roboto-fontface fonts-roboto-hinted fonts-roboto-slab fonts-roboto-unhinted fonts-noto fonts-noto-cjk-extra fonts-noto-core fonts-noto-hinted fonts-noto-ui-core fonts-noto-unhinted fonts-noto-cjk fonts-noto-color-emoji fonts-noto-extra fonts-noto-mono fonts-noto-ui-extra fonts-prociono fonts-fantasque-sans -y
# You can clean partial packages using a command.
sudo apt-get autoclean -y
# You can auto cleanup apt-cache
sudo apt-get clean -y
# You can clean up any unused dependencies.
sudo apt-get autoremove -y
