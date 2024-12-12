#!/bin/bash

# Get the hostname
HOSTNAME=$(hostnamectl --static)

# Generate the HTML
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AWS-Website</title>
    <style>
        body {
            background-image: url('images/'); /* Ensure the correct path and extension */
            background-size: cover; /* Adjusts the image to cover the entire background */
            background-repeat: no-repeat;
            background-position: center;
            font-family: Arial, sans-serif;
            text-align: center;
            color: #000; /* Sets default text color */
			background-color: lightblue;
            margin: 0;
            padding: 0;
        }
        h1, h2, h3, h4 {
            margin: 20px;
        }
        p {
            margin: 10px;
        }
    </style>
</head>
<body>
    <h1>Ajith DevOps Test World!</h1>
    <h2>Hello DevOps World!!</h2>
    <h3>AWS Hosting!!!</h3> 
    <h4>System Information</h4>
    <p><strong>Hostname:</strong> $HOSTNAME</p>
   <!-- <p><strong>IP Address:</strong> {{ ip }}</p>-->
</body>
</html>
EOF