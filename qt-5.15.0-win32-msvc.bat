rem These steps should reproduce the build on a Windows machine.

rem Prereqs
rem   - Visual Studio 2019 (with Visual C++)
rem   - Git / Perl / Python

rem Steps
rem   1. Start Developer Command Prompt for VS 2019 (this is 32-bit environment)
rem   2. cd to the root directory of this repo

git clone git://code.qt.io/qt/qt5.git
cd qt5
git checkout v5.15.0
perl init-repository --module-subset=qtbase --branch

rem If updating the git repository, the above steps would be more like:
rem cd qt5
rem git fetch --tags
rem git checkout v5.15.0
rem perl init-repository --module-subset=qtbase --branch -f

cd ..
mkdir qt-5.15.0-static
cd qt-5.15.0-static
set CL=/MP
call ..\qt5\configure.bat -static -release -opensource -platform win32-msvc2019 -confirm-license -nomake examples -nomake tests -nomake tools -opengl desktop -static-runtime
nmake
nmake install

rem Installs in C:\Qt\Qt-5.15.0
rem Add C:\Qt\Qt-5.15.0\bin to PATH
