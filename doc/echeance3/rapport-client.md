---
title: WoodyToys - Rapport client n°3
subtitle: EPHEC - Groupe 13
author: 
    - Melvin Campos Casares
    - Guillaume Vanden Herrewegen
    - Hubert Van De Walle
date: 16 mai 2019
titlepage: false
titlepage-rule-color: "4fc3f7"
footer-left: Melvin, Guillaume, Hubert - Groupe 13
titlepage-rule-height: 6
toc: false
toc-own-page: false
listing: false
toc-title: Rapport client n°3
---

# WoodyToys - Rapport client

## Responsables

- **Partie DNS & Web :** Melvin Campos Casares
- **Partie Mail :** Guillaume Vanden Herrewegen
- **Partie VoIP :** Hubert Van De Walle

## Cahier des charges

Dans le cadre de la mise en place de l'infrastructure réseau de l'entreprise WoodyToys, plusieurs aspects doivent être tenus en compte et seront expliquées ci-dessous.

### Services internes

Il est demandé d'offrir l'accès Internet sur les postes de travail fixes et mobiles des employés tout comme l'accès aux différents services internes (comme l'ERP) sans se reposer sur le fournisseur d'accès ni les fournisseurs extérieurs.
Concrètement, il nous est demandé d'utiliser notre propre DNS afin de ne pas dépendre du fournisseur d'accès ou fournisseur extérieur afin d'accéder à Internet et aux différents services internes (comme l'ERP).

Un contrôle de traffic Web généré par les employés est une préférence.

Il y a un certain intérêt pour la gestion des identités des employés pour l'utilisation des services internes même si pas obligatoire.

### Web

La vente des produits s'effectue avec les revendeurs via une plateforme accessible en ligne, expliqué un peu plus loin.

La gestion des contacts clients, commandes, stocks et l'organisation de la prodution est basée sur un outil ERP web accessible uniquement en interne.
Il s'agit donc d'un Intranet, accessible *uniquement* dans l'enceinte du réseau de l'entreprise.

La différence entre le site internet pour les revendeurs et l'outil ERP est que l'outil ERP n'est disponible qu'en interne et uniquement que par les employés de l'entreprise WoodyToys alors que le site pour les revendeurs est accessible publiquement et ne donne accès qu'à un catalogue et un moyen de commande.
L'outil ERP permet donc de voir, faire et gérer bien plus de choses que le site pour les revendeurs.

Un portail Web présentant les produits (www.woodytoys.be) et un site de vente en ligne réservé aux revendeurs (b2b.woodytoys.be) sont disponible publiquement.

**Le code source des 3 sites est pré-existant :**

- Le site vitrine est un site statique en HTML/CSS,
- Le site de vente en ligne pour les revendeurs (b2b) et l'ERP (intranet) sont des sites dynamiques en PHP/MySQL.

### Mail

Une adresse mail est fournie à chaque employé et respectant le format suivant : `nom.prenom@woodytoys.be`.

Il y a également présence d'adresses mails générique :

- contact@woodytoys.be, redirigée vers la secrétaire,
- b2b@woodytoys.be, redirigée vers les commerciaux.

Toutes les adresses mails doivent être consultables à l'aide d'un client mail classique depuis l'entreprise et la réception/envoi des mails doit être possible n'importe où (au bureau, en déplacement ou à domicile).

### Téléphonie IP

L'entreprise doit être accessible en VoIP depuis Internet afin que les clients puissent être en relation avec l'entreprise. Les appels aboutissent sur le poste de la secrétaire.
L'adresse de contact est : contact@woodytoys.be.

Les employés de l'entreprise doivent pouvoir communiquer entre eux tant au bureau qu'en déplacement.

Les communications identifiées sont les suivantes :

- Ouvriers : un poste de téléphonie IP dans l'atelier et dans le hangar pour joindre les autres départements internes.
- Secrétaire : dispose d'un PC sur lequel se trouve un softphone permettant de contacter n'importe qui.
- Service comptabilité : numéro unique permettant de joindre le premier comptable disponible et un numéro spécifique par bureau (le service est réparti en 2 bureaux). Ils peuvent joindre l'extérieur et tout le monde en interne à l'exception du directeur.
- Commerciaux : réunis dans un bureau, ils peuvent joindre l'extérieur et tout le monde n interne à l'exception du directeur. Ils disposent de smartphones avec lesquels ils peuvent téléphoner en déplacement.
- Direction : il dispose d'un numéro qui peut joindre n'importe quel poste en interne et l'extérieur. Il ne peut être joint directement (les appels transitent d'abord auprès de la secrétaire).

