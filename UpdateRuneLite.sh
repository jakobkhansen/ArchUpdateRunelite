#! /bin/bash

cd ~/.runelite/

mv RuneLite.AppImage Old.AppImage

echo "Downloading latest Runelite AppImage"
curl -s https://api.github.com/repos/runelite/launcher/releases/latest \
| grep -E "browser_download_url.*RuneLite.AppImage" \
| sed -e "s/^.*: //" \
| sed -r 's/[\"]+//g' \
| wget -qi - --show-progress
sudo chmod +x RuneLite.AppImage
