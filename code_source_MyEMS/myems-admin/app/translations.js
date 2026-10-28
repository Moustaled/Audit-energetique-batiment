/** Interface française, y compris après une ancienne session dans une autre langue. */
function config($translateProvider) {
  var bundles = window.enerbatAdminTranslations || {};
  $translateProvider.translations('fr', bundles.fr || {});
  $translateProvider.preferredLanguage('fr');
  $translateProvider.fallbackLanguage('fr');
}
angular.module('inspinia').config(config);
