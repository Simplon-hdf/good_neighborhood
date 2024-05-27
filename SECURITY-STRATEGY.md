# Objectif de la stratégie de sécurisation

L'objectif de la stratégie de sécurisation de l'application est de protéger les données
personnelles des utilisateurs et de garantir la confidentialité, l'intégrité et la disponibilité
de l'application et des informations qu'elle contient. Cette stratégie vise à prévenir les
risques de piratage, de vol de données, de fraude et d'autres menaces qui pourraient
compromettre la sécurité de l'application et la confiance des utilisateurs. Nous
souhaitons garantir un niveau de sécurité optimal et protéger les utilisateurs contre les
cybermenaces. Cette stratégie de sécurisation est essentielle pour assurer la pérennité de
notre application et la satisfaction de nos utilisateurs. Pour ce faire nous souhaiterions
mettre en place certaines mesures de sécurité conformément aux recommandations de
l’ANSSI tel que CORS pour controle l’accès aux ressources de notre application,
CSP(Content Security Policy) pour restreindre les sources autorisées à charger du
contenu sur notre app ainsi que SRI (Subresource Integrity) pour vérifier l’intégrité des
ressources chargées à partir de sources externes.

# Vulnérabilités et principales menaces

Voici quelques-unes des menaces de sécurité les plus répandues dont je vais prendre en
compte :
1. Le vol de données personnelles : l’utilisateur de l'application fournit des informations
personnelles telles que leur nom, leurs coordonnées ainsi que des données
d'authentification. Si l'application n'est pas correctement sécurisée, ces données peuvent
être volées et utilisées à des fins malveillantes telles que le vol d'identité ou la fraude.
2. Les attaques par injection SQL : les hackeurs peuvent exploiter les vulnérabilités de
l'application pour injecter du code malveillant dans la base de données. Cela peut
entraîner la divulgation d'informations sensibles ou la modification des données.
3. Les attaques par déni de service (DoS) : les hackeurs peuvent submerger l'application
avec un grand nombre de requêtes, ce qui peut entraîner une indisponibilité temporaire
ou permanente de l'application.
4. Les attaques de phishing : les hackeurs peuvent envoyer des e-mails ou des messages
trompeurs aux utilisateurs de l'application pour les inciter à divulguer leurs
informations de connexion ou d'autres informations sensibles.
5. Les vulnérabilités de sécurité dans les bibliothèques et les frameworks utilisés, ces
composants peuvent contenir des vulnérabilités de sécurité qui peuvent être exploitées.
6. Les attaques de l'homme du milieu (MITM) : les hackeurs peuvent intercepter les
communications entre l'application et le serveur pour voler des données sensibles ou
injecter du code malveillant.

Pour tout cela, nous mettrons en place plusieurs mesures de protection indépendantes
pour chaque menace envisagée en utilisant le système de défense en profondeur ainsi
que le moindre privilège.

# Exigences de sécurité requises en fonction des risques encourues

Puisque notre application sera composée d’une partie backend et frontend
communiquant via une API nous aurons besoin d’utiliser les en-têtes CORS pour
contrôler l'accès aux ressources dans le cadre des requêtes effectuées via JavaScript.
-La réduction de la surface d’attaque consiste à ne pas exposer des services, accès et
autres points d’entrée s’ils ne sont pas indispensables
-CSP indique quels types de ressources peuvent être chargés sur une page web et à partir
de quelles sources.
Cela aide à atténuer les risques liés aux attaques XSS (Cross-Site Scripting) en empêchant
l'exécution de scripts malveillants provenant de sources non autorisées. Il permet
également de limiter d'autres types d'attaques, tels que les injections de contenu mixte et
les attaques de clics détournés (clickjacking).
Symfony nous permettra de mettre en place CSP grâce au bundle
“NelmioSecurityBundle”.

### R1 Mettre en œuvre TLS à l'état de l'art
Il est nécessaire de mettre en œuvre les Recommandations de sécurité relatives à TLS [4]
pour tout site même si celui-ci ne traite pas d’informations sensibles.

### R2 Mettre en oeuvre HSTS
Il est nécessaire de mettre en œuvre HSTS afin de limiter les risques d’attaque de type
Man-In-The-Middle dus à des accès non sécurisés générés par les utilisateurs ou par un
attaquant. Pour le cas de notre application, il est possible de mettre en œuvre HSTS via
REACT NATIVE en utilisant les fonctionnalités de sécurité fournies par le framework. Les
systèmes d'exploitations utilisent des fonctionnalités pour forcer l’utilisation d’une
connexion HTTPS et mettre en œuvre HSTS.

# Processus de Sanitisation

Afin de sécuriser notre application, nous aurons besoin de surveiller la nature des
ressources qui transitent ainsi que de nettoyer les données entrantes et sortantes en
supprimant ou en modifiant les caractères potentiellement dangereux. Cela touche
également la sécurisation de l’API

Voici la liste des recommandations choisies à cet effet :
### R6 Expliciter la nature d'une ressource avec l'en-tête Content-Type
l'utilisation de l'en-tête Content-Type nous sera importante pour indiquer la
nature des ressources échangées dans notre application et assurer une
communication correcte entre le client et le serveur. Nous spécifierons le type
MIME (Multipurpose Internet Mail Extensions - identifie le format de la ressource)
approprié pour chaque ressource échangée dans l'application.

