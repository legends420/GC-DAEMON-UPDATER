#!/bin/bash
# FOR PRODUCTION WORK ONLY 
# GANJACOIN DAEMON AUTO UPDATE
# This will clear all old folders and download new updated Daemon
#Color Declarations
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;36m'
NC='\033[0m'

#deleting previous install folders in case of failed install attempts. Also ensures latest binaries are used
echo -e "${BLUE}Shutting down old daemon...${NC}"
cd ganja > /dev/null 2>&1
./ganjacoin-cli stop > /dev/null 2>&1
echo -e "${GREEN}Done${NC}"
echo -e "${BLUE}Deleting Old Daemons...${NC}"
rm -rf ganjacoind > /dev/null 2>&1
rm -rf ganjacoin-cli > /dev/null 2>&1
echo -e "${GREEN}Done${NC}"

echo
echo -e "${BLUE}Downloading new daemons...${NC}"
wget https://github.com/legends420/GanjaCoin-zREBORN/releases/download/v1.1.1.2/ganjacoind > /dev/null 2>&1
wget https://github.com/legends420/GanjaCoin-zREBORN/releases/download/v1.1.1.2/ganjacoin-cli > /dev/null 2>&1
chmod +x ganjacoin-cli
chmod +x ganjacoind > /dev/null 2>&1
echo -e "${GREEN}Done${NC}"
echo
echo -e "${BLUE}Starting Daemons${NC}"
cd ganja > /dev/null 2>&1
./ganjacoind
echo -e "${GREEN}Done... Confirm with cd ganja then ./ganjacoin-cli getinfo${NC}"


