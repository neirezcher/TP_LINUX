Ce script shell fournit une interface utilisateur pour effectuer
différentes opérations d'administration réseau sous un système Linux.  
L'utilisateur se voit présenter un menu contenant diverses options
numérotées de 1 à 99. En fonction du choix effectué, le script procède à
l'exécution d'actions variées.

- Si le choix est 1, le script utilise la commande **`ifconfig -a`**
  pour afficher toutes les interfaces réseau disponibles.


- Si le choix est 2, le script utilise **`ifconfig -a`** pour afficher
  les interfaces réseau avec leurs adresses MAC.


- Si le choix est 3, le script utilise **`ifconfig -a`** pour afficher
  les interfaces réseau avec leurs adresses IP.


- Si le choix est 4, le script guide l'utilisateur à travers le
  processus de changement de l'adresse IP d'une interface en utilisant
  la commande **`sudo ifconfig`**.


- Si le choix est 5, le script affiche les ports et les services à
  partir du fichier **/etc/services**.


- Si le choix est 6, le script guide l'utilisateur à travers le
  processus de désactivation d'un port en commentant l'entrée
  correspondante dans le fichier **/etc/services** à l'aide de la
  commande **`sudo sed`**.


- Si le choix est 7, le script guide l'utilisateur à travers le
  processus d'activation d'un port *<u>en d</u><u>é</u><u>commentant
  l'entr</u><u>é</u><u>e correspondante dans le fichier
  </u>****<u>/etc/services</u>*** à l'aide de la commande
  **`sudo sed`**.


- Si le choix est 8, le script guide l'utilisateur à travers le
  processus de dépannage en utilisant la commande **`ping`** pour
  *tester la connectivité* avec une adresse IP spécifiée.


- Si le choix est 9, le script guide l'utilisateur à travers le
  processus de *recherche de l'adresse IP associée à une URL spécifiée*
  en utilisant la commande **`nslookup`**.


- Si le choix est 10, l’objectif est de transférer un fichier en
  utilisant le **protocole FTP**. Le script guide l'utilisateur à
  travers le processus *en demandant l'URL du serveur FTP, le port, le
  nom d'utilisateur, le mot de passe, le nom du fichier local et le nom
  du fichier distant.*


- Si le choix est 11, le script guide l'utilisateur à travers le
  processus de connexion à une machine distante en utilisant **le
  protocole Telnet**. Il demande à l'utilisateur de spécifier l'URL et
  le port.


- Si le choix est 99, le script quitte en utilisant la commande exit.

