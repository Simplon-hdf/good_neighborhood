# FRONT-END
Afin d'assurer la sécurité de notre application coté Front-end, nous aurons besoin de surveiller la nature des ressources qui transitent ainsi que de nettoyer les données entrantes et sortantes en supprimant ou en modifiant les caractères potentiellement dangereux.

## Processus de Sanitisation
La sanitization, ou nettoyage de données, est un processus qui consiste à traiter et à vérifier les entrées utilisateur pour s'assurer qu'elles ne contiennent pas de code malveillant ou de caractères spéciaux susceptibles de causer des problèmes de sécurité ou de fonctionnement dans une application.

Le but principal de la sanitization est de prévenir les attaques d'injection de code, telles que les attaques XSS (Cross-Site Scripting) et SQL Injection, en échappant ou en supprimant les caractères spéciaux et les scripts potentiellement dangereux.


### Les principales menaces cotés front-end sont:
- Les attaques par injection SQL : les hackeurs peuvent exploiter les vulnérabilités de l'application pour injecter du code malveillant dans la base de données. Cela peut
entraîner la divulgation d'informations sensibles ou la modification des données.

- La vulnérabilité XSS (Cross-Site Scripting) est un type de faille de sécurité qui permet à un attaquant d'injecter du code malveillant (généralement du JavaScript) dans une page web affichée par un utilisateur.
Voici les reccomandations ANSII que nous choississons d'appliquer :
#### R5 Dissocier clairement la composition des pages web
Il est recommandé de dissocier clairement les données (JSON), la structure (HTML),
le style (CSS) et la logique (JavaScript) d’une page web afin de réduire le risque
d’occurrence de vulnérabilités XSS.
Le contrôle du respect de cette recommandation est réalisable par la mise en œuvre
de CSP.

### R6 Expliciter la nature d'une ressource avec l'en-tête Content-Type
l'utilisation de l'en-tête Content-Type nous sera importante pour indiquer la
nature des ressources échangées dans notre application et assurer une
communication correcte entre le client et le serveur. Nous spécifierons le type
MIME (Multipurpose Internet Mail Extensions - identifie le format de la ressource)
approprié pour chaque ressource échangée dans l'application.

#### R7 Vérifier l'échappement des contenus inclus
Les données externes employées dans quelque partie que ce soit de la réponse envoyée au navigateur doivent avoir fait l’objet d’un « échappement » adapté au contexte d’interprétation.



- Les attaques par déni de service (DoS) : les hackeurs peuvent submerger l'application avec un grand nombre de requêtes, ce qui peut entraîner une indisponibilité temporaire ou permanente de l'application.
Recommandation choisies :
### R8 Vérifier la conformité des données issues de sources externes
Il existe des bibliothèques de validation telles que Yup, Formik ou validate.js pour valider les données saisies par l'utilisateur dans les formulaires ou les champs de saisie en ReactNative
Symfony propose des composants intégrés tel que Validator qui permet de valider
l’intégrité des données d’entrées en vérifiant leur format.
Pour valider les données côté serveur Symfony offre des moyens simples de valider les
5 données dans vos contrôleurs ou services.
Afin de vérifier l’intégrité des ressources javascript et CSS au sein de notre application, nous mettrons en place un SRI via les fonctionnalités React Native. Nous utiliserons l’empreinte de Hachage SHA256.
### R11 : Contrôler l'intégrité des contenus internes
### R12 : Contrôler l'intégrité des contenus tiers


- Les attaques de l'homme du milieu (MITM) : les hackeurs peuvent intercepter les
communications entre l'application et le serveur pour voler des données sensibles ou
injecter du code malveillant.
Pour ceci nous allons mettre en place la recommandation de l'ANSII
#### R2 Mettre en oeuvre HSTS
HSTS (HTTP Strict Transport Security) est une fonctionnalité de sécurité web qui permet d'indiquer aux navigateurs qu'ils doivent toujours se connecter en utilisant une connexion HTTPS sécurisée, plutôt que HTTP non sécurisé.
Cela aide à prévenir les attaques de l'homme du milieu (MitM) et à renforcer la sécurité des données transmises entre le navigateur et le serveur web.
Pour le cas de notre application, il est possible de mettre en œuvre HSTS via
REACT NATIVE en utilisant les fonctionnalités de sécurité fournies par le framework. Les systèmes d'exploitations utilisent des fonctionnalités pour forcer l’utilisation d’une connexion HTTPS et mettre en œuvre HSTS.