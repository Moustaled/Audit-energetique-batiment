# Installation et limites

## Consultation de la documentation

Ouvrir `guide-fr.html` dans un navigateur. Ce guide fonctionne localement sans connexion, sans service externe et sans compte.

## Administration

Le fichier `enerbat-admin/index.html` charge une application AngularJS. Les routes demandent des fichiers sous `views/` qui ne sont pas fournis. L’API attendue est `/api/` sur le même serveur ; elle n’est pas incluse.

Pour une installation fonctionnelle, fournir les modèles HTML et les services correspondant exactement à cette version, configurer la base de données et le proxy `/api/`, puis tester connexion, compteurs, droits et enregistrement. Ne pas importer les scripts SQL dans une base existante sans sauvegarde.

## Vérifications réalisées

La vérification locale contrôle la syntaxe du français et sa sélection, les liens des deux README et du guide, les schémas SVG ainsi que la conservation des licences. Elle ne remplace pas les essais de l’application complète, impossible à lancer avec les composants absents.
