echo "Administration des reseaux"

while true
do

echo
echo "1- Afficher les interfaces avec adresse mac"
echo "2- Afficher les interfaces avec adresses ip"
echo "3- Afficher les ports et les services"
echo "4- "
echo "5- "
echo "6- "
echo "7- "
echo "8- "
echo "999- Quitter"

echo
read -p "Donner votre choix: " choice

case $choice in
1)	interfaces=$(ifconfig -a \
		| grep "^[[:alpha:]]" \
		| awk '{print $1}')

	for interface in $interfaces
	do

	addr=$(ifconfig $interface \
		| grep "HWaddr" \
		| sed 's/^.*HWaddr //')

	if [[ ! -z "$addr" ]]
	then
		addr="HWaddr $addr"
	fi

	echo -e "$interface\t$addr"

	done
	;;
2)	interfaces=$(ifconfig -a \
		| grep "^[[:alpha:]]" \
		| awk '{print $1}')

	for interface in $interfaces
	do

	addr=$(ifconfig $interface \
		| grep "net addr:" \
		| sed 's/^[ \t]*inet //' \
		| sed 's/ .*//')

	if [[ ! -z "$addr" ]]
	then
		addr="inet $addr"
	fi

	echo -e "$interface\t$addr"

	done
	;;
3)	cat /etc/services
	;;
4)	echo "Choix non implemente"
	;;
5)	echo "Choix non implemente"
	;;
6)	echo "Choix non implemente"
	;;
7)	echo "Choix non implemente"
	;;
8)	echo "Choix non implemente"
	;;
999)	exit
	;;
esac

done

