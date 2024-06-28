#!/bin/sh

MINECRAFT_VER=1.19.2
MOD_ID=114
VERSION_ID=12147

echo "Downloading FTB AbePack installer..."
FTB_URL=https://api.modpacks.ch/public/modpack/${MOD_ID}/${VERSION_ID}/server/arm/linux
wget "$FTB_URL" -O serverinstall_${MOD_ID}_${VERSION_ID}
chmod +x serverinstall_${MOD_ID}_${VERSION_ID}
./serverinstall_${MOD_ID}_${VERSION_ID} --auto --noscript
mv minecraft_server.${MINECRAFT_VER}.jar server.jar
rm serverinstall_${MOD_ID}_${VERSION_ID}
echo "y" | ./start.sh
