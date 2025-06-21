#!/bin/bash
echo "Deploying application..."

# Example commands (adjust to your app structure)
cd /var/www/html/app || exit
git pull origin main
sudo systemctl restart nginx

echo "Deployment completed."
