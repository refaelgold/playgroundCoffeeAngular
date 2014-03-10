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
    templateUrl: "views/directive/directive.html"
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



#services
app.factory "usersServies", ->
  users = []
  users: users

