angular.module 'visitorDezande'
  .factory 'Visitor', [
    '$resource'
    ($resource) ->
      $resource '/homepage.json', null, 'update': method: 'POST'
  ]
