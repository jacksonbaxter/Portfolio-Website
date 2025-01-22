# Portfolio Website

## Usage
Edit ```config.toml``` to change basic home page information.

Place relevant images into ```static/images```.

## Deploy
Run ```sh deploy-hugo.sh``` or run the folling commands.
```bash
cd ~/Portfolio-Website # cd into project directory
hugo --minify # Generate new site
sudo cp -r public /* /var/www/xyz/ # Copies generated hugo files into new nginx site and replaces old files
sudo systemctl reload nginx # Reload nginx to serve new site changes
```
