# Efrei-TP4-Devops

## Réalisation du TP

A partir du cours que nous avons vu au préalable du TP, j'ai pu commencer à constituer mon ensemble de fichiers.
Ensuite pour chacun des éléments à ajouter à mon ensemble de fichiers, j'ai fait des recherches sur le site de terraform, des discussions avec mes camarades 
et aussi je vous ai souvent consulté et avec le temps j'ai pu résoudre les différents problèmes auxquels je faisais face qui étaient révélés par ```terraform apply```.
Ensuite, j'ai rencontré un problème pour la commande ```ssh -i id_rsa devops@{adresse_publique} cat /etc/os-release``` qui me renvoyait "Timeout". 
Du coup je me suis rendu compte que j'avais passé toutes les clés et pas que la clé privée et j'ai résolu ce problème.
J'ai alors eu le problème du manque de sécurité autour de ma clé privée. Grace à un ```chmod 600``` j'ai pu modifier les droits d'écriture et lecture.
Enfin, après test, tout a bien fonctionné.


## ACI VS AVM

1. L'ACI permet d'éxécuter une application sur une machine hôte alors que l'AVM permet de créer une machine complète.
2. Niveau sécurité, l'AVM est bien mieux car est complètement isolé, ce qui n'est pas le cas de l'ACI vu qu'il est sur un hôte, même si on peut augmenter sa sécurité.
