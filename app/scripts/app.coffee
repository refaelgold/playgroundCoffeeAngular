"use strict"
app=angular.module("playgroundCoffeeAngularApp", [
  "ngCookies"
  "ngResource"
  "ngSanitize"
  "ngRoute"
])

app.config ($routeProvider) ->
  $routeProvider.when("/",
    templateUrl: "views/main.html"
    controller: "MainCtrl"
  ).otherwise redirectTo: "/"

app.filter "encodeURIComponent", ->
    window.encodeURIComponent
