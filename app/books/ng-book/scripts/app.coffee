"use strict"


#libs
app=angular.module("ngBookExamples", [
  "ngCookies"
  "ngResource"
  "ngSanitize"
  "ngRoute"

])



#route
app.config ($routeProvider) ->
  $routeProvider.when("/",
    templateUrl: "views/main.html"
    controller: "DataBindCtrl"
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
    templateUrl: "views/directive.html"
    controller: "directiveCtrl"
  ).otherwise redirectTo: "/"









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




#directive
#app.directive "myDirective", ->
#  restrict: "E"
#  replace: true,
#  template: "<h1>test</h1>"
#
#
#

app.directive "row", ->
  replace: true,
  template: '<td>' + '<span>{{user.id}}</span>' + '</td>'+'<td>' + '<span>{{user.username}}</span>' + '</td>'+'<td>'+'<span>{{user.name}}</span>' + '</td>'+'<td>'+'<span>{{user.email}}</span>' + '</td><td>'+'<span ng-click="deleteRow(user.id)">delete</span></td>'





#services
app.factory "usersServies", ->
  users = []
  users: users

