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