#!/bin/bash

cd ~/Portfolio-Website
hugo --minify
sudo cp -r public/* /var/www/xyz/
sudo systemctl reload nginx
