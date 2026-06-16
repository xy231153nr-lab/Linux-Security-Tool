#!/bin/bash
cd /tmp
wget -q https://github.com/EricChiang/pup/releases/download/v0.4.0/pup_linux_amd64.zip
unzip -q pup_linux_amd64.zip
sudo mv pup /usr/local/bin/
pup --version
curl -s https://md.archlinux.org/s/SxbqukK6IA | \
    pup 'div.markdown-body text{}' | \
    sed '1d;$d' > BadAURPackages
while IFS= read -r PackageString; do
    if [[ -n "$PackageString" ]]; then
        echo "Removing $PackageString..."
        sudo pacman -Rsn "$PackageString"
    fi
done < BadAURPackages
