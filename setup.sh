apt update
apt install unzip -y
sudo pip3 install --upgrade cython
export PYTHONPATH=/usr/local/lib/python3.10/site-packages:$PYTHONPATH

# install vapoursynth
wget https://github.com/Rylazius/blur-prebuilt-22.04/raw/refs/heads/main/vapoursynth.deb
dpkg -i vapoursynth.deb

# install plugins
mkdir -p /usr/lib/vapoursynth
cd /usr/lib/vapoursynth
wget -O plugins.tar https://files.catbox.moe/7t1ayo.tar # aka plugins.zip, github doesn't allow me to upload files > 25mb so I decided to tar it and catbox.moe
tar -xvf plugins.tar
rm plugins.tar

# download & extract blur
mkdir blur
cd blur
wget https://github.com/Rylazius/blur-prebuilt-22.04/raw/refs/heads/main/Blur-Linux-Release-x64.zip
unzip Blur-Linux-Release-x64.zip
tar -xvzf blur-Linux-Release-x64.tar.gz
rm Blur-Linux-Release-x64.zip
rm blur-Linux-Release-x64.tar.gz
echo "Done."
