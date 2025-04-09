#!/bin/bash
# Carozi Website Deployment Script
# Automates server setup and deployment

# Update package lists and upgrade existing packages
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install Nginx web server
echo "Installing Nginx..."
sudo apt install -y nginx

# Configure firewall
echo "Configuring firewall..."
sudo ufw allow 'Nginx Full'
sudo ufw allow 'OpenSSH'
sudo ufw --force enable

# Set proper permissions for web directory
echo "Setting file permissions..."
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Restart Nginx to apply changes
echo "Restarting Nginx..."
sudo systemctl restart nginx

echo "Deployment completed successfully!"