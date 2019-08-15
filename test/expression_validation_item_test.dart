import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ExpressionValidationItem
void main() {
  var instance = ExpressionValidationItem();

  group('test ExpressionValidationItem', () {
    // Tells whether the current input is valid or not
    // bool isValid (default value: null)
    test('to test the property `isValid`', () async {
      // TODO
    });

    // Reason for input validation failure
    // String reason (default value: null)
    test('to test the property `reason`', () async {
      // TODO
    });

    // Type of validation item
    // String type (default value: null)
    test('to test the property `type`', () async {
      // TODO
    });

    // Value to validate. The conditional expression to validate for the input for \"expression\" type Eg:eq(variables['Build.SourceBranch'], 'refs/heads/master');eq(value, 'refs/heads/master')
    // String value (default value: null)
    test('to test the property `value`', () async {
      // TODO
    });


  });

}
