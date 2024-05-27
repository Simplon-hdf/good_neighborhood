![GitHub contributors](https://img.shields.io/github/contributors/Simplon-hdf/structure-projet?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/Simplon-hdf/structure-projet?style=for-the-badge)
![GitHub stars](https://img.shields.io/github/stars/Simplon-hdf/structure-projet?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/Simplon-hdf/structure-projet?style=for-the-badge)
![GitHub license](https://img.shields.io/github/license/Simplon-hdf/structure-projet?style=for-the-badge)

<h1 align="center">Project name</h1>

<div align="center">

## Project Description

Ce dépôt est une structure permettant de démarrer un projet professionnel ou personnel. Ceci vous fera gagner un temps précieux et maximiser votre temps de travail.

</div>

## About The Project

### Built With

- ![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
- ![Markdown](https://img.shields.io/badge/markdown-%23000000.svg?style=for-the-badge&logo=markdown&logoColor=white)
- ![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)

<details>
<summary><h2>Checklist</h2></summary>

- [ ] **Choix de la méthodologie (Agile)**
- [ ] **Créer un repo Github**
- [ ] **Créer la structure du repo (Best practice)**

  - Dossier
    - [ ] .config
    - [ ] dep
    - [ ] doc
    - [ ] res
    - [ ] samples
    - [ ] tools
    - [ ] build
    - [ ] test
  - Fichier
    - [ ] LICENCE.md
    - [ ] README.md
    - [ ] .gitattributes
    - [ ] .gitignore
    - [ ] .gitmodules
    - [ ] .dockerignore

- [ ] **Mise en place du Readme**
- [ ] **Cadrage de la demande client**
  - [ ] Contexte / Enjeux / Problèmatique
  - [ ] Questions entretiens
  - [ ] Persona
  - [ ] Présentation (PowerPoint)
  - [ ] Mail de suivie / Proposition stratégique
- [ ] **Benchmark (Analyse de la concurence)**
- [ ] **Spécification fonctionnelle**
  - [ ] Règle de gestion
  - [ ] UML
    - [ ] Diagramme d'activité
    - [ ] Use case
    - [ ] Diagramme de séquence
    - [ ] Diagramme de classe
  - [ ] Merise
    - [ ] MCD
    - [ ] MLD
    - [ ] MPD
  - [ ] RBAC
- [ ] **Epic**
  - [ ] User Story
  - [ ] Product backlog (Tâches)
- [ ] **Jira**
- [ ] **Rituels agiles**

  - [ ] Sprint planning meeting
  - [ ] Stand up meeting
  - [ ] Sprint retrospective
  - [ ] Sprint Review

- [ ] **Démarrer les sprints**

</details>

# Introduction
Dans le cadre de la formation CDA dispensé par Simplon, mon équipe doit réaliser un projet Fil-Rouge.

Ce projet consiste en la création d'une Application facilitant la communication ainsi que l'entraide de voisinnage.
Nous avons choisi de tavailler en méthodologie Agile SCRUM qui, étant simple et légère est conçue pour la gestion de projets de petite à moyenne taille, avec une seule équipe de développement.

L'équipe est constituée de 2 membres :

ALLEGRE Alix tech lead et développeur qui a le rôle de Scrum Master dont la fonction est de diriger les membres de l'équipe en charge du projet

SOTGIU Guilllaume qui a le rôle de Product Owner dont la fonction est entre autre de prendre en charge les intéractions entre l'équipe en charge du projet et le client.

et d'assigner des tâches à chacun.

... qui a le rôle de Développeur dont la fonction est de développer les différentes solutions élaborées par tous
les membres de l'équipe en charge du projet et validées par le client.

... qui a lui aussi le rôle de Développeur.

Nous travaillons donc en Méthode Agile SCRUM qui est une méthodologie utilisée au sein des entreprises dans la majorité des cas.
Note : Le Product Owner ainsi que le Scrum Master ont aussi pour rôle de développer, cependant, certaines responsabilités sont inhérentes à ces rôles spécifiques.

# Architecture projet
Ce Repository est découpé selon certaines bonnes pratiques, nous allons les expliquer :

Le dossier .build correspond à toutes les ressources relatives au build de l'application.
Les fichiers CMAKE par exemple, devraient être placés dans ce dossier, ainsi que les fichiers SH,
ou encore les fichiers relatifs à Docker par exemple.

Le dossier .config correspond aux ressources relatives à la configuration de l'environnement
d'éxecution local, afin d'initialiser le projet.

Le dossier .github correspond aux ressources relatives à Github, ce dossier peut contenir
la liste non-exhaustive des contributeurs ainsi que le code de conduite à adopter entre autre.

Le dossier dep correspond aux dépendances relatives au projet, ce dossier doit contenir
les dépendances relatives au bon fonctionnement de l'application.

Le dossier doc correspond aux ressources relatives à la documentation du projet ainsi qu'à
l'application.

Le dossier res correspond aux ressources statiques relatives au projet ainsi que l'application,
il peut s'agir d'image par exemple.

Le dossier src correspond aux fichiers source de l'application, c'est à dire le code source
de cette dernière.

Le dossier test correspond aux ressources relatives aux tests au cours du développement,
c'est à dire les test unitaires, les tests d'intégrations par exemple.

## Author

## License

Distributed under the MIT License. `LICENSE` See for more information.

## Ressource
