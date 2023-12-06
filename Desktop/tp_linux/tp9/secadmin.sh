echo "Application"

while true
do

echo
echo "1- Lister les fichiers suid"
echo "2- Lister les fichiers guid"
echo "3- Lister les repertoires sticky bit"
echo "4- Lancer un sniffer (tcpdump)"
echo "5- Gerer un firewall (iptables)"
echo "6- Check suid (bit ss integrity control for user)"
echo "7- Check guid (bit ss integrity control for group)"
echo "8- Check sticky bit (bit ss integrity control for others)"
echo "9- Quitter"

read -p "Donner votre choix: " choice

case $choice in
1)	find / -perm -4000 2> /dev/null
	;;
2)	find / -perm -2000 2> /dev/null
	;;
3)	find / -perm -1000 2> /dev/null
	;;
4)	interfaces=$(sudo tcpdump -D)

	echo
	echo "Interface"
	echo "$interfaces"

	interfaces=$(echo "$interfaces" \
			| sed 's/^.*\.//' \
			| sed 's/ .*//' \
			| paste -sd'|')

	echo
	read -p "Donner l'interface: " interface

	if [[ ! "$interface" =~ "$interfaces" ]]
	then
		echo "interface invalide"
		continue
	fi

	sudo tcpdump -i $interface
	;;
5)	
	;;
6)	
	;;
7)	
	;;
8)	
	;;
9)	exit
	;;
esac

done

