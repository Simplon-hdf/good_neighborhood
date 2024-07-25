# BACK-END
Afin d'assurer la sécurité de notre application coté Back-end, il est impératif de mettre en place des mesures robustes pour protéger les informations sensibles et garantir la confidentialité et l'intégrité des données

## API

### Gestion de l'Authentification et des Autorisation
Pour gérer l'authentification de notre API nous utiliserons JWT (JSON Web Tokens) pour vérifier l'identité des utilisateurs. Nous l’implémenterons grâce au bundle lexik/jwt-authentication-bundle.
Nous utiliserons aussi un système de rôle par utilisateur qui auront accès ou non à une route 
Nous gérerons le temps de session dans un fichier config.yaml et la durée de session sera de 24h 


### Sécurisation des Communications:
- Nous utiliserons HTTPS pour chiffrer les communications entre les clients et l'API afin de protéger les données sensibles pendant leur transit.
- Nous chiffrerons les données stockées sur le serveur de l'API pour protéger les informations sensibles en cas de violation de données. 
Nous utiliserons la bibliothèque Libsodium pour chiffrer nos données côté serveur. Libsodium utilise l’algorithme de chiffrement ChaCha20 et Poly1305.


### Sanitization
La sanitization donc le nettoyage et la validation des entrées utilisateurs se fera à plusieurs niveaux côté api.
- Nous utiliserons le composant Validator de Symfony pour valider les données des requêtes API. Il se caractérisera par des annotations dans l’entité qui définit les contraintes. Ces contraintes permettent de vérifier que les données respectent certaines règles avant d'être traitées par l'application.
- Le composant Security de Symfony gère les aspects de sécurité comme l'authentification et l'autorisation, assurant que seules les requêtes autorisées accèdent à l'API.
- Nous utiliserons le composant Serializer de symfony pour convertir des objets au format JSON et inversement. La sérialisation garantit que seules les propriétés définies sont exposées, la désérialisation elle permet de transformer des données brutes en objets tout en appliquant les validations nécessaires.


### Sécurité des cookies et des en-têtes HTTP
Utilisez des en-têtes HTTP sécurisés comme Content-Security-Policy, X-Content-Type-Options et X-Frame-Options pour renforcer la sécurité de votre API.

### Journalisation
Journaliser toutes les requêtes API, y compris les informations sur l'utilisateur, les actions effectuées et les résultats retournés, pour faciliter l'analyse des incidents de sécurité et la conformité aux réglementations. Utilisation du framework symfony pour journaliser les données avec le composant Monolog.

## Base de donnée

### Politique de sécurité des mots de passe
- Longueur des mots de passe 11 caractères minimum, Ne pas imposer de longueur maximale pour les mots de passe
- Mettre en œuvre des règles sur la complexité des mots de passe
- Délai d'expiration: Ne pas imposer par défaut de délai d'expiration sur les mots de passe des comptes non sensibles en revanche nous imposerons un délai d'expiration sur les mots de passe des comptes à privilèges tel que les administrateurs. Nous révoquerons immédiatement les mots de passe en cas de compromission suspectée ou avérée.

- Robustesse des mot de passe: 
Mettre en place des mécanismes automatiques et systématiques permettant de vérifier que les mots de passe respectent bien les règles définies dans la politique de sécurité des mots de passe. Nous pourrons faire ceci grâce aux contraintes de validation dans les entités et en mettant en place des regex. 

Nous comparerons les mots de passe lors de leur création à une base de données répertoriant les mots de passe les plus utilisés ou bien ceux qui ont été compromis avec JohnTheRipper qui est un dictionnaire recensant les mots de passe les plus utilisés.

Lors d’un renouvellement du mot de passe, interdire la réutilisation d’un mot de passe parmi les X derniers mots de passe déjà utilisés.

### Hachage des mots de passe
- Génération du sel : Pour chaque utilisateur, un sel aléatoire est généré. Le sel est une chaîne de caractères aléatoire et unique qui est ajoutée au mot de passe de l'utilisateur avant le hachage. 
- Ajout du sel au mot de passe : Le sel est concaténé au mot de passe de l'utilisateur. Par exemple, le sel peut être ajouté au début ou à la fin du mot de passe.
- Hachage du mot de passe salé : Le mot de passe, avec le sel ajouté, est ensuite haché à l'aide d'une fonction de hachage sécurisée telle que SHA-256. Le hachage produit est stocké dans la base de données, ainsi que le sel utilisé.

Salage avec symfony grâce au composant “UserPasswordEncoderInterface”.


### Sauvegarde des données
Pour sauvegarder la base de données nous créerons un script bash permettant de sauvegarder la base de données , une tâche cron s’occupera de lancer ce script une fois par semaine.