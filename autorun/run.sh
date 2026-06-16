#!/bin/bash
echo "compiling and running TLS"
gcc $( pkg-config --cflags gtk4 ) -o LST GUI.c $( pkg-config --libs gtk4 
./LST
echo "sesion finished"
