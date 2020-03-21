#! /bin/bash

cd ~/.runelite/


download=$(curl -s https://api.github.com/repos/runelite/launcher/releases \
| grep -E -m 1 "browser_download_url.*RuneLite.AppImage" \
| sed -e "s/^.*: //" \
| sed -r 's/[\"]+//g')
echo $download
if [ -z "$download" ]
then
    echo "Could not fetch download link"
else
    echo "Downloading AppImage"
    mv RuneLite.AppImage Old.AppImage 
    wget -q $download --show-progress
    sudo chmod +x RuneLite.AppImage
fi


