#!/bin/bash

# TestZero.png must be 1024x1024
mkdir TestZero.iconset
sips -z 16 16     TestZero.png --out TestZero.iconset/icon_16x16.png
sips -z 32 32     TestZero.png --out TestZero.iconset/icon_16x16@2x.png
sips -z 32 32     TestZero.png --out TestZero.iconset/icon_32x32.png
sips -z 64 64     TestZero.png --out TestZero.iconset/icon_32x32@2x.png
sips -z 128 128   TestZero.png --out TestZero.iconset/icon_128x128.png
sips -z 256 256   TestZero.png --out TestZero.iconset/icon_128x128@2x.png
sips -z 256 256   TestZero.png --out TestZero.iconset/icon_256x256.png
sips -z 512 512   TestZero.png --out TestZero.iconset/icon_256x256@2x.png
sips -z 512 512   TestZero.png --out TestZero.iconset/icon_512x512.png
cp TestZero.png TestZero.iconset/icon_512x512@2x.png
iconutil -c icns TestZero.iconset
rm -R TestZero.iconset

filename="../Zero Unit Test.xctemplate/TemplateIcon.icns"
rm -fr "$filename"
mv TestZero.icns "$filename"
