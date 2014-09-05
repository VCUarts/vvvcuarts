# Init script for VVVCUarts

echo "Commencing VVVCUarts Setup"

# Make a database, if we don't already have one
echo "Creating database (if it's not already there)"
mysql -u root --password=root -e "CREATE DATABASE IF NOT EXISTS vvvcuarts"
mysql -u root --password=root -e "GRANT ALL PRIVILEGES ON vvvcuarts.* TO wp@localhost IDENTIFIED BY 'wp';"

# Download WordPress
if [ ! -d htdocs ]
then
	echo "Checking out WordPress SVN"
	svn checkout http://svn.automattic.com/wordpress/trunk/ htdocs
	cd htdocs
	wp core config --dbname="vvvcuarts" --dbuser=wp --dbpass=wp --dbhost="localhost"
	cd wp-content/themes
  git clone https://github.com/streeetlamp/bones.git vvvcuarts
  cd vvvcuarts
  npm install
else
	echo "Updating WordPress SVN"
	svn up htdocs
fi

# The Vagrant site setup script will restart Nginx for us

echo "VVVCUarts site now installed";