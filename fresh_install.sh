#!/bin/sh

cd ~/Downloads

#-- Instalação do R (v. 3.6)
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install r-base r-base-dev

#-- Bibliotecas do Sistema
sudo apt-get install libssl-dev openssl libcurl4 libcurl4-openssl-dev ssh htop default-jdk gdebi libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 xml2 libxml2-dev libtiff-dev libfftw3-dev

###################################### 
# Softwares
###################################### 
# RStudio v. 1.2
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
sudo gdebi rstudio-1.2.1335-amd64.deb

# RStudio server v. 1.2
sudo apt-get install gdebi-core
wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.2.1335-amd64.deb
sudo gdebi rstudio-server-1.2.1335-amd64.deb

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Anaconda
wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
bash Anaconda3-2019.03-Linux-x86_64.sh

# Diversos (Spotify, Gimp, Inkscape)
sudo snap install spotify gimp inkscape

# Mendeley v. 1.19.5
wget https://desktop-download.mendeley.com/download/apt/pool/main/m/mendeleydesktop/mendeleydesktop_1.19.5-stable_amd64.deb
sudo gdebi mendeleydesktop_1.19.5-stable_amd64.deb

# Nextcloud
sudo add-apt-repository ppa:nextcloud-devs/client
sudo apt-get install nextcloud-client

###################################### 
# Pacotes do R
###################################### 
Rscript -e 'install.packages("BiocManager", lib = "~/R/x86_64-pc-linux-gnu-library/3.6", repos="https://cran.rstudio.com")
BiocManager::install(c("tidyverse", "tinytex", "caret", "RTN", "DESeq2", "TCGAbiolinks", "EBImage", "keras", "RedeR"),  lib = "~/R/x86_64-pc-linux-gnu-library/3.6")'

