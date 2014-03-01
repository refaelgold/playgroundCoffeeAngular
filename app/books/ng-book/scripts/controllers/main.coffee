"use strict"

#first controller of starting
angular.module("ngBookExamples").controller "DataBindCtrl", ($scope) ->
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


  $scope.counter=0
  $scope.addCounter=(counter)->
    $scope.counter++
  $scope.despositCounter=(counter)->
    if $scope.counter > 0
      $scope.counter--
    else
      console.log "cant get minus"





#second controller of Bdays
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


