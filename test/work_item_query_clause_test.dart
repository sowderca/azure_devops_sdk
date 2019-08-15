import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for WorkItemQueryClause
void main() {
  var instance = WorkItemQueryClause();

  group('test WorkItemQueryClause', () {
    // Child clauses if the current clause is a logical operator
    // List<WorkItemQueryClause> clauses (default value: [])
    test('to test the property `clauses`', () async {
      // TODO
    });

    // WorkItemFieldReference field (default value: null)
    test('to test the property `field`', () async {
      // TODO
    });

    // WorkItemFieldReference fieldValue (default value: null)
    test('to test the property `fieldValue`', () async {
      // TODO
    });

    // Determines if this is a field to field comparison
    // bool isFieldValue (default value: null)
    test('to test the property `isFieldValue`', () async {
      // TODO
    });

    // Logical operator separating the condition clause
    // String logicalOperator (default value: null)
    test('to test the property `logicalOperator`', () async {
      // TODO
    });

    // WorkItemFieldOperation operator_ (default value: null)
    test('to test the property `operator_`', () async {
      // TODO
    });

    // Right side of the condition when a field to value comparison
    // String value (default value: null)
    test('to test the property `value`', () async {
      // TODO
    });


  });

}
