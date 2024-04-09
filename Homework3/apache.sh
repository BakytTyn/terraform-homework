# Automatically install Apache web server and create a simple webpage 
# that returns "Hello, World!" when visited.

#!/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo “Hello World” > /var/www/html/index.html
