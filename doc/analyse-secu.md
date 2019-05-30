---
title: WoodyToys - Analyse de sécurité
subtitle: EPHEC - Groupe 13
author: 
    - Melvin Campos Casares
    - Guillaume Vanden Herrewegen
    - Hubert Van De Walle
date: 6 juin 2019
titlepage: true
titlepage-rule-color: "ff5722"
footer-left: Melvin, Guillaume, Hubert - Groupe 13
titlepage-rule-height: 6
toc: true
toc-own-page: true
toc-title: Analyse de sécurité
---

# 1. VPS & Docker

## 1.1. Risques encourus

Ils existent de nombreux risques.
Les principaux risques portent sur la confidentialité, la disponibilité et l'intégrité.
Voici quelques-un des risques auxquels nous pouvons être exposé et donc par la suite, pouvoir nous en protéger.

- Infiltration dans nos VPS,
- Attaque de type dos (denial-of-service attack),
- Fishing,
- Authentification par Brutforce,
- Sniffing de données.

Nos services doivent aussi être opérationnels 24 heures sur 24.
Ce qui veut dire que nos serveurs doivent être à tous prix protégés de tout type de problème physique, aussi bien une panne électrique qu'une panne du matériel.

### 1.1.1. Par le VPS

Nous avons commencé par changer le mot de passe d'accès à nos VPS.
Nous avons ensuite sécurisé l'accès à notre VPS avec SSH.
Cet accès est sécurisé car il utilise une clé unique par machine pouvant se connecter.
En plus de cette clé, il faut entrer une pass-phrase pour pouvoir s'y connecter.

## 1.2. Contre-mesures mises en place

Nous avons mis en place l'authentification par clé et, par conséquent, désactivé l'authentification par mot de passe.
De plus, le compte `root` à eu un changement de mot de passe par un nouveau à chiffrement fort.
Depuis la mise en place de la connexion par clé, le compte `root` n'est plus accessible de manière externe.

Nous avons également mis en place `fail2ban` qui empêche toute tentative d'attaque DOS.
Cette sécurité va bannir une adresse IP lorsque celle-ci réalise trop de tentatives de connexion refusées.
La règle utilisée est de 10 tentatives en 2 minutes maximum, 20 minutes de bannissement de l'adresse IP.
De plus, la protection contre l'attaque DDOS et la récidive est également suivie par `fail2ban`.

# 2. Services

## 2.1. Risques encourus

### 2.1.1. Par chacun des services déployés

#### 2.1.1.1. Service Web

Afin de garantir une sécurité au niveau de notre infrastructure web, nous sommes en train d'introduire un certificat SSL pour que notre site web soit sécurisé mais soit également crédible au niveau du client.

#### 2.1.1.2. Service Mail

Le service mail étant encore en cours de développement, aucune protection n'a encore été mise en place. Cependant, nous envisageons d'introduire des sécurités afin de protéger le service contre tout type de spam.

#### 2.1.1.3. Service VoIP

Nous avons ajouté pour le VoIP une protection supplémentaire afin de maintenir celui-ci opérationnel. La solution utilisée est 'fail2ban'.

#### 2.1.1.4. Au niveau intégrité

#### 2.1.1.5. Au niveau confidentialité

La confidentialité est un point où nous mettons toute notre attention. Chacun des services est étudié afin de trouver une solution pour garantir une confidentialité maximale.
Au niveau du service web, nous sommes en train de mettre ne place un certificat SSL qui garantit la confidentialité des données personnelles sur notre site web.

Au niveau du mail, nous sommes occupés à chercher un système de boîtes mails virtuelles afin de garantir à chaque utilisateur une confidentialité au niveau de ses mails. Nous cherchons également à sécurisé la base de données concernant les identifiants de chaque utilisateur.

Au niveau du service VOIP, une connexion par mot de passe fort est demandée pour son utilisation.

#### 2.1.1.6. Au niveau disponibilité du service

## 2.2. Contre-mesures

### 2.2.1. Proposition

### 2.2.2. Mise en place
