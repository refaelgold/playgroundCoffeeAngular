// Generated by CoffeeScript 1.7.1
(function() {
  angular.module("ngBookExamples").controller("BirthdayCtrl", function($scope) {
    $scope.visibleForm = false;
    $scope.visibleJsonData = false;
    $scope.visibleBDays = false;
    $scope.bdays = [];
    $scope.lastItem = [];
    return $scope.newBirthday = function() {
      $scope.bdays.push({
        name: $scope.bdayname,
        date: $scope.bdaydate
      });
      $scope.lastItem = {
        name: $scope.bdayname,
        date: $scope.bdaydate
      };
      $scope.bdayname = "";
      $scope.bdaydate = "";
    };
  });

}).call(this);

//# sourceMappingURL=bday.map