#!/bin/bash
blih -u kevin.hu@epitech.eu repository create $1
blih -u kevin.hu@epitech.eu repository setacl $1 ramassage-tek r
blih -u kevin.hu@epitech.eu repository getacl $1
git clone git@git.epitech.eu:/kevin.hu@epitech.eu/$1
