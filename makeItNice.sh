#!/bin/sh

echo "Updating system..."
pacman -Syu --noconfirm

echo "Download apps..."
pacman -S --noconfirm tar unzip zip man libreoffice-fresh-ru calibre git gcc make cmake clang curl firefox zsh pipewire-pulse \
    wget vim thunderbird htop alacritty gnome-shell-extensions keepassxc \
    bluez bluez-utils telegram-desktop gthumb obsidian timeshift qbittorrent vlc rawtherapee remmina \
    kdeconnect openssh

echo "Activate bluetooth"
systemctl enable bluetooth
systemctl start bluetooth

systemctl daemon-reload

echo "Curling VScode..."
curl https://vscode.download.prss.microsoft.com/dbazure/download/stable/6609ac3d66f4eade5cf376d1cb76f13985724bcb/code-stable-x64-1741123754.tar.gz -o VSCode-linux-x64
tar -xf VSCode-linux-x64
mv -R VSCode-linux-x64 /opt

ln -sT /opt/VSCode-linux-x64/bin/code /usr/bin/code
ln -sT /opt/VSCode-linux-x64/bin/code /uzr/bin/сщву

ln -sT /usr/bin/thunderbird /usr/bin/ергтвукишкв
ln -sT /usr/bin/telegram-desktop /usr/bin/еудупкфь-вуылещз


echo "Getting yandex-disk..."
git clone https://aur.archlinux.org/yandex-disk.git

curl -O https://extensions.gnome.org/extension-data/caffeinepatapon.info.v56.shell-extension.zip
gnome-extensions inatsll caffeinepatapon.info.v56.shell-extension.zip
gnome-extensions enable caffeinepatapon.info.v56.shell-extension.zip

curl -O https://extensions.gnome.org/extension-data/hidetopbarmathieu.bidon.ca.v118.shell-extension.zip
gnome-extensions inatsll hidetopbarmathieu.bidon.ca.v118.shell-extension.zip
gnome-extensions enable hidetopbarmathieu.bidon.ca.v118.shell-extension.zip


curl -O https://extensions.gnome.org/extension-data/Resource_MonitorOry0n.v25.shell-extension.zip
gnome-extensions inatsll Resource_MonitorOry0n.v25.shell-extension.zip
gnome-extensions enable Resource_MonitorOry0n.v25.shell-extension.zip

rm hidetopbarmathieu* Resource_MonitorOry0n* caffeinepatapon*

git clone https://aur.archlinux.org/portproton.git

echo "Download oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
