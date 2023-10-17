echo "-------------------------------------------------------"
echo " MisterSheeple's Sonic Mania Android Build Helper v2.0"
echo "-------------------------------------------------------"
echo ""
echo "                                                 WARNING:"
echo ""
echo "Before continuing, please consult the guide at https://github.com/MisterSheeple/Sonic-Mania-Android-Build-Guide/"
echo ""

git clone https://github.com/Rubberduckycooly/Sonic-Mania-Decompilation.git ~/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation
git clone https://github.com/Rubberduckycooly/RSDKv5-Example-Mods.git ~/Sonic-Mania-Android-Sheeple/RSDKv5-Example-Mods
git clone https://github.com/Rubberduckycooly/GameAPI.git ~/Sonic-Mania-Android-Sheeple/GameAPI
git clone https://github.com/Rubberduckycooly/RSDKv5-Decompilation.git ~/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation/dependencies/RSDKv5 --recursive
echo Cloning done.
clear

cd ~/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation/dependencies/RSDKv5/dependencies/android
curl -L http://downloads.xiph.org/releases/theora/libtheora-1.1.1.zip --output libtheora.zip
curl -L http://downloads.xiph.org/releases/ogg/libogg-1.3.5.zip --output libogg.zip
unzip libtheora.zip
unzip libogg.zip
mv libtheora-1.1.1 libtheora
mv libogg patches
mv libogg-1.3.5 libogg
cd libogg
cp -rf ../patches/* .
cd ..
rm *.zip
rm -rf ./patches
echo Dependencies done.

cp -rf ~/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation/dependencies/RSDKv5/dependencies/android/libogg ~/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation/dependencies/RSDKv5/dependencies/windows/libogg
cp -rf ~/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation/dependencies/RSDKv5/dependencies/android/libtheora ~/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation/dependencies/RSDKv5/dependencies/windows/libtheora
echo Dependency copy done.

clear

cd ~/Sonic-Mania-Android-Sheeple/RSDKv5-Example-Mods/ManiaTouchControls
cd ~/Sonic-Mania-Android-Sheeple/GameAPI
cp ~/Sonic-Mania-Android-Sheeple/GameAPI ~/Sonic-Mania-Android-Sheeple/RSDKv5-Example-Mods/ManiaTouchControls/GameAPI -rf
cd ~/Sonic-Mania-Android-Sheeple/RSDKv5-Example-Mods/UltrawideMania
cd ~/Sonic-Mania-Android-Sheeple/GameAPI
cp ~/Sonic-Mania-Android-Sheeple/GameAPI ~/Sonic-Mania-Android-Sheeple/RSDKv5-Example-Mods/UltrawideMania/GameAPI -rf

cd ~/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation/dependencies/RSDKv5/android/app/jni
ln -s  ~/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation Game
ln -s ~/Sonic-Mania-Android-Sheeple/GameAPI GameAPI
ln -s ~/Sonic-Mania-Android-Sheeple/RSDKv5-Example-Mods/ManiaTouchControls MTouchCtrl
ln -s ~/Sonic-Mania-Android-Sheeple/RSDKv5-Example-Mods/UltrawideMania UWMania
echo Symlink setup done.

clear
echo "-------------------------------------------------------------------------------------------------------------------"
echo "SETUP COMPLETE. Please continue with the guide at https://github.com/MisterSheeple/Sonic-Mania-Android-Build-Guide/"
echo "-------------------------------------------------------------------------------------------------------------------"
echo ""
