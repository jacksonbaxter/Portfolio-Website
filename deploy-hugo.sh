#!/bin/bash

cd ~/Portfolio-Website
rm -rf public/
hugo --minify
sudo cp -r public/* /var/www/xyz/
sudo systemctl reload nginx
