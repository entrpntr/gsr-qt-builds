#!/bin/bash

# Prereqs
#   - XCode command line tools installed

# Steps
#   - 1. Open Terminal and cd to the root of this repository

git clone git://code.qt.io/qt/qt5.git
cd qt5
git checkout v5.15.0
perl init-repository --module-subset=qtbase --branch

# If updating the git repository, the above steps would be more like:
# cd qt5
# git fetch --tags
# git checkout v5.15.0
# perl init-repository --module-subset=qtbase --branch -f

cd ..
mkdir qt-5.15.0-static
cd qt-5.15.0-static
../qt5/configure -static -release -opensource -platform macx-clang -confirm-license -nomake examples -nomake tests -nomake tools -opengl desktop
make -j2
sudo make install

# Installs in /usr/local/Qt-5.15.0
# Add /usr/local/Qt-5.15.0/bin to PATH
