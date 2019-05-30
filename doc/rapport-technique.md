---
title: WoodyToys - Rapport technique
subtitle: EPHEC - Groupe 13
author: 
    - Melvin Campos Casares
    - Guillaume Vanden Herrewegen
    - Hubert Van De Walle
date: 6 juin 2019
titlepage: true
titlepage-rule-color: "aeea00"
footer-left: Melvin, Guillaume, Hubert - Groupe 13
titlepage-rule-height: 6
toc: true
toc-own-page: true
toc-title: Rapport technique
---

# 1. Informations sur le groupe

Numéro de groupe : **13**

Noms des membres :

- Melvin Campos Casares
- Guillaume Vanden Herrewegen
- Hubert Van De Walle

## 1.1. Etudiant responsable par mission

- **Partie DNS & Web :** Melvin Campos Casares
- **Partie Mail :** Guillaume Vanden Herrewegen
- **Partie VoIP :** Hubert Van De Walle

### 1.1.1. Bilan pour la mission DNS & Web (Melvin Campos Casares)

Le bilan pour la mission DNS & Web est relativement simple.
En l'état actuel, rien n'a encore été concrètement mis en place avec Docker.
Néansmoins, les premiers tests ont permis de rendre accessible de manière publique un site internet par simple appel de l'adresse IP dans un navigateur web.

Guillaume à pris en charge la construction de la partie DNS tandis que Hubert et moi-même prenions en mains la partie web.

Chacun à suivi une méthodologie identique et mis en commun concernant la sécurisation de nos VPS :

- connexion par clés SSH,
- mise à jour des VPS,
- mise en place de `fail2ban` ainsi que sa configuration,
- ajout de certaines fonctionnalités.
  Exemple : `fish`, un shell dont Hubert et Melvin sont fort habitué (système de prédictions, alias supportant des fonctions, etc.) et `tldr`, un man simplifié.

### 1.1.2. Bilan pour la mission Mail (Guillaume Vanden Herrewegen)

Nous avons continué à mettre en place le DNS et la partie web sans pour autant arriver à un résultat final.
De plus, une première réflexion à été faite concernant la partie mail mais qui n'a pas encore abouti étant donné la priorité sur les DNS et web.

# 2. Méthodologie

Nous avons commencé par lire la documentation des outils Docker et commencer quelques tests afin de pouvoir mieux comprendre son fonctionnement.

