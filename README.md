# gsr-qt-builds

This is an attempt to document the process of building Qt from source to create (reasonably) lightweight builds. These builds enable using recent versions of Qt in official releases of [Gambatte-Speedrun](https://github.com/pokemon-speedrunning/gambatte-speedrun) without creating excessively large executables.

The builds for GSR may require occasional updates as new Qt versions are released, or more of its functionality gets used. These builds may not be generally useful, since only the subset of modules used in GSR are built (only qtbase at the moment), and no debug versions of libraries are included. The general process may still be instructive in showing how Qt-based projects can use a minimalistic Qt by building from source.
