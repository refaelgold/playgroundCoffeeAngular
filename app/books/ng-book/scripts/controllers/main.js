// Generated by CoffeeScript 1.7.1
(function() {
  "use strict";
  angular.module("ngBookExamples").controller("mainCtrl", ["$scope", function($scope) {}]);

  angular.module("ngBookExamples").controller("DataBindCtrl", function($scope) {
    var updateClock;
    $scope.preson = {
      name: "nir",
      age: 28,
      career: "web Developer"
    };
    $scope.jsonClock = {
      now: new Date()
    };
    updateClock = function() {
      $scope.jsonClock.now = new Date();
    };
    setInterval((function() {
      $scope.$apply(updateClock);
    }), 1000);
    updateClock();
    $scope.jsonClock = {
      now: new Date()
    };
    updateClock = function() {
      $scope.jsonClock.now = new Date();
    };
    setInterval((function() {
      $scope.$apply(updateClock);
    }), 1000);
    updateClock();
    $scope.clock = {
      now: new Date()
    };
    updateClock = function() {
      $scope.clock.now = new Date();
    };
    setInterval((function() {
      $scope.$apply(updateClock);
    }), 1000);
    updateClock();
    $scope.counter = 0;
    $scope.addCounter = function(counter) {
      return $scope.counter++;
    };
    return $scope.despositCounter = function(counter) {
      if ($scope.counter > 0) {
        return $scope.counter--;
      } else {
        return console.log("cant get minus");
      }
    };
  });

  angular.module("ngBookExamples").controller("BirthdayCtrl", function($scope) {
    $scope.visibleForm = false;
    $scope.visibleJsonData = false;
    $scope.visibleBDays = false;
    $scope.bdays = [];
    $scope.lastItem = [];
    return $scope.newBirthday = function() {
      $scope.bdays.push({
        name: $scope.bdayname,
        date: $scope.bdaydate
      });
      $scope.lastItem = {
        name: $scope.bdayname,
        date: $scope.bdaydate
      };
      $scope.bdayname = "";
      $scope.bdaydate = "";
    };
  });

  angular.module("ngBookExamples").controller("MoreServiceScope", [
    "$scope", "$parse", "githubService", "$timeout", function($scope, $parse, githubService, $timeout) {
      var timeout;
      timeout = void 0;
      $scope.$watch("username", function(newUsername) {
        if (newUsername) {
          if (timeout) {
            $timeout.cancel(timeout);
          }
          timeout = $timeout(function() {
            return githubService.events(newUsername).success(function(data, status) {
              return $scope.events = data.data;
            }, 350);
          });
        }
        githubService.events(newUsername).success(function(data, status, headers) {
          return $scope.events = data.data;
        });
        return $scope.parsedExpr = 0;
      });
      $scope.giveUsSomeMath = function() {
        return $scope.$watch("expr", function(newVal, oldVal, scope) {
          var parseFun;
          if (newVal !== void 0) {
            parseFun = $parse(newVal);
            scope.parsedExpr = parseFun(scope);
          }
        });
      };
    }
  ]);

  angular.module("ngBookExamples").controller("FilterCrtl", [
    "$scope", "$filter", function($scope, $filter) {
      $scope.name = "Nir Goldman";
      $scope.makeLowerCase = function() {
        return $scope.name = $filter("lowercase")($scope.name);
      };
      $scope.makeUpperCase = function() {
        return $scope.name = $filter("uppercase")($scope.name);
      };
      $scope.makeCaplitalize = function() {
        return $scope.name = $filter("capitalize")($scope.name);
      };
      $scope.moneyNumInput = 100;
      $scope.MakeDollars = function() {
        return $scope.moneyNum = $filter("shekelToDollar")($scope.moneyNumInput);
      };
      return $scope.makeEuros = function() {
        return $scope.moneyNum = $filter("shekelToEuro")($scope.moneyNumInput);
      };
    }
  ]);

  angular.module("ngBookExamples").controller("FormCtrl", [
    "$scope", "usersServies", function($scope, usersServies) {
      $scope.users = usersServies.users;
      $scope.hideShowTrigFormTable = false;
      $scope.id = 0;
      $scope.submitForm = function(isValid) {
        if (isValid) {
          return $scope.addRow();
        }
      };
      $scope.addRow = function() {
        $scope.id++;
        $scope.users.push({
          name: $scope.user.name,
          username: $scope.user.username,
          email: $scope.user.email,
          id: $scope.id
        });
        return $scope.hideShowTrigFormTable = true;
      };
      return $scope.deleteRow = function(id) {
        console.log(id);
        console.log($scope.users);
        if ((id - 1) > 0) {
          return $scope.users.splice(id - 1, 1);
        } else {
          return $scope.users.splice(0, 1);
        }
      };
    }
  ]);

  angular.module("ngBookExamples").controller("directiveCtrl", [
    "$scope", "$timeout", function($scope, $timeout) {
      $scope.checkBoxValue = true;
      $scope.readOnlyProp = true;
      $scope.isDisabled = true;
      $scope.selectValue = true;
      $scope.linkImage = "http://nuclearpixel.com/content/icons/2010-02-09_stellar_icons_from_space_from_2005/earth_128.png";
      $scope.linkValue = "http://www.nirgoldman.com/";
      $scope.items = ["selector", "ice_cream", "spinch"];
      $scope.selection = $scope.items[0];
      $scope.people = [
        {
          name: "Ari",
          city: "San Francisco"
        }, {
          name: "Erik",
          city: "Seattle"
        }, {
          name: "Nir",
          city: "TLV"
        }, {
          name: "Pitter-pen",
          city: "Neverland"
        }, {
          name: "Alice",
          city: "Wonderland"
        }
      ];
      $scope.templates = [
        {
          name: "template1.html",
          url: "views/directive/temp001.html"
        }, {
          name: "template2.html",
          url: "views/directive/temp002.html"
        }
      ];
      $scope.template = $scope.templates[0];
      $scope.fields = [
        {
          placeholder: "Username",
          isRequired: true
        }, {
          placeholder: "Password",
          isRequired: true
        }, {
          placeholder: "Email (optional)",
          isRequired: false
        }
      ];
      $scope.submitForm = function() {
        alert("it works!");
      };
      $scope.cities = [
        {
          name: "Seattle"
        }, {
          name: "San Francisco"
        }, {
          name: "Chicago"
        }, {
          name: "New York"
        }, {
          name: "Boston"
        }
      ];
      $scope.equation = {};
      $scope.change = function() {
        return $scope.equation.output = Number($scope.equation.x) + 2;
      };
      return;
      $timeout(function() {
        return $scope.isDisabled = false;
      }, 5000);
    }
  ]);

  angular.module("ngBookExamples").controller("DICtrl", [
    "$scope", "greeter", function($scope, greeter) {
      return $scope.sayHello = function() {
        greeter.greet_mueslem("Nir");
        greeter.greet_jewish("Nir");
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=main.map
