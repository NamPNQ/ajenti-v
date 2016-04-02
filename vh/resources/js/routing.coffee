angular.module('ajenti.vh').config ($routeProvider) ->
    $routeProvider.when '/view/websites',
        templateUrl: '/ajenti-vh:resources/partial/index.html'
        controller: 'VhIndexController'
