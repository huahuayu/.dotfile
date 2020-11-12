sudo apt-get remove --purge libreoffice* -y
sudo apt-get remove --purge thunderbird* -y
sudo apt-get remove --purge rhythmbox -y
sudo apt-get remove --purge gnome-games-common gbrainy -y
sudo apt-get autoremove gnome-games -y
sudo apt-get purge gnome-games-common gbrainy -y
sudo apt-get purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy -y
sudo apt-get remove gnome-mines -y
sudo apt-get autoremove --purge remmina -y
sudo apt-get purge --auto-remove shotwell -y
sudo apt-get autoremove --purge cheese -y
sudo apt-get clean -y
sudo apt-get autoremove -y
sudo apt install git zsh wget curl net-tools vim -y
