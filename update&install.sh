#! /bin/bash
function Main {
    sudo apt-get -f install -fy
   
    sudo apt-get update
    sudo apt-get upgrade -fy
    sudo apt-get dist-upgrade -y
    sudo apt install -y unattended-upgrades
    sudo unattended-upgrades
    sudo dpkg --configure -a
    sudo apt install -y fish
    sudo apt install -y zsh
    sudo apt-get install git -y
    sudo apt-get install tilix -y
    sudo apt install -y leafpad
    sudo apt install -y clementine
    sudo apt-get install htop -y
    sudo apt-get install vlc -y
    sudo apt-get install gdebi -y
    sudo apt-get install xarchiver -y
    sudo apt-get install neofetch -y
    sudo apt-get install net-tools -y
    sudo apt-get install hollywood -y
    sudo apt-get install ncal -y
    sudo apt-get install aircrack-ng -y
    sudo apt-get install python3
    sudo apt-get install metasploit-framework -y
    sudo apt-get install apache2 -y
    sudo apt-get install bluetooth
    sudo apt-get install bluez
    sudo apt-get install vim -y
    sudo apt-get install wireshark -y
    sudo apt-get install wireshark-qt -y
    echo "Starting Apache2"  && sleep 2 && \
    sudo systemctl start apache2
    echo "Enabling Apache2"  && sleep 2 && \
    sudo systemctl enable apache2
    echo "Starting Bluetooth"  && sleep 0 && \
    sudo service bluetooth start
    sudo apt -qq install -y ntpdate
    sudo ntpdate -u ntp.ubuntu.com
    sudo apt-get autoremove -fy
    sudo apt clean -y
    sudo apt-get autoclean -y
    echo Done
    neofetch
    cat /etc/os-release
}
Main
exit 0
