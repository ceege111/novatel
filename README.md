Novatel-Corporate
=================

Redesign for Novatel Corporate Website www.novatelwireless.com

Envinronment: Ubuntu Server 12.04 LTS
Software: LAMP, Concrete5, Node, Jake, etc

Deployment Guide
================
Rational Interaction

Amazon NAFC Fulfillment Site
Staging Deployment Instructions

These instructions assume that the environments will all be deployed to one server in AWS.

Obtain Source Code
•	An FTP server with a zipped up archive of the source code can be provided.
•	The source will be available from the following ftp server:
o	ftp://source.rtio.nl/
o	Login: amazon_nafc
o	Password: wReyaB4N
o	Filename: amazon_nafc.zip

AWS Account Setup
•	Create or gain access to an AWS account at http://aws.amazon.com

EC2 setup
•	In the AWS Management Console, open up the section for EC2.
•	In the Key Pairs section of the EC2 Management Console (shown on the left side menu), create a new Key Pair and save the .pem file. Make note of the key pair Name. An existing key can also be used, as long as you have a copy of the .pem file in a secure location.
•	In the Security Groups section, create of modify a security group to allow the following inbound port connections: 22, 80, and 443.
•	In the Elastic IPs section, create an Elastic IP. This will be the IP address for the server.
•	In the Instances section, click the Launch Instance button.
•	Using the Quick Launch Wizard (which will be selected by default), fill out the following configuration information
•	Name your instance (such as NAFC Fulfillment Staging Server).
•	Choose a key pair, select the name of the key you created/selected in the Key Pairs step above.
•	Choose a Launch Configuration:
a.	Select Ubuntu Server 12.04 LTS, 64-Bit
•	Click Continue.
•	On the next window, you will see the default quick launch settings. There are some things we want to change on here, so click Edit Details.
•	Under Instance Details change the following settings:
a.	Type: Set to medium or large, depending on the expected amount of traffic. (A production server will most likely be set to large in order to handle a large amount of traffic.) This can be changed later as well.
b.	Detailed Monitoring: Check this box for a production server, or for troubleshooting a staging or testing server.
c.	Termination Protection: Check this box for a staging or production server.
•	Under Modify Tags, set any additional tags as needed to document the contents and/or keep track of this server. Tags are optional.
•	Under Security Settings, select the Security Group that was created/modified in the Security Groups section as part of a previous step.
•	Click Save Details.
•	Click Launch.
•	Amazon Web Services will now spin up the server. Wait a few minutes and click Refresh, and you should see the new server is running.
•	Once the server is running, open up the Elastic IPs section again.
•	Check the box next to the IP address we created in a previous step, and click on Associate Address. Select the server that we just created.
•	We are now ready to connect to the server and continue the configuration process.

Environment setup

•	SSH into the developer host. You will need the .pem key file you associated with the server during the EC2 setup process.
•	Enter the following console commands as specified:
o	sudo tasksel
	Tasksel will bring up a GUI menu for installing additional server components. Select LAMP Server. Do not uncheck any already installed components.
	Follow the steps provided to install LAMP. Make a note of the password you set for the MySQL root account, you will need this login information later.
o	Install Additional Server Components:
	sudo apt-get install make php5-gd php5-curl php5-mcrypt python g++ curl libssl-dev apache2-utils git
o	Install Node.js and NPM
	sudo apt-get install python-software-properties
	sudo add-apt-repository ppa:chris-lea/node.js
	sudo apt-get update
	sudo apt-get install nodejs npm
o	Download source and move to public_html:
	Using SFTP, copy the source files to a folder named public_html. This folder should be placed in the home user folder, like so: /home/ubuntu/public_html
o	Install Jake (node.js component):
	cd ~
	cd ~/public_html
	sudo npm install –g jake
o	Install other node dependencies 
	npm install
o	Configure Apache Virtual Host:
	sudo ln –s /home/ubuntu/public_html /var/www_current
	Enable ModRewrite:
•	sudo a2enmod rewrite
	Edit Virtual Hosts File to point to home/Ubuntu/pubic_html:
•	Cd /etc/apache2/sites-enabled/
•	Sudo vim 000-default 
o	(or use a different text editor as desired)
•	Edit the 000-default file to match the following, (the rest of the file can be left as is):
        DocumentRoot /var/www_current
        <Directory />
                Options FollowSymLinks
                AllowOverride None
        </Directory>
        <Directory /var/www_current/>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                Order allow,deny
                Allow from all
        </Directory>
•	Restart Apache
o	sudo /etc/init.d/apache2 restart
Database Setup
•	To set up the database, a user with the name amazon and a database named amazon_fulfillment needs to be added to MySQL First we log into MySQL:
o	mysql –u root –p 
	(you will need to enter the password you set during the LAMP configuration process)
o	create database amazon_fulfillment;
o	grant all on amazon_fullfillment.* to ‘amazon’@’localhost’ identified by ‘Xm89TdNsDX’;
	note: The password as set by this command can be changed, however it will also need to be changed in the jake deploy config file public_html/jakelib/db.jake
o	quit
•	Next, import the database checked out from source:
o	cd ~/public_html
o	jake db:import
Deploy Database
•	To redeploy the database from source, enter the following:
•	cd ~/public_html
•	jake db:import

Launching the Server
•	The final step to launch the site is to run the jake deploy command. This updates the database from source, sets the proper permissions for certain folders, and packages and minifies our javascript files and compiles LESS into optimized CSS for faster loading. Enter the following commands:
•	cd ~/public_html
•	jake deploy