Ce script shell est une interface utilisateur simple qui permet de
**gérer les modules du noyau Linux. **  
un menu est affiché à l'utilisateur, présentant différentes options.  
En fonction du choix de l'utilisateur, le script exécute différentes
actions à l'aide d'une structure de contrôle **`case`** :

- Si le choix est 1, le script liste les modules actifs en utilisant la
  commande **`lsmod`**. Il stocke ensuite les noms des modules dans un
  fichier **<u>modules.txt</u>**, extrait les descriptions de chaque
  module avec **`modinfo`**, et les stocke dans un fichier
  **<u>descriptions.txt</u>**. Enfin, il utilise la commande **`pr`**
  pour afficher les noms et descriptions des modules côte à côte.


- Si le choix est 2, le script demande à l'utilisateur de fournir le nom
  d'un module, puis utilise **`sudo modprobe -r` **pour décharger
  (désactiver) ce module.


- Si le choix est 3, le script demande à l'utilisateur de fournir le nom
  d'un module, puis utilise **`sudo modprobe`** pour charger (activer)
  ce module.


- Si le choix est 4, le script liste les modules supprimés en comparant
  les modules actifs (**`lsmod`**) avec tous les modules disponibles
  dans le répertoire **`/lib/modules/$(uname -r)`**. Les modules qui ne
  sont pas actifs sont affichés.
  
  Si le choix est 5, le script quitte en utilisant la commande
  **`exit`**.
