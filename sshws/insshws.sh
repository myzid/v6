#!/bin/bash
echo -e ""
echo -e " Installer Websocket Python By FV STORES" | lolcat
cd /usr/local/bin
wget -O ws-dropbear https://raw.githubusercontent.com/myzid/v6/main/sshws/dropbear-ws.py && chmod +x ws-dropbear
wget -O ws-stunnel https://raw.githubusercontent.com/myzid/v6/main/sshws/ws-stunnel && chmod +x ws-stunnel
wget -O ws-ovpn https://raw.githubusercontent.com/Tarap-Kuhing/tarong/main/tarong/OPENVPN/ws-ovpn && chmod +x ws-ovpn
cd

cd /etc/systemd/system
wget -O ws-dropbear.service https://raw.githubusercontent.com/myzid/v6/main/sshws/service-wsdropbear && chmod +x ws-dropbear.service
wget -O ws-stunnel.service https://raw.githubusercontent.com/myzid/v6/main/sshws/ws-stunnel.service && chmod +x ws-stunnel.service
wget -O ws-ovpn.service https://raw.githubusercontent.com/Tarap-Kuhing/tarong/main/tarong/OPENVPN/ws-ovpn.service && chmod +x ws-ovpn.service
cd

#restart service
systemctl daemon-reload

#Enable & Start & Restart ws-dropbear service
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service

#Enable & Start & Restart ws-openssh service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service

#Enable & Start ws-ovpn service
systemctl enable ws-ovpn.service
systemctl start ws-ovpn.service
systemctl restart ws-ovpn.service
