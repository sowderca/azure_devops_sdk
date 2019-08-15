import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for PermissionEvaluationBatch
void main() {
  var instance = PermissionEvaluationBatch();

  group('test PermissionEvaluationBatch', () {
    // True if members of the Administrators group should always pass the security check.
    // bool alwaysAllowAdministrators (default value: null)
    test('to test the property `alwaysAllowAdministrators`', () async {
      // TODO
    });

    // Array of permission evaluations to evaluate.
    // List<PermissionEvaluation> evaluations (default value: [])
    test('to test the property `evaluations`', () async {
      // TODO
    });


  });

}
