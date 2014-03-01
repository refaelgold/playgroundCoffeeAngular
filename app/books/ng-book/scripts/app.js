// Generated by CoffeeScript 1.7.1
(function() {
  "use strict";
  var app;

  app = angular.module("ngBookExamples", ["ngCookies", "ngResource", "ngSanitize", "ngRoute"]);

  app.config(function($routeProvider) {
    $routeProvider.when("/", {
      templateUrl: "views/main.html",
      controller: "DataBindCtrl"
    }).otherwise({
      redirectTo: "/"
    });
    return $routeProvider.when("/bday", {
      templateUrl: "views/bday.html",
      controller: "BirthdayCtrl"
    }).otherwise({
      redirectTo: "/"
    });
  });

  app.filter("encodeURIComponent", function() {
    return window.encodeURIComponent;
  });

}).call(this);

//# sourceMappingURL=app.map