# open this example and type person.name into the test field
angular.module("ngBookExamples").controller "MoreServiceScope", [
  "$scope"
  "$parse"
  ($scope, $parse) ->
    console.log "test"
    $scope.$watch "expr", (newVal, oldVal, scope) ->
      if newVal isnt oldVal

        # Let's set up our parseFun with the expression
        parseFun = $parse(newVal)

        # Get the value of the parsed expression, set it on the scope for output
        scope.parsedExpr = parseFun(scope)
      return

]