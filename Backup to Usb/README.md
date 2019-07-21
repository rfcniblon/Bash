<color text="blue">Installation:</color>

-- Copié le fichier "text.txt" dans le repertoire que voulez sauvegarder sur le support USB.
-- Créer un racourci du fichier "backup.bat" sur votre bureau pour le lancer sans avoir a debrancher puis rebrancher l'USB.

Note importante:

Pour une execution automatique lors du branchement de l'USB, il va falloir installer une application qui autorise la mise en root d'un fichier.bat sur un disque externe.


Utilisations:

Au premier lancement, le batch va copié le répertoire source vers répertoire destination de l'USB, puis aux autres executions, le batch ne copiera
que les nouveaux fichiers (et/ou répertoire) ou ceux modifié entre deux lancements. Si un fichier est efface sur le répertoire source, il ne sera
pas efface sur le répertoire destination (ce batch ne prend pas en charge l'effacement).
-- Automatique : Juste à brancher l'usb.
-- Manuel: Executer le fichier backup.bat ce trouvant sur le disque externe.

Informations:

-- Le nom du fichier ou du répertoire, ne doit pas être plus long que 143 caractères (espaces inclus) (sinon message: mémoire insuffisante)
-- Fichier Log.txt* sers à garder une trace

Customisation:

-- Changer le chemin du disque dur USB
-- Changer l'icone:
-- Changer le nom du disque dur USB:

*Suivant si l'option es activé.

Prochaine evolution:

- Chercher la lettre du support USB et pas l'assignée en dur dans le code, mais plustot avec un fichier comme le "text.txt"
