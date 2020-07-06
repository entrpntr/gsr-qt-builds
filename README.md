# gsr-qt-builds

This repository contains prebuilt Qt binaries intended to be used in building the official releases of [Gambatte-Speedrun](https://github.com/pokemon-speedrunning/gambatte-speedrun). The main goals are: (1) enable building (reasonably) lightweight GSR binaries with the most recent Qt versions, (2) provide a central access point for these Qt binaries (building Qt from source can be a bit complicated and time-consuming). The repository contains scripts that document the process of building Qt from source, so that others may reproduce the builds.

The prebuilt binaries (available [here](https://github.com/pokemon-speedrunning/gsr-qt-builds/releases)) may not be useful for general purposes, since only the subset of modules used by GSR are built, and no debug versions of libraries are included. The general process may still be instructive in showing how Qt-based projects can use a minimalist Qt by building from source.

These builds may require occasional updates as new Qt versions are released, or as more Qt features/modules are used in GSR.
