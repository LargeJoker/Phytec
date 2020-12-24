#!/bin/bash
INSTALL_CMD="pacman -Sy"
installYocto(){
	sudo $INSTALL_CMD git diffstat unzip texinfo python chrpath wget xterm sdl rpcsvc-proto socat cpio inetutils

	#/usr/bin/expect <<-EOF
	#spawn sudo pacman -Sy git diffstat unzip texinfo python chrpath wget xterm sdl rpcsvc-proto socat cpio inetutils
	#expect "password"
	#send "123\r"
	#expect eof
	#expect "Y/n"
	#send "Y\r"
	#EOF
}
run_phy(){
	git config --global user.email "lz1987714@163.com"
	git config --global user.name "LargeJoker"
	mkdir -p /opt/PHYTEC_BSPs/am335x/
	chmod -R 777 /opt/PHYTEC_BSPs/
	cd /opt/PHYTEC_BSPs/am335x/
	wget ftp://ftp.phytec.de/pub/Software/Linux/Yocto/Tools/phyLinux
	chmod +x ./phyLinux
	./phyLinux init
}

installYocto
run_phy
