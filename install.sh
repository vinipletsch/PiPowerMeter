#!/bin/bash
sudo npm install -g forever
if [ -f /etc/init.d/node-server.sh ]; then
	echo "node-server.sh already installed"
	sudo unlink node-server.sh
else
	sudo mv node-server.sh /etc/init.d/
	cd /etc/init.d
	sudo chmod 755 node-server.sh
	sudo update-rc.d node-server.sh defaults
	cd ~
	echo "installed node-server.sh"
fi
if [ -f ~/.bash_aliases ]; then
	echo ".bash_aliases already installed"
	sudo unlink .bash_aliases
else
	sudo mv .bash_aliases ~
	echo "installed .bash_aliases"
fi
echo "finshed" 