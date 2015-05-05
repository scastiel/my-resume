#!/bin/bash

pandoc resume.md -T "Sébastien Castiel – Développeur web full-stack" -c style.css -s -o resume.html
