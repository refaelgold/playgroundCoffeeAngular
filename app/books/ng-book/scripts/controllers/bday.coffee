angular.module("ngBookExamples").controller "BirthdayCtrl", ($scope) ->
  # Start as not visible but when button is tapped it will show as true
  $scope.visibleForm = false

  $scope.visibleJsonData = false

  #use for Bday Bdays
  $scope.visibleBDays = false

  # Create the array to hold the list of Birthdays
  $scope.bdays = []
  $scope.lastItem = []

  # Create the function to push the data into the "bdays" array
  $scope.newBirthday = ->


    $scope.bdays.push
      name: $scope.bdayname
      date: $scope.bdaydate

    $scope.lastItem=
      name: $scope.bdayname
      date: $scope.bdaydate


    $scope.bdayname = ""
    $scope.bdaydate = ""
    return


