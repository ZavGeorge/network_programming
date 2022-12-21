# oct/26/2022 18:30:01 by RouterOS 7.6
# software id = 6V4H-BISK
#
/interface bridge
add name=Loopback
/interface ethernet
set [ find default-name=ether1 ] disable-running-check=no
/interface ovpn-client
add certificate=cert_r2_1 cipher=aes256 connect-to=178.154.202.26 \
    mac-address=02:6B:13:9C:EC:70 name=ovpn-out1 port=443 user=R2
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/routing ospf instance
add disabled=no name=ospf-instance-1 originate-default=always router-id=\
    172.100.1.1
/routing ospf area
add disabled=no instance=ospf-instance-1 name=Backbone
/ip address
add address=172.100.1.1 interface=Loopback network=172.100.1.1
/ip dhcp-client
add interface=ether1
add dhcp-options=hostname disabled=yes interface=ether1
/routing ospf interface-template
add area=Backbone disabled=no interfaces=Loopback networks=172.100.1.1/30 \
    passive type=ptp
add area=Backbone disabled=no interfaces=ether1 networks=192.168.0.0/24
/system ntp client
set enabled=yes
/system ntp client servers
add address=0.ru.pool.ntp.org
