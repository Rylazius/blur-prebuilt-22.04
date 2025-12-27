# install vapoursynth
wget https://github.com/Rylazius/blur-prebuilt-22.04/raw/refs/heads/main/vapoursynth.deb
dpkg -i vapoursynth.deb

# install plugins
mkdir -p /usr/lib/vapoursynth
cd /usr/lib/vapoursynth
wget -O plugins.tar https://files.catbox.moe/7t1ayo.tar # aka plugins.zip, github doesn't allow me to upload files > 25mb so I decided to tar it and catbox.moe
tar -xvf plugins.tar
rm plugins.tar
