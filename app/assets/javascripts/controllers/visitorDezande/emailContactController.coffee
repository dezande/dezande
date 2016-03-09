angular.module 'visitorDezande'
  .controller 'emailContactController', [
      '$scope'
      'Visitor'
      ($scope, Visitor) ->
        $scope.masterVisitor = []

        $scope.save = ()->
          Visitor.save($scope.contact).$promise.then (visitor) ->
            $scope.message = visitor.message
            $scope.masterVisitor = [
              $scope.contact
              visitor
            ]

        $scope.reset = ->
          $scope.masterVisitor = angular.copy $scope.masterVisitor

        $scope.reset
    ]
