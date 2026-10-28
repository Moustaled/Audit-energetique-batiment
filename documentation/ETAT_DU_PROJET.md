# État du projet et utilisation

## Ce qui peut être ouvert immédiatement

- `README.md` : présentation du dossier, schémas et maquettes.
- `documentation/guide.html` : guide explicatif autonome, à ouvrir directement dans un navigateur.
- `documentation/MODELE_RELEVES.csv` : trame vide à renseigner dans Excel ou un tableur.
- Les PNG et SVG dans `documentation/illustrations/` : supports pédagogiques.

## Ce que contient le code préexistant

Le sous-dossier `code_source_MyEMS/myems-admin/` contient des scripts et ressources d’une interface d’administration AngularJS. Le sous-dossier `code_source_MyEMS/database/` conserve les scripts SQL d’installation, de mise à niveau et un jeu de démonstration français.

**Limite vérifiée :** les modèles HTML attendus par `myems-admin/app/config.router.js` dans le répertoire `views/` ne sont pas présents, et le serveur API (`myems-api`) n’est pas fourni. La partie application ne peut donc pas être annoncée comme opérationnelle à partir de cette seule archive.

## Comment travailler sur un audit réel

1. Définir le bâtiment, son usage, la surface et la période d’étude.
2. Remplir `MODELE_RELEVES.csv` avec des données réelles et leurs sources.
3. Contrôler les kWh, les m³, les dates et les valeurs atypiques.
4. Calculer des indicateurs comparables et produire les graphiques à partir des données saisies.
5. Proposer des actions et en préciser les hypothèses, coûts, gains et incertitudes.

Ne pas réutiliser les chiffres des maquettes comme des données d’audit.

## Vérifications techniques effectuées sur l'archive préparée

- Présence des images référencées par le README et le guide : contrôlée.
- Cohérence des chemins documentaires après réorganisation : contrôlée.
- Arborescence interne des scripts de l’administration : préservée.
- Présence de la licence d’origine MyEMS : rétablie à titre informatif.
- Exécution de l’application complète, connexions SQL et API : **non testées**, composants manquants.

Les noms techniques (`myems-admin`, `database`, `.js`, `.sql`, fichiers de bibliothèques) ne sont pas traduits : leur modification risquerait de rendre le code inutilisable.