### R7 Vérifier l’échappement des contenus inclus
Il est pertinent de vérifier l’échappement des contenus afin de nous assurer que les
données insérées ne contiennent pas de caractères spéciaux qui pourraient être
interprétés comme du code malveillant côté back-end ainsi que front-end. Dans le cadre
de notre application, nous pouvons utiliser une bibliothèque JavaScript : “escape-html”.
En symfony, nous pourrons utiliser Doctrine ORM qui gère l’échappement des données
de manière sécurisée afin d’éviter les attaques par injections SQL.

### R8 Vérifier la conformité des données issues de sources externes
Il existe des bibliothèques de validation telles que Yup, Formik ou validate.js pour valider
les données saisies par l'utilisateur dans les formulaires ou les champs de saisie en React
Native
Symfony propose des composants intégrés tel que Validator qui permet de valider
l’intégrité des données d’entrées en vérifiant leur format.
Pour valider les données côté serveur Symfony offre des moyens simples de valider les
5
données dans vos contrôleurs ou services.
Afin de vérifier l’intégrité des ressources javascript et CSS au sein de notre application,
nous mettrons en place un SRI via les fonctionnalités React Native. Nous utiliserons
l’empreinte de Hachage SHA256

Recommandation choisies :
### R11 : Contrôler l'intégrité des contenus internes
### R12 : Contrôler l'intégrité des contenus tiers

# Sécurisation de l'authentification

L’authentification et le stockage des mots de passe nécessitent des exigences de sécurité
strictes. Une violation de données peut entraîner la divulgation de mots de passe en clair,
ce qui peut à son tour entraîner des compromissions de comptes et des vols d'identité.
Nous avons choisi de mettre en place des exigences de sécurité telles que le chiffrement
des données, l'authentification forte, ainsi que pour le stockage des mots de passe, le
salage et le hachage.

### R13 Protéger les données d'authentification stockées par le vérifieur Lorsque des données
d’authentification doivent être conservées par le vérifieur, il est recommandé d’assurer la protection
en confidentialité et en intégrité de ces informations. Il est également recommandé de protéger les
accès à ces données sensibles.
Sécurisation du mot de passe

Afin de sécuriser au mieux notre application nous souhaiterions mettre en place une
politique de mot de passe fort pour encourager les utilisateurs à utiliser des mots de
passe complexes et uniques.

### R23 Mettre en œuvre des règles sur la complexité des mots de passe
### R27 Mettre en place un contrôle de la robustesse des mots de passe lors de leur création ou de leur renouvellement

Le salage consiste à ajouter une chaîne de caractères aléatoires au mot de passe avant de
le hacher, ce qui rend le mot de passe plus difficile à craquer en cas de violation de
données.

### R28 Utiliser un sel aléatoire long
Le hachage, quant à lui, consiste à transformer le mot de passe en une chaîne de
caractères unique et irréversible à l'aide d'une fonction de hachage. Cette chaîne de
caractères est ensuite stockée dans la base de données plutôt que le mot de passe en clair.

Aussi l'application traite des informations sensibles sur les quartiers et les communautés
locales, ce qui peut entraîner des risques pour la sécurité publique et la vie privée des
utilisateurs. Il est donc important de mettre en place des mesures de sécurité pour
prévenir les abus et les utilisations malveillantes de l'application, telles que la
modération des contenus publiés, la vérification de l'identité des utilisateurs et la
surveillance des activités suspectes.


# RÈGLES RGPD

Enfin, l'application doit être conçue et développée en conformité avec les
réglementations et les normes en matière de protection des données personnelles, telles
que le RGPD en Europe. Les utilisateurs doivent être informés des politiques de
confidentialité et des pratiques de collecte et de traitement des données de l'application.

Classification des données en fonction de leur sensibilité
● Les données personelles : nom, prénom, adresse, numéro de téléphone
● les mots de passe
● les messages transmis entre utilisateurs
Définition des niveaux de sécurité requis pour chaque type de donnée

## ARCHITECTURE SECURISEE
Description de l'architecture de l'application et des composants techniques utilisés
Présentation des protocoles de communication sécurisés utilisés
Description des mécanismes d'authentification et des contrôles d'accès mis en place

## BONNES PRATIQUES DE DÉVELOPPEMENT
Présentation des bonnes pratiques de développement sécurisé recommandées par l'ANSSI
Description des mesures de sécurité mises en place lors du développement de
l'application

## GESTIONS DES VULNÉRABILITÉS
Présentation de la politique de gestion des vulnérabilités de l'application
Description des mesures de sensibilisation des utilisateurs à la sécurité mises en place
Présentation des bonnes pratiques de sécurité à suivre pour utiliser l'application en
toute sécurité

## SURVEILLANCE DE L'ACTIVITÉ
Description des outils de surveillance et de journalisation utilisés pour collecter des
informations sur les événements de sécurité
Présentation des procédures de traitement des incidents de sécurité

## CONCLUSION
Résumé de la stratégie de sécurisation mise en place
Perspectives d'amélioration de la sécurité de l'application
