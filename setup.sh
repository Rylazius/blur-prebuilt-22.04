apt update
apt install software-properties-common -y
sudo add-apt-repository ppa:ubuntuhandbook1/ffmpeg7 -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt install ffmpeg libfftw3-dev libfftw3-single3 libavutil-dev libavcodec-dev libavformat-dev libswscale-dev unzip libstdc++6 -y
sudo pip3 install --upgrade cython
export PYTHONPATH=/usr/local/lib/python3.10/site-packages:$PYTHONPATH
sudo ldconfig

# install vapoursynth
wget https://github.com/Rylazius/blur-prebuilt-22.04/raw/refs/heads/main/vapoursynth.deb
sudo dpkg -i vapoursynth.deb

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
