#!/usr/bin/sh

# EDIT sources.list and then continue

# install plasma desktop
# sudo apt install kde-plasma-desktop plasma-nm -y

# install essential applications
sudo apt install grub-customizer ffmpeg exa synaptic vifm rtorrent moc arc rar unrar kate kcalc okular vim git curl wget mpv yakuake gwenview kipi-plugins kde-spectacle ttf-ubuntu-font-family -y
# install multi-media codecs
sudo apt install ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi ark

# install app menu entry maker
sudo apt-get install alacarte -y

# install figlet and neofetch
sudo apt install figlet neofetch -y


# remove kwrite and konqueror
figlet "#removing kwrite and konqueror"
sudo apt remove kwrite konqueror -y
sudo apt autoremove -y
sudo rm -rf ~/.config/kwriterc ~/.config/konquerorrc ~/.cache/konqueror

# install libreoffice
figlet "Install libreoffice"
sudo apt install libreoffice -y
sudo apt-get install libreoffice-style-tango libreoffice-gtk3 -y

# install python3-pip
figlet "Set up python3-pip"
sudo apt install python3-pip
python3 -m pip install --upgrade pip

pip3 install youtube-dl
pip3 install --upgrade youtube-dl

# set up jupyter-notebook
pip3 install jupyter-notebook
python3 -m pip install --upgrade jupyter

pip3 install nbconvert 
sudo apt install texlive-xetex pandoc perl-tk -y

# finish
figlet "#ROOT DONE"

# change shell
# figlet "#TO ZSH"

# sudo apt install zsh -y
#sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "Remember to install srecorder and media codes later"
