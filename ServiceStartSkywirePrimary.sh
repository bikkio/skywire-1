#!/bin/bash

#######################################################################################################################################################################
#######################################################################################################################################################################
##### SKYWIRE SERVICE AUTO START FOR MASTER/PRIMARY BOARD
##### AS A PART OF SKYMINER (SKYCOIN) ORANGE PI AUTO INSTALL SCRIPT
##### This script starts all Skywire services again after a shutdown or reboot automatically.
#######################################################################################################################################################################
##### Version:		1.0  - Get the newest version at https://github.com/TheSKYpeople/SkyInstallScript
#######################################################################################################################################################################
##### Team:			    The SKYpeople (Email: TheSKYpeople@protonmail.com - Telegram: @TheSKYpeople) 
##### Licence:		  GNU General Public License v3.0
##### Donations:	  Skycoin      zrwaGKR8oG7juYLHqgj7zwxH4bGYPEwWTB
#####				        Ethereum     0x25a4cc8003a626e0b1d0be4626dc33e82a0096a0
#####				        Bitcoin 	   1EH9Sw1JgnndJGVnUsQkhhiA6XBynqUFuQ
#######################################################################################################################################################################
#######################################################################################################################################################################

##### This starts the Skywire Node
cd $GOPATH/bin
./manager -web-dir ${GOPATH}/src/github.com/skycoin/skywire/static/skywire-manager > /dev/null 2>&1 &

##### This starts the Skywire Monitor (Primary Node!!!)
##### Attention!!! This script is only to be used on Master/ Primary Node (OrangePI 1)!!!
./node -connect-manager -manager-address 192.168.0.100:5998 -manager-web 192.168.0.100:8000 -discovery-address discovery.skycoin.net:5999-034b1cd4ebad163e457fb805b3ba43779958bba49f2c5e1e8b062482904bacdb68 -address :5000 -web-port :6001 &> /dev/null 2>&1 &