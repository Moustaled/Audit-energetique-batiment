# Étude d’un audit énergétique de bâtiment

**Suivi des consommations · Analyse des usages · Préparation d’un plan d’amélioration**

**Groupe de travail :** Moustapha IBRAHIM DJAMA · Thomas DHUNARA · Mariel FRESNEL  
**Formation :** ECAM-EPMI — ISE (Ingénieur en Système Électrique)

## Présentation

Ce dossier présente une méthode de préparation d’un audit énergétique de bâtiment : rassembler les relevés, contrôler les données, comparer les consommations et définir des actions d’amélioration. Il contient des schémas explicatifs, des **maquettes d’interface**, une fiche de relevés vide et des éléments de code d’un logiciel de gestion de l’énergie.

**À distinguer :** les images affichent des **données fictives de démonstration**. Elles ne prouvent pas qu’un audit réel a été mené ou que l’application est opérationnelle.

## Démarche proposée

1. **Définir le périmètre :** type de bâtiment, surface utile, usages, horaires d’occupation et période étudiée.
2. **Récupérer les données :** factures, compteurs, équipements techniques et relevés d’électricité, de chauffage et d’eau.
3. **Vérifier les valeurs :** unités, périodes, doublons, relevés manquants et cohérence des mesures.
4. **Analyser :** calculer les consommations par période, relever les écarts et rechercher les usages importants.
5. **Proposer des améliorations :** éclairage, régulation, chauffage, équipements et suivi des résultats.

![Démarche d’un audit énergétique](documentation/illustrations/schema-demarche-audit.svg)

## Illustrations du dossier

Les quatre images suivantes sont des **maquettes d’écran présentes dans le dossier d’origine**. Elles servent à expliquer les fonctions souhaitées ; les chiffres ne sont pas des mesures de bâtiment vérifiées.

### Vue d’ensemble

![Maquette — vue d’ensemble des consommations](documentation/illustrations/maquette-vue-ensemble.png)

### Saisie des relevés

![Maquette — saisie et consultation des relevés](documentation/illustrations/maquette-releves.png)

### Analyse énergétique

![Maquette — tendances des consommations](documentation/illustrations/maquette-analyse.png)

### Plan d’action

![Maquette — liste d’actions d’amélioration](documentation/illustrations/maquette-plan-action.png)

### Organisation des données

![Schéma des données de suivi énergétique](documentation/illustrations/schema-organisation-donnees.svg)

## Indicateurs envisagés

| Indicateur | Méthode | Points de vigilance |
| --- | --- | --- |
| Consommation annuelle d’électricité | Somme des kWh sur 12 mois | Période complète, relevés fiables |
| Consommation surfacique | Énergie annuelle (kWh) / surface (m²) | Surface réellement concernée, usage du bâtiment |
| Variation des consommations | (Consommation période B − période A) / consommation période A × 100 | Comparer des périodes équivalentes |
| Économies potentielles | Consommation de référence − consommation estimée après travaux | Hypothèses justifiées et incertitude |

Aucun de ces indicateurs n’est présenté ici comme un résultat de mesure : la **fiche de relevés est à remplir** avant tout calcul réel.

## Contenu de l’archive

- [`documentation/guide.html`](documentation/guide.html) : guide pédagogique local en français, consultable sans serveur.
- [`documentation/ETAT_DU_PROJET.md`](documentation/ETAT_DU_PROJET.md) : ce qui est disponible, manquant et non vérifié.
- [`documentation/ORIGINE_ET_DROITS.md`](documentation/ORIGINE_ET_DROITS.md) : origine des ressources et distinction des contributions.
- [`documentation/MODELE_RELEVES.csv`](documentation/MODELE_RELEVES.csv) : tableau vierge pour collecter les relevés.
- [`documentation/illustrations/`](documentation/illustrations/) : quatre maquettes d’écran et deux schémas explicatifs.
- [`code_source_MyEMS/`](code_source_MyEMS/) : éléments conservés du logiciel **MyEMS**, dont l’interface d’administration et des scripts SQL.
- [`LICENSE`](LICENSE) : licence du logiciel tiers MyEMS (reproduction de la notice publiée par son éditeur).

## À propos du code

Le code source joint est une **base logicielle préexistante** issue de l’écosystème [MyEMS](https://github.com/MyEMS/myems). Il n’a pas été développé intégralement par le groupe. L’archive fournie ne comprend ni le serveur API ni les pages HTML nécessaires aux routes de l’interface d’administration. **Le fonctionnement complet de l’application n’a pas été testé et n’est pas garanti.**

La structure interne de `myems-admin` et les noms techniques SQL sont conservés pour éviter de casser les références. Les intitulés du dossier de présentation et des illustrations sont en français.

## Étapes à réaliser pour un audit réel

Utiliser le modèle de relevés, choisir un bâtiment et une période, vérifier les données collectées, produire des tableaux de consommation, justifier les scénarios d’économie et conclure sur des résultats traçables. Les tableaux de bord de démonstration ne remplacent pas ces opérations.

## Groupe de travail

**Moustapha IBRAHIM DJAMA · Thomas DHUNARA · Mariel FRESNEL**  
Élèves-ingénieurs — ECAM-EPMI · Spécialité ISE

*Dossier pédagogique de présentation et de préparation d’un audit énergétique, sans déclaration de conformité ni résultats de terrain validés.*
