"use strict"

#first controller of starting
angular.module("ngBookExamples").controller "DataBindCtrl", ($scope ) ->
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





#third controller of Bdays
# give us some parse
angular.module("ngBookExamples").controller "MoreServiceScope", [
  "$scope"
  "$parse"
  ($scope, $parse) ->
    $scope.parsedExpr=0
    $scope.giveUsSomeMath = ->
      $scope.$watch "expr", (newVal, oldVal, scope) ->
        if newVal isnt undefined



          # Let's set up our parseFun with the expression
          parseFun = $parse(newVal)

          # Get the value of the parsed expression, set it on the scope for output
          scope.parsedExpr = parseFun(scope)


        return
    return
]





#details
#1.scope is the name of the vars for define(must have in all controllers)
#2.using filter has come from the lang for filters to use
angular.module("ngBookExamples").controller "FilterCrtl", [
  "$scope"
  "$filter"
  ($scope, $filter) ->
    $scope.name="Nir Goldman"
    $scope.makeLowerCase = ->
      $scope.name=$filter("lowercase")($scope.name)
    $scope.makeUpperCase = ->
      $scope.name=$filter("uppercase")($scope.name)
    $scope.makeCaplitalize = ->
      $scope.name=$filter("capitalize")($scope.name)

    $scope.moneyNumInput=100
    $scope.MakeDollars = ->
      $scope.moneyNum=$filter("shekelToDollar")($scope.moneyNumInput)
    $scope.makeEuros = ->
      $scope.moneyNum=$filter("shekelToEuro")($scope.moneyNumInput)
]




angular.module("ngBookExamples").controller "FormCtrl", [
  "$scope"
  ($scope) ->

    $scope.users = []#array of all users
    $scope.hideShowTrigFormTable=false#hide the table on the first time
    $scope.id=0


    # function to submit the form after all validation has occurred
    $scope.submitForm = (isValid) ->
      $scope.addRow() if isValid


    $scope.addRow=()->
      $scope.id++
      #enter all the users to array
      $scope.users.push
        name: $scope.user.name
        username: $scope.user.username
        email: $scope.user.email
        id:$scope.id
      $scope.hideShowTrigFormTable=true


    $scope.deleteRow = (id) ->
      console.log id
      console.log $scope.users
      if ((id-1)>0)
        $scope.users.splice id-1, 1
      else
        $scope.users.splice 0, 1
]
