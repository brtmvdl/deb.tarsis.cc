#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Android Command Line Tools
echo
wget 'https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip'
unzip commandlinetools-linux-8512546_latest.zip
mkdir -p ~/.android/
mv cmdline-tools/ ~/.android/
echo 'declare PATH=/home/neon/.android/cmdline-tools/bin:$PATH ' >> ~/.bashrc

echo
echo Android Studio
echo
wget 'https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.2.1.14/android-studio-2021.2.1.14-linux.tar.gz'
tar -xf android-studio-2021.2.1.14-linux.tar.gz
mv android-studio/ ~/.android/
echo 'declare PATH=/home/neon/.android/android-studio/bin:$PATH ' >> ~/.bashrc

echo
echo Android Extras
echo
sudo dpkg --add-architecture i386
sudo apt -y install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
