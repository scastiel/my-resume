#!/bin/bash

destdir=$1

if [ -z "$destdir" ]; then
	echo "Usage: $0 <destination_directory>"
	exit 1
fi

if [ ! -d "$destdir" ]; then
	echo "$destdir is not a directory."
	exit 1
fi

cp style.css "$destdir"
mkdir -p "$destdir/fr"
pandoc resume-fr.md -T "Sébastien Castiel – Développeur web full-stack" -c "../style.css" -s -o "$destdir/fr/index.html"
mkdir -p "$destdir/en"
pandoc resume-en.md -T "Sebastien Castiel – Full-stack web developer" -c "../style.css" -s -o "$destdir/en/index.html"
