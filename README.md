# Urban Canvas

Urban Canvas est une application iOS développée en **SwiftUI** qui permet de découvrir, explorer et consulter des œuvres de street art urbain à partir de données statiques.

Le projet est un **Proof of Concept** destiné à valider l’expérience utilisateur·ice, l’interface et les principaux parcours de navigation avant la mise en place éventuelle d’un backend.

## Fonctionnalités

L’application propose une expérience complète de découverte du street art :

- consultation d’une liste d’œuvres urbaines ;
- affichage d’une fiche détail pour chaque œuvre ;
- filtrage des œuvres par type d’art ;
- exploration des œuvres sur une carte interactive ;
- accès à un répertoire d’auteur·ices ;
- génération automatique de missions de découverte ;
- suivi de progression des œuvres découvertes pendant une mission.

## Exploration des œuvres

L’écran principal permet de consulter les œuvres sous deux formes :

- une vue liste avec le titre, l’image et la localisation ;
- une vue carte affichant les œuvres sous forme de points d’intérêt.

Depuis la liste ou la carte, l’utilisateur·ice peut ouvrir une fiche détail contenant :

- le titre ;
- une image principale ;
- une description longue ;
- le type d’art ;
- l’état de conservation ;
- la date ;
- l’auteur·ice ;
- la localisation textuelle.

## Filtrage

Un système de filtre permet d’afficher les œuvres selon leur type d’art.

Lorsqu’un filtre est sélectionné, les données affichées sont mises à jour immédiatement dans l’interface.

## Auteur·ices

L’application contient un répertoire d’auteur·ices présenté sous forme de cartes.

Chaque carte affiche :

- le nom ;
- l’âge lorsque disponible ;
- les origines ;
- le type d’art de prédilection ;
- une photo de profil ou une image de substitution.

## Missions de découverte

Urban Canvas propose un mode Mission accessible depuis la navigation principale.

Une mission est une sélection automatique de 3 à 5 œuvres issues des données mockées. Elle permet à l’utilisateur·ice de découvrir plusieurs fiches d’œuvres dans l’application.

La génération d’une mission respecte les règles suivantes :

- aucune œuvre ne doit apparaître deux fois ;
- les répétitions d’auteur·ices sont évitées autant que possible ;
- au moins deux types d’art différents doivent être présents.

Les œuvres de la mission sont affichées sous forme de cartes numérotées avec leurs informations principales. L’utilisateur·ice peut consulter la fiche détail d’une œuvre, puis la marquer comme découverte.

La progression est affichée en temps réel, par exemple :

```text
2 œuvres découvertes sur 5
```

Lorsque toutes les œuvres sont découvertes, un message de réussite s’affiche :

```text
Mission terminée ! Vous avez découvert 5 œuvres urbaines.
```

Un bouton permet de générer une nouvelle mission à tout moment.

## Contraintes techniques

- Application iPhone en orientation portrait.
- Interface développée exclusivement avec SwiftUI.
- Données codées en dur dans le projet.
- Aucun backend.
- Aucune authentification.
- Aucune base de données locale.
- Images embarquées dans l’application ou chargées avec `AsyncImage`.
- Navigation principale avec `TabView`.
- Navigation hiérarchique avec `NavigationStack`.
- Carte interactive avec MapKit.

## Technologies utilisées

- Swift
- SwiftUI
- MapKit
- AsyncImage

## Installation

Cloner le projet :

```bash
git clone https://github.com/morealcode/urban-canvas.git
```

Ouvrir le projet dans Xcode :

```bash
open UrbanCanvas.xcodeproj
```

Lancer l’application sur un simulateur iPhone avec `Cmd + R`.

## Périmètre du POC

Ce projet ne contient volontairement pas de compte utilisateur·ice, d’authentification, de stockage persistant, de backend ou de synchronisation distante.

L’objectif est de valider l’interface, la navigation et la gestion d’état locale autour de données mockées.

## Évolutions possibles

Le projet pourrait ensuite évoluer vers une application complète avec :

- sauvegarde des œuvres découvertes ;
- favoris ;
- recherche textuelle ;
- ajout d’œuvres par les utilisateur·ices ;
- géolocalisation en temps réel ;
- itinéraires de découverte ;
- API distante ;
- stockage persistant.