Tous les employés disposeront d'une boite vocale.

Une fusion est à prévoir entre deux réseaux téléphoniques, ce qui signifie qu'il faut minimiser les changements et les deux serveurs de téléphonie doivent être configurés pour que les deux sites puissent se contacter entre elles.

La visio-conférence, l'utilisation de téléphones ou passerelles SIP vers la téléphonie classique sont des petits plus éventuellement envisageables.

### Fichiers de l'entreprise

Un système de fichiers partagés est à prévoir.

- Chaque employé doit pouvoir disposer de son répertoire personnel, tout comme le directeur et la secrétaire.
- Chaque groupe d'employés disposeront d'un répertoire commun.
- Les employés doivent pouvoir accéder aux fichiers partagés via l'explorateur de fichiers de leur ordinateur.
- Un système de backup facile doit être prévu.
- Les employés doivent pouvoir y accéder même en déplacement (PC portable, smartphones, tablettes).

## Traduction des besoins du client en langage informatique

*Au vu des besoins du client, ce projet sera divisé en plusieurs parties :*

- *Le client demande à intégrer un DNS (un ou plusieurs serveurs) avec la gestion des noms de domaines ainsi que des zones.*
- *Il est demandé de mettre en place 3 sites web, tous sur un ou plusieurs serveurs web avec une intégration d'une base de données :*
  - *Un premier site web statique pour présenter l'entreprise,*
  - *Deux autres sites, dynamique tout deux, pour la partie vente en ligne pour les revendeurs et l'ERP.*
- *La création d'un serveur mail permettant la gestion des envois et réception, une consultation via client mail et ce, de n'importe où.*
  - *Ce serveur mail doit héberger le nom de domaine de l'entreprise et notamment gérer les éventuels redirections.
  - *Il stockera les mails envoyés et reçus.*

### DNS et accès web interne

Un service DNS interne et externe est en cours de finalisation.
Ce service est développé sur `Bind9` et devrais être achevé dans les prochains jours.

Même si `Bind9` existe depuis un certain temps et que d'autres alternatives plus récentes et, par conséquent, plus performantes existent, il reste très largement utilisé.
De plus, de par sa popularité, il profite encore aujourd'hui de nombreuses mises à jour de sécurité ainsi que d'une documentation variée et complète.

### Web

*Le déploiement et la configuration des services nécessaires pour l'hébergement est en cours de développement.*

*Nous avons choisi `lighttpd` pour les performances qu'il offre en comparaison d'`apache` et `nginx`.*
*`Lighttpd` est un web-server sécurisé, rapide et flexible qui à été optimisé pour des environnements à hautes performance.*
*Il a une très faible empreinte mémoire en comparaison d'autres serveurs web et tient compte de la charge du processeur.*

*Les sites sont accessible en ligne sur notre plateforme de test `51.77.203.41` aux adresses suivantes :*

- *www.wt13.ephec-ti.be*
- *b2b.wt13.ephec-ti.be*
- *intranet.wt13.ephec-ti.be*

### Mail

Concernant la partie mail, ce point est en cours de réflexion.
Nous pensions utiliser `Postfix`, étant donné qu'il s'agit du système de server mail répandu et bien connu de tous.

`Postfix` n'est certes pas dès plus récents mais on profite, tout comme pour Bind9, d'une documentation complète.

### VoIP

*Nous utilisons `Asterisk` comme moyen de communication en Voice over IP.*
*Il est fort répandu et nous profitons du documentation dès plus remplies.*

*D'autres systèmes ont retenu notre attention comme Dimelo (a RingCentral Company) ou Skype Connect qui malheureusement sont payant et ne correspondent pas totalement à ce que nous recherchons.*
*Dans le cadre de Skype Connect, il s'agit d'un système PBX SIP proposé pour les professionnels avec système de location de canaux. Dimelo semble être dans le même principe.*

## Solutions techniques

### Compratifs des alternatives possible

### Choix et justification de la solution

## Besoins en maintenance

## Deploiement
