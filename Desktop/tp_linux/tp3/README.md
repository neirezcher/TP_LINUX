Ce script shell fournit une interface simple pour administrer l'arrêt et
le démarrage du système, ainsi que pour afficher des informations sur
les niveaux d'exécution (runlevels) sous Linux.   
Un menu est affiché à l'utilisateur, présentant différentes options et
c’est à l’utilisateur  de saisir son choix. En fonction de son choix, le
script exécute différentes actions à l'aide d'une structure de contrôle
**`case`** :  

-    Si le choix est 1, le script utilise  **`sudo init 0`**  pour
  arrêter le système.


-   Si le choix est 2, le script utilise la commande **`who -r`** pour
  afficher le niveau d'exécution actuel du système.
  

<!-- -->

-   Si le choix est 3, le script entre dans une sous-boucle avec un
  nouveau menu pour afficher des informations spécifiques sur les
  runlevels. Dans la sous-boucle, on rencontre ses différentes options
  numérotées de 31 à 99: 
  

  -  Si le choix est 31, le script utilise la commande **`grep`** pour
    afficher le niveau d'exécution par défaut à partir du fichier
    **/etc/inittab**.


  -  Si le choix est 32, le script utilise la commande **`ls`** pour
    afficher les applications qui entraînent l'arrêt du système à partir
    du répertoire **/etc/rc0.d**.


  -  Si le choix est 33, le script utilise la commande **`ls`** et
    **`sed`** pour afficher toutes les applications liées à l'arrêt et
    au démarrage à partir du répertoire **/etc/init.d/.**


  -  Si le choix est 39, l'utilisateur revient au menu principal.


  - Si le choix est 99, le script quitte le programme.

