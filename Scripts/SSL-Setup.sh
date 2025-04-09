#!/bin/bash
# SSL Certificate Installation Script
# Configures HTTPS for carozi.site

# Install Certbot for Let's Encrypt
echo "Installing Certbot..."
sudo apt install -y certbot python3-certbot-nginx

# Obtain and install SSL certificate
echo "Requesting SSL certificate..."
sudo certbot --nginx -d carozi.site -d www.carozi.site

# Set up automatic renewal
echo "Configuring auto-renewal..."
sudo systemctl enable certbot.timer
sudo systemctl start certbot.timer

echo "SSL configuration completed!"