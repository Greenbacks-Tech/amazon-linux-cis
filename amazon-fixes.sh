systemctl disable nfs
systemctl disable nfs-server
systemctl disable rpcbind
ip6tables -P INPUT DROP 
ip6tables -P OUTPUT DROP 

ip6tables -A INPUT -i lo -j ACCEPT
ip6tables -A OUTPUT -o lo -j ACCEPT
ip6tables -A INPUT -s ::1 -j DROP

ip6tables -P FORWARD DROP
