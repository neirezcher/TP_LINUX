Ce script shell est une interface qui permet d'interagir avec les
processus du système Linux.   
À l'intérieur de la boucle **`while`**, un menu est affiché à
l'utilisateur, proposant différentes options numérotées de 1 à 7.  
En fonction du choix de l'utilisateur, le script exécute différentes
actions :

- Si le choix est 1, le script utilise la commande **`ps -ef`** pour
  lister tous les processus en cours d'exécution **avec leurs PID et
  noms**.


- Si le choix est 2, le script utilise **`ps -ef`** pour lister les
  processus par utilisateur, triés par PID, avec les colonnes PID, Nom
  du Processus et PPID. Il filtre les résultats en fonction de l'ID
  utilisateur actuel avec **`grep`** et trie les résultats numériquement
  avec **`sort`**.


- Si le choix est 3, le script utilise **`ps -e`** pour afficher le PID
  et le nom du processus de login de chaque utilisateur connecté en
  utilisant la commande **`grep`**.


- Si le choix est 4, le script demande à l'utilisateur de fournir un nom
  d'utilisateur, puis utilise **`pkill -p -i`** pour déconnecter (tuer)
  tous les processus associés à cet utilisateur.


- Si le choix est 5, le script affiche les processus fils du processus
  en cours d'exécution (le script lui-même). Il utilise **`ps -p`** pour
  obtenir les informations sur le processus actuel et itère ensuite sur
  les processus parents jusqu'à atteindre le processus racine.


- Si le choix est 6, le script affiche les processus parents du
  processus en cours d'exécution (le script lui-même). Il utilise une
  approche similaire à celle de l'option 5.


- Si le choix est 7, le script quitte en utilisant la commande exit.
