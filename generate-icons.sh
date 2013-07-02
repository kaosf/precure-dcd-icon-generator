#! /bin/sh

convert -resize 512x512 icon.png ic_launcher-web.png
convert -resize 72x72   icon.png res/drawable-hdpi/ic_launcher.png
convert -resize 48x48   icon.png res/drawable-mdpi/ic_launcher.png
convert -resize 96x96   icon.png res/drawable-xhdpi/ic_launcher.png
convert -resize 144x144 icon.png res/drawable-xxhdpi/ic_launcher.png
