# Messing around in the live system
# """
# - Go to the terminal
# - vi /etc/apt/sources.list
#     - Add the following line:
#     deb http://deb.debian.org/debian bookworm main
# - vi /etc/resolv.conf
#     - Add the following line:
#     nameserver 8.8.8.8
# - ip link set ens18 down
# - ip link set ens18 up
# - apt update
# - apt install -y nano
# - apt install -y ssh
# - nano /etc/ssh/sshd_config
#     - Change the following line:
#     PermitRootLogin yes
# - systemctl restart sshd
# - passwd root
# Truenas installer: '/usr/lib/python3/dist-packages/truenas_installer/
# """