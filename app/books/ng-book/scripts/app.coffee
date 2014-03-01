"use strict"
app=angular.module("ngBookExamples", [
  "ngCookies"
  "ngResource"
  "ngSanitize"
  "ngRoute"
])


app.config ($routeProvider) ->
  $routeProvider.when("/",
    templateUrl: "views/main.html"
    controller: "DataBindCtrl"
  ).otherwise redirectTo: "/"

  $routeProvider.when("/bday",
    templateUrl: "views/bday.html"
    controller: "BirthdayCtrl"
  ).otherwise redirectTo: "/"



app.filter "encodeURIComponent", ->
    window.encodeURIComponent
