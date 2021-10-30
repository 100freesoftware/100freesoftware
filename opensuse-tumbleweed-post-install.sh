sudo zypper refresh
sudo zypper up
sudo zypper dup
sudo zypper addrepo -cfp 90 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/' packman
sudo zypper dup --from packman --allow-vendor-change
sudo zypper refresh
sudo zypper install --from packman ffmpeg gstreamer-plugins-{good,bad,ugly,libav} libavcodec-full vlc-codecs
#
# KDE Codecs
# https://www.opensuse-community.org/codecs-kde.ymp
#
# GNOME Codecs
# https://www.opensuse-community.org/codecs-gnome.ymp
#
sudo zypper install fetchmsttfonts
#
# Install Google Chrome
# https://www.google.com/chrome/
#
sudo zypper install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#
# Install vanilla kernel
# https://software.opensuse.org/package/kernel-vanilla
#
sudo hwinfo --gfxcard | grep Model
#
# NVIDIA GeForce 600+ (driver version 400+)
# https://www.opensuse-community.org/nvidia_G05.ymp
#
# NVIDIA driver GeForce 400+ (driver version 300+)
# https://www.opensuse-community.org/nvidia_G04.ymp
#
# NVIDIA GeForce 8xxx+ (driver version 300+)
# https://www.opensuse-community.org/nvidia_G03.ymp
