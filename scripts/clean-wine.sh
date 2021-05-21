!#/usr/bin
# wine removal

cd $HOME
rm -rf .wine
rm -rf .config/menus/applications-merged/wine*
rm -rf .local/share/applications/wine
rm -rf .local/share/desktop-directories/wine*
rm -rf .local/share/icons/????_*.xpm

sudo apt-get remove --purge wine

sudo apt-get update
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove

