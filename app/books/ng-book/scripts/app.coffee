"use strict"


#libs
app=angular.module("ngBookExamples", [
  "ngCookies"
  "ngResource"
  "ngSanitize"
  "ngRoute"
  "ngAnimate"

])



#route
app.config ($routeProvider,$locationProvider) ->
  $routeProvider.when("/bind",
    templateUrl: "views/data_bind.html"
    controller: "DataBindCtrl"
  ).otherwise redirectTo: "/"


  $routeProvider.when("/",
      templateUrl: "views/main.html"
      controller: "mainCtrl"
    ).otherwise redirectTo: "/"




  $routeProvider.when("/bday",
    templateUrl: "views/bday.html"
    controller: "BirthdayCtrl"
  ).otherwise redirectTo: "/"

  $routeProvider.when("/services",
    templateUrl: "views/services.html"
    controller: "MoreServiceScope"
  ).otherwise redirectTo: "/"

  $routeProvider.when("/filters",
    templateUrl: "views/filters.html"
    controller: "FilterCrtl"
  ).otherwise redirectTo: "/"

  $routeProvider.when("/form",
    templateUrl: "views/form.html"
    controller: "FormCtrl"
  ).otherwise redirectTo: "/"


  $routeProvider.when("/directive",
    templateUrl: "views/directive/directive.html"
    controller: "directiveCtrl"
  ).otherwise redirectTo: "/"

  $routeProvider.when("/di",
    templateUrl: "views/di.html"
    controller: "DICtrl"
  ).otherwise redirectTo: "/"

#  $locationProvider.html5Mode(true);
#  $locationProvider.hasPrefix("!");






#filters
app.filter "encodeURIComponent", ->
  window.encodeURIComponent

app.filter "capitalize", ->
  (input) ->
    (if input then input[0].toUpperCase()+input.slice(1).toLowerCase())

app.filter "shekelToDollar", ->
  (coin) ->
    (if coin then coin*3.4880)

app.filter "shekelToEuro", ->
  (coin) ->
    (if coin then coin*4.7998)
###############################


#START of Directive
app.directive "myDirective", ->
  restrict: 'E',
  replace: true,
  template: "<h1>this is an element</h1>"




app.directive "commentMe", ->
  restrict: "EAC",
  replace: true,
  template: "<h1>this is a test</h1>"




app.directive "row", ->
  restrict: 'A',
  replace: false,
  template: '<td>' + '<span>{{user.id}}</span>' + '</td>'+'<td>' + '<span>{{user.username}}</span>' + '</td>'+'<td>'+'<span>{{user.name}}</span>' + '</td>'+'<td>'+'<span>{{user.email}}</span>' + '</td><td>'+'<span ng-click="deleteRow(user.id)">delete</span></td>'



app.directive "myLink", ->
  replace: true
  scope:
    myUrl: "@"
    myLinkText: "@"
  template:'<a href="{{myUrl}}">{{myLinkText}}</span>'

app.directive "myLinkTester", ->
  restrict: "A"
  replace: true
  scope:
    customUrlAddress: "=customUrlAddress"
    CustomLinkText: "=linkGo"
  template: "<a href={{customUrlAddress}}>{{linkGo}}</a>"
#END of Directives







#factories

app.factory "greeter", ->
  greet_man: (msg) ->
    console.log "hello mr "+msg
    return
  greet_woman: (msg) ->
    console.log "hello misses "+msg
    return
  greet_jewish: (msg) ->
    console.log "salom "+msg
    return
  greet_mueslem: (msg) ->
    console.log "salam halukum "+msg
    return




app.factory "usersServies", ->
  users = []
  users: users



#services


#github services
app.factory "githubService", ($http) ->
  githubUrl = "https://api.github.com"
  runUserRequest = (username, path) ->

    # Return the promise from the $http service
    # that calls the Github API using JSONP
    $http
      method: "JSONP"
      url: githubUrl + "/users/" + username + "/" + path + "?callback=JSON_CALLBACK"



  # Return the service object with a single function
  # events
  events: (username) ->
    runUserRequest username, "events"



#// Return the service object with a single function
#// events
#return {
#events: function(username) {
#return runUserRequest(username, 'events');
#}
#};



