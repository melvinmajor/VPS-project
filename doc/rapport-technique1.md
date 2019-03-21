---
title: WoodyToys - Rapport technique n°1
subtitle: EPHEC - Groupe 13
author: 
    - Melvin Campos Casares
    - Guillaume Vanden Herrewegen
    - Hubert Van De Walle
date: 14 mars 2019
titlepage: true
titlepage-rule-color: "aeea00"
footer-left: Melvin, Guillaume, Hubert - Groupe 13
titlepage-rule-height: 6
toc: true
toc-own-page: true
listing: false
toc-title: Rapport technique n°1
---

# Informations sur le groupe

Numéro de groupe : **13**

Noms des membres :

- Melvin Campos Casares
- Guillaume Vanden Herrewegen
- Hubert Van De Walle

## Etudiant responsable par mission

- **Partie DNS & Web :** Melvin Campos Casares
- **Partie Mail :** Guillaume Vanden Herrewegen
- **Partie VoIP :** Hubert Van De Walle

### Bilan pour la mission DNS & Web (Melvin Campos Casares)

Le bilan pour la mission DNS & Web est relativement simple.
En l'état actuel, rien n'a encore été concrètement mis en place avec Docker.
Néansmoins, les premiers tests ont permis de rendre accessible de manière publique un site internet par simple appel de l'adresse IP dans un navigateur web.

# Méthodologie

Nous avons commencé par lire la documentation des outils Docker et commencer quelques tests afin de pouvoir mieux comprendre son fonctionnement.

La modélisation du schéma réseau à été réalisée par Guillaume Vanden Herrewegen, tout comme le début du Wiki du [repository GitHub](https://github.com/melvinmajor/VPS-project/wiki).

# Etat d'avancement

Nous n'avons pas concrètement avancé concernant la mise en place de l'infrastructure et les fonctionnalités des services réellement implémentés.
Néanmoins, nous avons réfléchi sur les implémentations à réaliser et avons réaliser quelques tests afin de pouvoir mieux guider l'implémentation de l'infrastructure et des services.

Nous avons choisi d'utiliser l'application **Signal** disponible gratuitement sur tout OS confondu afin de pouvoir discuter entre membres du groupe de façon plus aisée et plus rapide.

# Schéma réseau et justification des choix

![Schéma logique du réseau](https://raw.githubusercontent.com/melvinmajor/VPS-project/master/wiki/sch%C3%A9ma%20logique.png)

## Plans d'adressages

Aucun plan d'adressage n'a encore été réalisé à ce jour.

# Difficultés

## Problèmes rencontrés

### Protection du VPS (en grande partie résolue)

La mise en place de clés SSH en cryptage élevé pour chacun des membres à été implémenté.

Le compte `root` à été désactivé suite au retrait de connexion par mot de passe même si nous l'avions déjà au préalable modifié afin de mettre en place un mot de passe à chiffrement fort.

La clé SSH du compte `vvandens` à été implémentée avec succès.

Les VPS dont Melvin et Hubert sont responsables sont accessible par tous.
Le VPS de Guillaume est accessible uniquement que par lui et le compte `vvandens` à l'heure actuelle et nous attendons qu'il ajoute nos clés SSH.

Fail2Ban à été installé et désactivé sur le VPS de Melvin en attendant de voir comment le configurer correctement.
Une fois la configuration correcte trouvée, nous mettrons cela en place sur les 3 VPS.

### Mise en place d'un DNS interne et externe (non-résolu)

L'intérêt d'un DNS interne nous semble moindre en comparaison du DNS externe.
Nous tentons encore de comprendre comment implémenter une configuration Bind dans Docker.

### Apprentissage de Docker (non-résolu)

Nous n'avons pas encore résolu notre problème de compréhension lié à l'utilisation de Docker.

### Soucis du respect du planning interne (en cours de résolution)

Nous avons accumulé du retard suite à une mauvaise gestion du temps des différents membres du groupe.

Avec les autres cours, les autres projets et les obligations personnels de chacun d'entre nous, nous n'avons pas pu mener à bien cette première partie du projet mais comptons bien avancer et mener à bien ce projet et ce, dans son intégralité.

L'utilisation et le respect plus concrèt de notre Trello est de mise dès aujourd'hui.

### Web non disponible publiquement (non-résolu)

Un site web à été mise en place, sans Docker, et fut disponible de manière publique mais suite à la suppression volontaire du dossier `http` par Hubert Van De Walle, le site n'est actuellement plus disponible.

Le code source du site internet statique est malgré tout disponible en ligne sur le repository GitHub et accessible à l'endroit suivant : [docker-web/index.html](https://github.com/melvinmajor/VPS-project/blob/master/docker-web/index.html)

# Procédure de validation du déploiement de la solution

Aucune procédure de validation du déploiement de la solution n'a été réalisée suite au manque de mise en place d'un quelconque déploiement.

# Réflexion sur le monitoring des services déployés

La réflexion sur le monitoring des services déployés n'a pas été réalisée suite au manque de services à déployer.
