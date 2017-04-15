# This file is part of make-install
# make-install is an open source project developed by Abhishek Verma
# Github : https://github.com/hell-sing/make-install

# Download File from Github (hell-sing)
wget https://raw.githubusercontent.com/hell-sing/make-install/master/make-install.tar.gz

# Create new Directory
mkdir make-install

# Unzip tar and move to new Directory
tar -xzf make-install.tar.gz -C make-install

# Change Directory
cd make-install/

# Execute INSTALL
./INSTALL.sh
