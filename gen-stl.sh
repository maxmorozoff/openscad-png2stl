#!/bin/bash
# 

openscad -o "$1.stl" -D "FILE=\"$1\"" surface.scad
