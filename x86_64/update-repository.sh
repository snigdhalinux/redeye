#!/bin/bash

# Author : Eshan Roy
# Author URI : https://github.com/eshanized

rm redeye*

echo "Repo Adding..."
repo-add -s -n -R redeye.db.tar.gz *.pkg.tar.zst

sleep 1

rm redeye.db
rm redeye.db.sig

rm redeye.files
rm redeye.files.sig

mv redeye.db.tar.gz redeye.db
mv redeye.db.tar.gz.sig redeye.db.sig

mv redeye.files.tar.gz redeye.files
mv redeye.files.tar.gz.sig redeye.files.sig


echo "Repo Updated..."