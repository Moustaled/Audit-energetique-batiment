
# Audit énergétique de bâtiment — Analyse et optimisation des consommations

**Performance énergétique | Suivi des consommations | Analyse des usages | Efficacité énergétique | Gestion technique du bâtiment**

**Projet d'ingénierie — ECAM-EPMI**  
**Spécialité :** ISE (Ingénieur en Système Électrique)

**Équipe :**
- Moustapha IBRAHIM DJAMA
- Thomas DHUNARA
- Mariel FRESNEL

[Portfolio de Moustapha IBRAHIM DJAMA](https://portfolio-eta-ten-t34s52rvq8.vercel.app/)

---

## 1. Présentation du projet

L'amélioration de la performance énergétique des bâtiments constitue un enjeu majeur dans la maîtrise des consommations, la réduction des dépenses d'exploitation et la transition énergétique.

Ce projet porte sur l'étude d'une **méthodologie d'audit énergétique appliquée aux bâtiments**, associée à l'analyse des consommations et à l'exploration d'outils numériques de suivi énergétique.

L'objectif est de structurer une démarche permettant d'identifier les principaux postes de consommation, d'analyser les performances d'un bâtiment et d'étudier des solutions d'amélioration adaptées à ses caractéristiques.

Le projet s'articule autour de plusieurs axes :

- Analyse des consommations électriques et thermiques.
- Identification des usages énergétiques du bâtiment.
- Structuration et exploitation des données de comptage.
- Définition d'indicateurs de performance énergétique.
- Étude des écarts et des tendances de consommation.
- Identification des sources potentielles de gaspillage énergétique.
- Élaboration d'une méthode de priorisation des actions d'amélioration.
- Exploration d'interfaces numériques pour le suivi des consommations.

Le dépôt rassemble une documentation méthodologique, des modèles de collecte de données, des illustrations de tableaux de bord et une base logicielle issue de MyEMS permettant d'étudier les fonctionnalités d'un système de gestion énergétique.

---

## 2. Objectifs de l'étude

L'étude vise à développer une approche structurée de l'analyse énergétique d'un bâtiment.

| Objectif | Description |
|---|---|
| Analyse énergétique | Comprendre la répartition des consommations entre les différents usages |
| Collecte des données | Organiser les relevés et les informations techniques du bâtiment |
| Suivi des performances | Définir des indicateurs permettant de comparer les consommations |
| Détection des écarts | Identifier les anomalies et les variations inhabituelles |
| Optimisation énergétique | Étudier les solutions permettant de réduire les consommations |
| Analyse économique | Estimer les économies potentielles et les temps de retour |
| Suivi numérique | Explorer les outils de visualisation et de gestion des données énergétiques |

Cette approche permet de relier les méthodes d'audit énergétique aux outils d'analyse de données et aux problématiques rencontrées dans l'exploitation des bâtiments.

---

## 3. Méthodologie de l'audit énergétique

La démarche étudiée repose sur cinq étapes principales, depuis la caractérisation du bâtiment jusqu'à l'identification des actions d'amélioration.

### Schéma de la démarche

![Démarche méthodologique de l'audit énergétique](documentation/illustrations/schema-demarche-audit.svg)

### Étape 1 — Caractérisation du bâtiment

La première étape consiste à définir le périmètre de l'étude et les caractéristiques techniques du bâtiment.

Les informations nécessaires comprennent notamment :

- La nature et la fonction du bâtiment.
- La surface utile et les surfaces chauffées.
- Les horaires et les conditions d'occupation.
- Les équipements de chauffage et de climatisation.
- Les systèmes de ventilation.
- Les installations d'éclairage.
- Les équipements électriques spécifiques.
- Les sources d'énergie utilisées.

Cette caractérisation permet de replacer les consommations dans leur contexte d'utilisation.

### Étape 2 — Collecte des données énergétiques

La collecte consiste à rassembler les informations nécessaires à l'établissement d'un bilan énergétique.

Les principales sources de données sont :

- Les factures d'électricité et d'énergie.
- Les relevés des compteurs.
- Les historiques de consommation.
- Les informations sur les équipements techniques.
- Les données météorologiques.
- Les horaires d'utilisation des installations.

Les données doivent être associées à des périodes identifiables afin de permettre leur comparaison.

Le fichier `documentation/MODELE_RELEVES.csv` fournit une structure de collecte destinée à organiser les relevés énergétiques.

### Étape 3 — Contrôle et préparation des données

La fiabilité des résultats dépend directement de la qualité des données utilisées.

L'analyse prévoit notamment :

- La vérification des unités de mesure.
- L'identification des valeurs manquantes.
- La détection des doublons.
- Le contrôle des périodes de relevé.
- La recherche de variations anormales.
- La distinction entre données mesurées et estimées.

Cette phase permet de constituer une base de données cohérente pour les calculs et les comparaisons.

### Étape 4 — Analyse des consommations

L'étude énergétique consiste à exploiter les données pour caractériser les principaux postes de consommation.

L'analyse peut être menée à différentes échelles :

- Journalière : variations de consommation et profils d'utilisation.
- Hebdomadaire : différences entre périodes d'occupation et d'inoccupation.
- Mensuelle : évolution des consommations au cours de l'année.
- Annuelle : bilan global et comparaison des performances.

Les résultats doivent être interprétés en tenant compte de l'occupation, des conditions climatiques et des usages du bâtiment.

### Étape 5 — Identification des actions d'amélioration

À partir des résultats, différentes solutions d'optimisation peuvent être étudiées.

Les actions sont évaluées selon leur potentiel énergétique, leur faisabilité technique, leur coût et leurs contraintes d'exploitation.

L'objectif est de construire un plan d'amélioration permettant de prioriser les interventions les plus pertinentes.

---

## 4. Analyse des consommations énergétiques

L'analyse repose sur plusieurs indicateurs permettant d'évaluer les performances et de comparer les évolutions de consommation.

### 4.1 Consommation énergétique annuelle

La consommation annuelle correspond à la somme des énergies consommées au cours de la période étudiée.

$$
E_{\mathrm{annuelle}} = \sum_{i=1}^{12} E_i
$$

Avec :

- **Eannuelle** : consommation annuelle (kWh).
- **Ei** : consommation du mois considéré (kWh).

Cet indicateur permet d'établir une référence énergétique pour le bâtiment.

### 4.2 Consommation énergétique surfacique

L'intensité énergétique permet de rapporter la consommation à la surface du bâtiment.

$$
I_E = \frac{E_{\mathrm{annuelle}}}{S}
$$

Avec :

- **IE** : intensité énergétique (kWh/m²/an).
- **Eannuelle** : consommation annuelle (kWh).
- **S** : surface de référence (m²).

Cet indicateur facilite les comparaisons, à condition d'utiliser des surfaces, des périmètres énergétiques et des usages comparables.

### 4.3 Évolution des consommations

La variation relative permet de comparer deux périodes :

$$
\Delta E(\%) =
\frac{E_2-E_1}{E_1}\times100
$$

Avec :

- **E1** : consommation de la période de référence.
- **E2** : consommation de la période étudiée.

Une variation positive indique une augmentation de la consommation, tandis qu'une variation négative indique une diminution.

L'analyse doit tenir compte des différences éventuelles d'occupation, de climat et de fonctionnement des équipements.

### 4.4 Estimation des économies d'énergie

Les économies potentielles sont estimées à partir d'une situation de référence et d'une situation améliorée.

$$
E_{\mathrm{économisée}} =
E_{\mathrm{référence}} -
E_{\mathrm{améliorée}}
$$

Le taux d'économie correspondant est :

$$
T_{\mathrm{économie}} =
\frac{E_{\mathrm{économisée}}}
{E_{\mathrm{référence}}}
\times100
$$

Ces relations servent à comparer des scénarios d'amélioration sur une même base de calcul.

### 4.5 Indicateurs de suivi

| Indicateur | Unité | Utilité |
|---|---|---|
| Consommation annuelle | kWh/an | Évaluer la consommation globale |
| Intensité énergétique | kWh/m²/an | Comparer les performances surfaciques |
| Consommation mensuelle | kWh/mois | Observer les variations saisonnières |
| Puissance maximale appelée | kW | Analyser les pointes de consommation |
| Coût énergétique | €/an | Évaluer les dépenses énergétiques |
| Économies potentielles | kWh/an | Estimer les gains d'une action |
| Taux d'économie | % | Comparer différents scénarios |
| Temps de retour simple | Années | Examiner l'intérêt économique d'un investissement |

Les indicateurs sont définis dans le cadre méthodologique. Leur calcul pour un bâtiment réel nécessite des données de consommation fiables et un périmètre clairement identifié.

---

## 5. Étude des principaux usages énergétiques

La compréhension des usages constitue une étape essentielle pour identifier les postes présentant un potentiel d'amélioration.

### 5.1 Éclairage

L'analyse de l'éclairage porte notamment sur :

- Les technologies de luminaires utilisées.
- Les puissances installées.
- Les durées de fonctionnement.
- Les niveaux d'éclairement nécessaires.
- Les possibilités de détection de présence.
- La programmation horaire.

Le remplacement de luminaires anciens par des équipements LED et l'amélioration de la commande peuvent constituer des pistes de réduction des consommations.

### 5.2 Chauffage, ventilation et climatisation

Les équipements thermiques représentent un poste important dans de nombreux bâtiments.

L'étude s'intéresse notamment :

- Aux conditions de régulation.
- Aux températures de consigne.
- Aux horaires de fonctionnement.
- Aux caractéristiques des systèmes installés.
- Aux performances des équipements.
- Aux possibilités d'optimisation de la ventilation.

L'analyse doit tenir compte du confort des occupants et des conditions climatiques.

### 5.3 Équipements électriques

Les consommations liées aux équipements électriques peuvent être étudiées à travers :

- Les puissances nominales.
- Les durées d'utilisation.
- Les consommations en veille.
- Les profils de fonctionnement.
- Les besoins réels des utilisateurs.

L'objectif est d'identifier les situations où la consommation pourrait être réduite sans dégrader le service rendu.

### 5.4 Enveloppe du bâtiment

L'enveloppe influence directement les besoins de chauffage et de refroidissement.

Les principaux éléments à examiner sont :

- L'isolation des murs et des toitures.
- Les caractéristiques des vitrages.
- Les infiltrations d'air.
- Les ponts thermiques.
- Les protections solaires.

Une analyse de l'enveloppe permet de compléter l'étude des équipements techniques et de mieux comprendre les besoins thermiques du bâtiment.

---

## 6. Visualisation et suivi des performances

Le suivi énergétique peut être facilité par l'utilisation d'interfaces regroupant les principales informations de consommation.

Le dossier comporte plusieurs maquettes illustrant les fonctionnalités d'un outil numérique de gestion de l'énergie.

Ces représentations permettent de présenter une organisation possible de l'information et les indicateurs utiles à l'exploitation d'un bâtiment.

Les valeurs affichées sont des données de démonstration.

### 6.1 Tableau de bord général

![Tableau de bord général des consommations énergétiques](documentation/illustrations/maquette-vue-ensemble.png)

Le tableau de bord général présente une vue synthétique des consommations et des principaux indicateurs énergétiques.

Une telle interface peut faciliter :

- La consultation des consommations.
- Le suivi des dépenses.
- L'identification des tendances.
- La comparaison des périodes.
- Le repérage d'éventuelles anomalies.

### 6.2 Gestion des relevés

![Interface de gestion des relevés énergétiques](documentation/illustrations/maquette-releves.png)

La gestion des relevés constitue un élément central du suivi énergétique.

L'interface illustre les fonctions de saisie, de consultation et d'organisation des données provenant des différents compteurs ou sources de mesure.

L'objectif est de disposer d'un historique exploitable pour l'analyse des consommations.

### 6.3 Analyse des tendances

![Analyse des consommations énergétiques](documentation/illustrations/maquette-analyse.png)

La visualisation des tendances permet de comparer les consommations dans le temps et d'identifier les périodes présentant des variations importantes.

L'analyse peut notamment porter sur :

- L'évolution mensuelle.
- La comparaison entre différentes périodes.
- Les consommations par usage.
- Les écarts par rapport à une référence.
- Les effets des changements de fonctionnement.

### 6.4 Suivi des actions d'amélioration

![Plan d'amélioration énergétique](documentation/illustrations/maquette-plan-action.png)

Le plan d'action permet d'organiser les mesures d'amélioration énergétique identifiées.

Une interface de suivi peut regrouper :

- La description des actions.
- Leur priorité.
- Les gains énergétiques estimés.
- Les investissements nécessaires.
- Le calendrier de mise en œuvre.
- Les résultats observés après intervention.

### 6.5 Organisation des données

![Organisation des données du suivi énergétique](documentation/illustrations/schema-organisation-donnees.svg)

Le schéma d'organisation présente une structure possible pour la collecte, le traitement et l'exploitation des données énergétiques.

Il met en relation les sources d'information, les opérations d'analyse et les outils de visualisation.

---

## 7. Étude des solutions d'amélioration énergétique

L'identification des actions d'amélioration constitue l'une des finalités de la démarche d'audit.

Les solutions peuvent concerner les équipements, la régulation, les conditions d'exploitation ou l'enveloppe du bâtiment.

### Exemples de mesures étudiées

| Domaine | Action envisageable | Objectif |
|---|---|---|
| Éclairage | Remplacement par des luminaires LED | Réduire la puissance installée |
| Éclairage | Détection de présence | Limiter les consommations inutiles |
| Chauffage | Optimisation des consignes | Adapter les besoins énergétiques |
| Ventilation | Programmation des horaires | Réduire les durées de fonctionnement |
| Climatisation | Amélioration de la régulation | Optimiser les périodes de fonctionnement |
| Équipements | Réduction des consommations en veille | Diminuer les consommations hors occupation |
| Enveloppe | Amélioration de l'isolation | Limiter les déperditions thermiques |
| Suivi énergétique | Mise en place d'indicateurs | Détecter et suivre les dérives |

Ces mesures représentent des pistes d'étude. Leur pertinence dépend des caractéristiques réelles du bâtiment.

### 7.1 Évaluation des gains énergétiques

L'estimation des économies repose sur une comparaison entre une situation initiale et une situation améliorée.

Pour un équipement électrique, une première estimation peut être réalisée par :

$$
E = \frac{P \times t}{1000}
$$

Avec :

- **E** : énergie consommée (kWh).
- **P** : puissance moyenne (W).
- **t** : durée de fonctionnement (h).

Cette relation permet notamment de comparer les consommations de différents équipements en fonction de leur puissance et de leur durée d'utilisation.

### 7.2 Évaluation économique

Les économies financières annuelles peuvent être estimées à partir des économies d'énergie et du coût unitaire de l'énergie.

$$
G_{\mathrm{annuel}} =
E_{\mathrm{économisée}}\times C_{\mathrm{énergie}}
$$

Avec :

- **Gannuel** : gain financier annuel estimé (€/an).
- **Eéconomisée** : énergie économisée (kWh/an).
- **Cénergie** : coût unitaire de l'énergie (€/kWh).

Le temps de retour simple d'un investissement peut être évalué par :

$$
TR = \frac{C_{\mathrm{investissement}}}
{G_{\mathrm{annuel}}}
$$

Cet indicateur fournit une première approche économique, sans intégrer l'actualisation, l'évolution des tarifs ni les coûts de maintenance.

### 7.3 Priorisation des actions

La sélection des mesures peut s'appuyer sur plusieurs critères :

1. Potentiel d'économie d'énergie.
2. Coût d'investissement.
3. Faisabilité technique.
4. Impact sur le confort des occupants.
5. Contraintes de maintenance.
6. Temps de retour estimé.
7. Possibilités de suivi des gains après intervention.

Une hiérarchisation de ces critères aide à construire un programme d'amélioration cohérent avec les objectifs et les moyens disponibles.

---

## 8. Organisation du projet

Le dépôt rassemble les ressources documentaires et les éléments logiciels utilisés pour étudier la méthodologie de suivi énergétique.

```text
Audit-energetique-batiment/
│
├── README.md
│
├── documentation/
│   ├── guide.html
│   ├── ETAT_DU_PROJET.md
│   ├── ORIGINE_ET_DROITS.md
│   ├── MODELE_RELEVES.csv
│   │
│   └── illustrations/
│       ├── schema-demarche-audit.svg
│       ├── schema-organisation-donnees.svg
│       ├── maquette-vue-ensemble.png
│       ├── maquette-releves.png
│       ├── maquette-analyse.png
│       └── maquette-plan-action.png
│
└── code_source_MyEMS/
    └── Éléments logiciels de MyEMS / EnerBat
```

### Description des ressources

| Ressource | Contenu |
|---|---|
| `README.md` | Présentation du projet et de la méthodologie |
| `documentation/guide.html` | Guide pédagogique consultable localement |
| `documentation/MODELE_RELEVES.csv` | Modèle de collecte des données énergétiques |
| `documentation/illustrations/` | Schémas méthodologiques et maquettes de suivi |
| `documentation/ETAT_DU_PROJET.md` | Inventaire des éléments disponibles |
| `documentation/ORIGINE_ET_DROITS.md` | Origine et conditions de réutilisation des ressources |
| `code_source_MyEMS/` | Base logicielle de référence pour l'étude des fonctionnalités d'un système de gestion énergétique |

---

## 9. Outils et technologies

Le dossier associe des méthodes d'analyse énergétique et des supports numériques de gestion des données.

| Outil ou technologie | Application |
|---|---|
| Tableurs et fichiers CSV | Structuration des relevés et calculs énergétiques |
| HTML | Consultation du guide pédagogique |
| SVG | Représentation des schémas méthodologiques |
| MyEMS | Référence logicielle pour l'étude du suivi énergétique |
| SQL | Structure et organisation des données dans les éléments logiciels fournis |
| Interfaces de suivi | Présentation des indicateurs et tableaux de bord |
| GitHub | Organisation et documentation du projet |

### Base logicielle 
.

notre site constitue une référence pour l'étude des systèmes de gestion énergétique et des fonctionnalités associées au suivi des consommations.

Les ressources conservées comprennent notamment des éléments d'administration et des scripts SQL.

Le code provient d'une base logicielle préexistante et ne correspond pas à un développement intégral réalisé par le groupe.

L'archive étant partielle, elle ne constitue pas une installation complète et directement opérationnelle du logiciel.


---

## 10. Consultation des documents

### Accès au guide pédagogique

Le guide HTML peut être consulté directement dans un navigateur, sans nécessiter de serveur web.

Depuis le dossier du projet, ouvrir :

`documentation/guide.html`

Le document présente la démarche d'audit et les principales étapes de l'analyse énergétique.

### Utilisation du modèle de relevés

Le fichier :

`documentation/MODELE_RELEVES.csv`

peut être ouvert dans Excel ou un autre tableur compatible CSV.

Il constitue un support de collecte des informations nécessaires à un bilan énergétique.

Les données doivent être renseignées à partir de mesures ou de documents techniques identifiables.

### Consultation des illustrations

Les schémas et maquettes sont accessibles dans :

`documentation/illustrations/`

Ils permettent de visualiser la méthode d'analyse et les fonctions envisagées pour le suivi énergétique.

---

## 11. Références techniques et méthodologiques

L'étude s'inscrit dans les principes généraux d'évaluation et d'amélioration de la performance énergétique des bâtiments.

Les références suivantes permettent d'approfondir la méthodologie :

- **NF EN 16247-1** : audits énergétiques, exigences générales.
- **NF EN 16247-2** : audits énergétiques appliqués aux bâtiments.
- **ISO 50001** : systèmes de management de l'énergie.
- **ISO 50006** : indicateurs de performance énergétique et situations énergétiques de référence.
- **ADEME** : ressources et méthodes relatives à l'efficacité énergétique.
- **MyEMS** : système open source de gestion et de suivi énergétique.

Les éditions et les exigences applicables doivent être précisées selon le contexte d'utilisation et le périmètre réel de l'étude.

---

## 12. Périmètre et traçabilité des ressources

Ce dépôt constitue un **support méthodologique et technique de préparation à un audit énergétique de bâtiment**.

Il réunit :

- Une démarche structurée d'analyse énergétique.
- Des méthodes de calcul des indicateurs.
- Un modèle de collecte de données.
- Des schémas explicatifs.
- Des maquettes d'interfaces de suivi.
- Des éléments logiciels de référence issus de MyEMS.

Les maquettes utilisent des valeurs fictives pour illustrer les fonctionnalités étudiées.

Le dossier ne présente donc pas ces illustrations comme des mesures réalisées sur un bâtiment réel ni comme les résultats d'un audit réglementaire achevé.

Les éléments du logiciel MyEMS restent distincts des contributions de l'équipe.

Cette organisation permet de présenter la démarche d'ingénierie tout en assurant la traçabilité des ressources mobilisées.

Pour davantage d'informations :

- [État du projet](documentation/ETAT_DU_PROJET.md)
- [Origine et droits des ressources](documentation/ORIGINE_ET_DROITS.md)

---

## 13. Compétences mobilisées

Ce projet permet d'aborder plusieurs domaines de l'ingénierie énergétique :

**Analyse énergétique**
- Compréhension des consommations d'un bâtiment.
- Définition d'indicateurs de performance.
- Analyse des variations et des écarts.
- Étude de scénarios d'économies d'énergie.

**Ingénierie du bâtiment**
- Analyse des équipements électriques et thermiques.
- Identification des usages énergétiques.
- Étude des pistes d'amélioration.
- Prise en compte des contraintes d'exploitation.

**Exploitation des données**
- Organisation des relevés.
- Contrôle de cohérence.
- Structuration des données énergétiques.
- Interprétation de tableaux de bord.

**Documentation technique**
- Structuration d'une démarche d'audit.
- Exploitation de ressources logicielles.
- Présentation des indicateurs.
- Organisation d'un dossier d'ingénierie.

Ces compétences sont en lien avec les activités des bureaux d'études en énergie, de l'efficacité énergétique des bâtiments et du management de l'énergie.

---

## 14. Équipe du projet

### Moustapha IBRAHIM DJAMA

Élève-ingénieur — ECAM-EPMI  
Spécialité ISE (Ingénieur en Système Électrique)

[Portfolio personnel](https://portfolio-eta-ten-t34s52rvq8.vercel.app/)

### Thomas DHUNARA

Élève-ingénieur — ECAM-EPMI

### Mariel FRESNEL

Élève-ingénieur — ECAM-EPMI

---

**ECAM-EPMI — Projet académique en ingénierie énergétique**

*Audit énergétique de bâtiment : analyse des consommations, indicateurs de performance et démarche d'optimisation énergétique.*
