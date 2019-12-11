#! /bin/bash

cd ~/.runelite/

mv RuneLite.AppImage Old.AppImage

echo "Downloading latest Runelite AppImage"
curl -s https://api.github.com/repos/runelite/launcher/releases/latest \
| grep "browser_download_url.*AppImage" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
sudo chmod +x RuneLite.AppImage