La modélisation du schéma réseau à été réalisée par Guillaume Vanden Herrewegen, tout comme le début du Wiki du [repository GitHub](https://github.com/melvinmajor/VPS-project/wiki).

Nous avons choisi d'utiliser l'application **Signal** disponible gratuitement sur tout OS confondu afin de pouvoir discuter entre membres du groupe de façon plus aisée et plus rapide tout en ayant une sécurité accrue en comparaison d'autres systèmes de discussion en ligne.

Concernant la répartition des tâches, une communication entre les différents membres du groupe ainsi que l'utilisation d'un Trello privé et accessible par les différents membres à été mis en place.
Des échéances ont été mis en place et nous tentons des les respecter.
De plus, lorsque nous rencontrons un problème, nous les transmettons aux autres membres afin qu'une réflexion générale puisse être faite et possiblement trouver une solution de manière plus rapide.

# 3. Etat d'avancement

La modélisation du schéma réseau à été réalisée par Guillaume Vanden Herrewegen, tout comme le début du Wiki du [repository GitHub](https://github.com/melvinmajor/VPS-project/wiki).

Hubert et Melvin sont en charge de la partie web qui est en cours de finalisation.
Guillaume est en charge de la partie DNS qui, techniquement parlant, devrait être fonctionnel mais qui ne l'est pas en pratique.
Melvin supervisait les modifications à faire sur les différents rapports.

# 4. Schéma réseau et justification des choix

Schéma logique du réseau :

![Schéma logique du réseau](https://github.com/melvinmajor/VPS-project/raw/master/wiki/sch%C3%A9ma%20logique.png)

Schéma physique du réseau :

![Schéma physique du réseau](https://github.com/melvinmajor/VPS-project/raw/master/wiki/sch%C3%A9ma%20physique.png)

## 4.1. Plans d'adressages

### 4.1.1. Plan d'adressage de Postfix (Mail)

Voici le plan d'adressage pour la partie mail :

### 4.1.2. Plan d'adressage et de numérotation d'Asterisk (VoIP)

Voici le plan d'adressage pour la partie Voice-Over IP :

- L'adresse IP externe est celle du VPS sur lequel le Docker est lancé,
- L'adresse IP interne est `0.0.0.0` (afin de pointer sa propre adresse interne) et son masque de sous-réseau est `255.255.0.0`.

Voici le plan de numérotation :

- **1230 :** VoiceMail WoodyToys
- **301 :** Direction
- **302 :** Secrétariat
- **Ouvriers :**
  - **311 :** Atelier
  - **312 :** Hangar
- **Service comptabilité :**
  - **321 :** Michel Roux
  - **322 :** Christin Garcia
- **Commerciaux :**
  - **331 :** Service Commercial
  - **332 :** Hubert Van De Walle
  - **333 :** Guillaume Vanden Herrewegen
  - **334 :** Melvin Campos Casares
  - **335 :** John Doe
  - **336 :** Albert Dupont

Il est bien entendu possible de créer de nouveaux utilisateurs dans le service comptabilité ainsi que pour les commerciaux.
Dans la configuration du DialPlan, il a été pensé de créer des numéros de 300 à 399 inclus.

# 5. Difficultés

## 5.1. Problèmes rencontrés

### 5.1.1. Protection du VPS (résolu)

La mise en place de clés SSH en cryptage élevé pour chacun des membres à été implémenté.

Le compte `root` à été désactivé suite au retrait de connexion par mot de passe même si nous l'avions déjà au préalable modifié afin de mettre en place un mot de passe à chiffrement fort.

La clé SSH du compte `vvandens` à été implémentée avec succès.

Les VPS dont Melvin et Hubert sont responsables sont accessible par tous.
Le VPS de Guillaume est accessible uniquement que par lui et le compte `vvandens` à l'heure actuelle et nous attendons qu'il ajoute nos clés SSH.

Fail2Ban à été installé et configuré sur les 3 VPS.
Le détail de sa configuration est expliqué dans le rapport de sécurité.

### 5.1.2. Apprentissage de Docker (résolu)

Nous avions rencontré des soucis de compréhension lié à l'utilisation de Docker.

Suites à de nombreux essais et de la lecture de la documentation Docker, nous avons compris les fondements de Docker et des Dockerfile.

### 5.1.3. Mise en place d'un DNS interne et externe (achevé)

Nous avons rencontré d'innombrables problèmes lors de la création et la mise en place de la partie DNS du projet.
Après de multiples tests, du débogage et la vérification des logs, nous sommes arrivés à obtenir un DNS fonctionnel.

Concrètement, seule la partie intranet de la partie web du projet ne sait être sécurisée comme il se doit, le rendant inaccessible.

### 5.1.4. Soucis du respect du planning interne (résolu)

Nous avons accumulé du retard suite à une mauvaise gestion du temps des différents membres du groupe.

Avec les autres cours, les autres projets et les obligations personnels de chacun d'entre nous, nous n'avons pu mener à bien cette première partie du projet mais comptons bien avancer et mener à bien ce projet et ce, dans son intégralité.

L'utilisation et le respect plus concrèt de notre Trello est de mise depuis la première échéance courant mars et rattrapons doucement mais sûrement notre retard.

A l'heure actuelle, nous pouvons confirmer que nous avons rattrapé notre retard par rapport aux autres groupes et avons mené à bien ce projet.

### 5.1.5. Web non disponible publiquement (résolu)

Hubert à commencé la programmation de la partie web sous `lighttpd` mais suite à de nombreux problèmes rencontrés (entre autres, lié au DNS géré par Guillaume), toute l'avancée à été retirée.

Le code source des 3 sites internet (le site vitrine ainsi que l'intranet et le b2b) ainsi que le Dockerfile sont disponible en ligne sur le repository GitHub et accessible à l'endroit suivant : [docker-web/](https://github.com/melvinmajor/VPS-project/blob/master/docker-web/)

Melvin a repris en mains le Dockerfile de la partie web afin de le créer sous `nginx` et le finaliser.
Il a été possible d'afficher le site web vitrine comme site principal et le b2b ainsi que l'intranet, tous 3 en subdomain.
La partie dynamique de l'intranet et b2b n'étaient pas fonctionnel.

Hubert a finalement repris en main la partie web, est reparti sous `lighttpd` au lieu de `nginx` et à mené à bien la mise en place des 3 sites internet et du support de `PHP7`.
La partie intranet ne sait pas être testée pour le moment, suite à un problème au niveau du DNS.

### 5.1.6. Mail accessible uniquement que par commande (résolu)

Guillaume a pris en main la partie mail du projet.
Il a très rapidement fait face à de nombreux problèmes lors de la création du Docker avec `postfix` mais heureusement, une solution a été trouvée.

La partie mail n'a été accessible que par ligne de commande au départ, le temps que nous cherchions quel outil finalement utiliser pour créer les adresses mail virtuelles.

Depuis, il est maintenant possible d'utiliser un client mail tel que Thunderbird par exemple.
Concernant les adresses mail virtuelles, le service `postfix` est utilisé.

### 5.1.7. L'audio de l'appelant est transmis lors d'un appel en Voice over IP mais pas celui de l'appelé (en cours de résolution)

Melvin a pris en main la création et la mise en place de la partie VoIP du projet.
Il a su mettre en place un serveur Asterisk avec deux comptes test afin de vérifier le fonctionnement et ajouter au fur et à mesure les éléments nécessaires pour son bon fonctionnement.

Divers problèmes ont été rencontrés en provenance de Docker (compilation du Dockerfile impossible suite à des éléments manquants, "driver failed programming external connectivity on endpoint PBX", etc.) et d'Asterisk (lancement du serveur impossible, configuration intégrale d'Asterisk hors interface graphique, etc.) et une solution a été trouvée.

Malheureusement, à l'heure actuelle, il fait face à un problème de taille puisque l'audio de l'appelant est transmis, mais pas celui de l'appelé.
De plus, lorsque quelqu'un raccroche, l'appel continue pour l'autre personne.

La vérification des paquets transmis, du firewall ainsi que des logs à permis de trouver des erreurs.

Les erreurs des analyse de paquets consistent en des 404 *(not found)*, 403 *(Forbidden)* et 401 *(unauthorized)*.

Les erreurs des logs sont les suivants :

- 1 : unable to find a valid server address or name
- 1 : no configured users for ARI
- 1 : ignoring duplicated mailbox xx in contect default
  - Les xx correspondent aux deux derniers chiffres des utilisateurs et concerne tous les utilisateurs.
- 83 : unable to create channel of type 'SIP' (cause 20 - subscriber absent) :
  - Alors que l'utilisateur est bel et bien connecté.
- 83 : no audio available
  - Alors que l'utilisateur dispose bien d'un micro et que le son est retransmis lors d'un test d'enregistrement audio en local.
- 51 : retransmission timeout reached on transmission
- 51 : Hanging up call - no reply to our critical packet
- 51 : re-invite to non-existing call leg on other UA

### 5.1.8. Mise en place du protocole HTTPS (non résolu)

Le protocole `HTTPS` n'est toujours pas supporté à l'heure actuelle et il est planifié que sa mise en place soit faite dans les prochains jours.
Melvin a commencé le support du protocole `HTTPS` mais il n'arrive pas à finaliser ce dernier.

# 6. Procédure de validation du déploiement de la solution

Aucune procédure particulière de validation du déploiement de la solution n'a été réalisée à l'heure actuelle hormis la compilation via DocherHub ainsi qu'en local.

# 7. Réflexion sur le monitoring des services déployés

La réflexion sur le monitoring des services déployés n'a pas été réalisée à l'heure actuelle.

Néanmoins, le troubleshooting de nos configurations Docker a déjà été réalisé en parcourant la structure interne des images Docker déployée ainsi que des recherches dans les différents logs générés par ces derniers.