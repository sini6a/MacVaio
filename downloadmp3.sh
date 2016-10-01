#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'
printf '\e[8;50;100t'
mkdir ~/Desktop/MP3s/
clear
echo -e "	Downloading from Youtube to MP3. This script will download and convert to MP3 320K"
echo -e "	${RED}FFMPEG ${NC}and ${RED}youtube-dl${NC} are required. Press ${BLUE}CTRL+C${NC} anytime to stop" 
echo -e "	MP3's are saved at ${GREEN}~/Desktop/MP3s/${NC}"
while true; do
echo
echo -e "Enter your url:" 
read URL
#printf '\e[2t'
clear
echo -e "	Downloading from Youtube to MP3. This script will download and convert to MP3 320K"
echo -e "	${RED}FFMPEG ${NC}and ${RED}youtube-dl${NC} are required. Press ${BLUE}CTRL+C${NC} anytime to stop" 
echo -e "	MP3's are saved at ${GREEN}~/Desktop/MP3s/${NC}"
echo
youtube-dl -e $URL
echo "Downloading..."
youtube-dl --quiet -x --audio-format mp3 --audio-quality 320K -o '~/Desktop/MP3s/%(title)s.%(ext)s' $URL
printf '\e[1t'
done