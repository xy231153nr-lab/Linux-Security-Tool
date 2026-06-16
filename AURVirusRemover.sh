#!/bin/bash
curl -o BadAURPackages https://md.archlinux.org/s/SxbqukK6IA
PackageString()={};
while IFS=read -r PackageString; do
  if[[ -n "$PackageString" ]]; then
    echo "Removing $PackageString..."
    sudo pacman -Rsn "$PackageString"
  fi
done < BadAURPackages
