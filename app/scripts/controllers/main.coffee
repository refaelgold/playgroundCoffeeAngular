"use strict"
angular.module("playgroundCoffeeAngularApp").controller "MainCtrl", ($scope) ->

  $scope.preson =
    name: "nir"
    age: 28,
    career:"web Developer",



  $scope.jsonClock = now: new Date()
  updateClock = ->
    $scope.jsonClock.now = new Date()
    return

  setInterval (->
    $scope.$apply updateClock
    return
  ), 1000
  updateClock()



#  parse json clock
  $scope.jsonClock = now: new Date()
  updateClock = ->
    $scope.jsonClock.now = new Date()
    return

  setInterval (->
    $scope.$apply updateClock
    return
  ), 1000
  updateClock()





# clock with format
  $scope.clock = now: new Date()
  updateClock = ->
    $scope.clock.now = new Date()
    return

  setInterval (->
    $scope.$apply updateClock
    return
  ), 1000
  updateClock()



  # Start as not visible but when button is tapped it will show as true
  $scope.visible = false
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