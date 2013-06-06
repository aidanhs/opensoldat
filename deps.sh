#! /bin/sh
# Created on 13.04 lubuntu distro, ymmv
set -e

sudo apt-get install g++
sudo apt-get install mesa-common-dev
sudo apt-get install libglu1-mesa-dev
sudo apt-get install freeglut3-dev
sudo apt-get install libglew-dev
sudo apt-get install libsdl1.2-dev
sudo apt-get install libfreeimage-dev
sudo apt-get install libglm-dev
mkdir -p deps
cd deps

# Box2D
  # premake4
  wget http://downloads.sourceforge.net/project/premake/Premake/4.4/premake-4.4-beta4-linux.tar.gz
  tar xvf premake-4.4-beta4-linux.tar.gz
wget https://box2d.googlecode.com/files/Box2D_v2.2.1.zip
unzip Box2D_v2.2.1.zip
cd Box2D_v2.2.1
mv HelloWorld/Hello{W,w}orld.cpp
../premake4 gmake
cd Build/gmake
sed -i "s/-lGLUT/-lglut/g" Testbed.make
make
cd ../..
cd ..
