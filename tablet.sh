#!/bin/bash

sudo dnf copr enable sdegler/hyprland


cd

#git clone --depth=1 https://github.com/JaKooLit/Fedora-Hyprland.git ~/Fedora-Hyprland
#cd ~/Fedora-Hyprland
#chmod +x install.sh
#./install.sh


sudo dnf install hyprland git nwg-drawer kitty cmake meson gcc-c++ dbus-devel iio-sensor-proxy cpio hyprland-devel
sudo dnf group install development-tools

#glslang-devel udis86-devel mcsm2-devel glm-devel doctest-devel



mount -o remount,size=3G,noexec,nosuid,nodev,noatime /run/user/1000
hyprpm update



git clone https://github.com/JeanSchoeller/iio-hyprland.git
cd iio-hyprland
sudo make install

cd
sudo rm -r iio-hyprland

git clone https://github.com/Anik200/dotfiles.git
cd /dotfiles-main/additional-assets
tar xf Font_CascadiaCove.tar
tar xf Font_JetBrainsMono.tar
tar xf Font_MapleNerd.tar
tar xf Font_MaterialDesign.tar
tar xf Font_MononokiNerd.tar
tar xf Font_NotoSansCJK.tar
sudo cp Font_CascadiaCove /usr/share/fonts/
sudo cp Font_JetBrainsMono /usr/share/fonts/
sudo cp Font_MapleNerd /usr/share/fonts/
sudo cp Font_MaterialDesign /usr/share/fonts/
sudo cp Font_MononokiNerd /usr/share/fonts/
sudo cp Font_NotoSansCJK /usr/share/fonts/
cd
sudo rm -r /dotfiles-main

#sudo rm -rf /usr/include/hyprland
#sudo rm -rf /usr/local/include/hyprland/

#git clone https://github.com/WayfireWM/wf-touch
#meson setup build
#ninja -C build


hyprpm add https://github.com/horriblename/hyprgrass

hyprpm enable hyprgrass


