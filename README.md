binder-for-linux
================

binder-for-linux is an experimental project to evaluate the feasibility of porting Android Binder IPC subsystem to Ubuntu Linux.

#code
- Codebase: android 9.0.1
- The whole project is used for buildroot, the codes in dir src is used for linux.
- All files Confige.in is used for buildroot, delete these if project if used for linux.
- When you just use the codes in dir src, add a few of variables in Makefile
    - CC: the gcc tools
    - CXX: the g++ tools
    - CFLAGS: flags for gcc or g++
    - TOPDIR: the root path of you project

#compile
- if project is used for buildroot
    - make libbinder or make libbinder-rebuild
- if project is just used for linux
    - make or make all


