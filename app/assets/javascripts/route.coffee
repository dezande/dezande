angular.module 'adminDezande'
  .config([
    '$routeProvider'
    ($routeProvider) ->
      $routeProvider
        .when '/',
          templateUrl: 'templates/pages/index.html'
        .when '/skills',
          templateUrl: 'templates/pages/skills.html'
        .when '/skills/new',
          templateUrl: 'templates/pages/skills_new.html'
        .otherwise {redirectTo: '/'}
  ])
