#!/bin/bash

red="\e[0;31m"
green="\e[0;32m"
off="\e[0m"

function banner() {
clear
echo "  _____ _     _____ _                           _";
echo " Cahille sohbet etmek güçtür bilene;";
echo "  çünkü cahil ne gelirse söyler diline.";
echo "  .......................................";
echo "  İnsanda Güzel Olan Yüzdür Yüzde Güzel Olan Gözdür";
echo "  Ama İnsanı İnsan Yapan, Ağzından Çıkan Sözdür";
echo "  ___             _        _ _           ";
echo "                                         ";
echo "  Coder MEKANİK_MECH                     ";
echo "  Th3inspector'UN DESTEGİ İLE  ";
echo " BU TOOL TÜM TÜRK SİBER SAVASCILARINA ARMAGANDIR   ";
echo "                                         ";
}

function termux() {
echo -e "$red [$green+$red]$Cleaning Up Old Directories ...";
  rm -r "/data/data/com.termux/files/usr/share/Th3inspector"
  echo -e "$red [$green+$red]$off Installing ...";
  git clone https://github.com/mekanik.mech "/data/data/com.termux/files/usr/share/mekanik.mech";
  rm -r "/data/data/com.termux/files/usr/share/mekanik.mech/config"

if [ -d "/data/data/com.termux/files/usr/share/mekanik.mech" ] ;
then
echo -e "$red [$green+$red]$off Tool Successfully Updated And Will Start In 5s!";
echo -e "$red [$green+$red]$off You can execute tool by typing mekanik.mech"
sleep 5;
Th3inspector
else
echo -e "$red [$green✘$red]$off Tool Cannot Be Installed On Your System! Use It As Portable !";
    exit
fi 
}

function linux() {
echo -e "$red [$green+$red]$off Cleaning Up Old Directories ...";
  sudo rm -r "/usr/share/mekanik.mech"
  echo -e "$red [$green+$red]$off Installing ...";
 sudo git clone https://github.com/mekanik.mech "/usr/share/mekanik.mech";
  sudo rm -r "/usr/share/mekanik.mech/config"

if [ -d "/usr/share/mekanik.mech" ] ;
then
echo -e "$red [$green+$red]$off Tool Successfully Updated And Will Start In 5s!";
echo -e "$red [$green+$red]$off You can execute tool by typing mekanik.mech";
sleep 5;
Th3inspector
else
echo -e "$red [$green✘$red]$off Tool Cannot Be Installed On Your System! Use It As Portable !";
    exit
fi 
}

if [ -d "/data/data/com.termux/files/usr/" ]; then
banner
echo -e "$red [$green+$red]$off mekanik.mech Will Be Installed In Your System";
termux
elif [ -d "/usr/bin/" ];then
banner
echo -e "$red [$green+$red]$off mekanik.mech Will Be Installed In Your System";
linux
fi