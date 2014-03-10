// Generated by CoffeeScript 1.7.1
(function() {
  "use strict";
  var app;

  app = angular.module("ngBookExamples", ["ngCookies", "ngResource", "ngSanitize", "ngRoute", "ngAnimate"]);

  app.config(function($routeProvider) {
    $routeProvider.when("/", {
      templateUrl: "views/main.html",
      controller: "DataBindCtrl"
    }).otherwise({
      redirectTo: "/"
    });
    $routeProvider.when("/bday", {
      templateUrl: "views/bday.html",
      controller: "BirthdayCtrl"
    }).otherwise({
      redirectTo: "/"
    });
    $routeProvider.when("/services", {
      templateUrl: "views/services.html",
      controller: "MoreServiceScope"
    }).otherwise({
      redirectTo: "/"
    });
    $routeProvider.when("/filters", {
      templateUrl: "views/filters.html",
      controller: "FilterCrtl"
    }).otherwise({
      redirectTo: "/"
    });
    $routeProvider.when("/form", {
      templateUrl: "views/form.html",
      controller: "FormCtrl"
    }).otherwise({
      redirectTo: "/"
    });
    return $routeProvider.when("/directive", {
      templateUrl: "views/directive/directive.html",
      controller: "directiveCtrl"
    }).otherwise({
      redirectTo: "/"
    });
  });

  app.filter("encodeURIComponent", function() {
    return window.encodeURIComponent;
  });

  app.filter("capitalize", function() {
    return function(input) {
      if (input) {
        return input[0].toUpperCase() + input.slice(1).toLowerCase();
      }
    };
  });

  app.filter("shekelToDollar", function() {
    return function(coin) {
      if (coin) {
        return coin * 3.4880;
      }
    };
  });

  app.filter("shekelToEuro", function() {
    return function(coin) {
      if (coin) {
        return coin * 4.7998;
      }
    };
  });

  app.directive("myDirective", function() {
    return {
      restrict: 'E',
      replace: true,
      template: "<h1>this is an element</h1>"
    };
  });

  app.directive("commentMe", function() {
    return {
      restrict: "EAC",
      replace: true,
      template: "<h1>this is a test</h1>"
    };
  });

  app.directive("row", function() {
    return {
      restrict: 'A',
      replace: false,
      template: '<td>' + '<span>{{user.id}}</span>' + '</td>' + '<td>' + '<span>{{user.username}}</span>' + '</td>' + '<td>' + '<span>{{user.name}}</span>' + '</td>' + '<td>' + '<span>{{user.email}}</span>' + '</td><td>' + '<span ng-click="deleteRow(user.id)">delete</span></td>'
    };
  });

  app.directive("myLink", function() {
    return {
      replace: true,
      scope: {
        myUrl: "@",
        myLinkText: "@"
      },
      template: '<a href="{{myUrl}}">{{myLinkText}}</span>'
    };
  });

  app.directive("myLinkTester", function() {
    return {
      restrict: "A",
      replace: true,
      scope: {
        customUrlAddress: "=customUrlAddress",
        CustomLinkText: "=linkGo"
      },
      template: "<a href={{customUrlAddress}}>{{linkGo}}</a>"
    };
  });

  app.factory("usersServies", function() {
    var users;
    users = [];
    return {
      users: users
    };
  });

}).call(this);

//# sourceMappingURL=app.map
