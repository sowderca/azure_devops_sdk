import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for AcquisitionOperation
void main() {
  var instance = AcquisitionOperation();

  group('test AcquisitionOperation', () {
    // State of the the AcquisitionOperation for the current user
    // String operationState (default value: null)
    test('to test the property `operationState`', () async {
      // TODO
    });

    // AcquisitionOperationType: install, request, buy, etc...
    // String operationType (default value: null)
    test('to test the property `operationType`', () async {
      // TODO
    });

    // Optional reason to justify current state. Typically used with Disallow state.
    // String reason (default value: null)
    test('to test the property `reason`', () async {
      // TODO
    });

    // List of reasons indicating why the operation is not allowed.
    // List<AcquisitionOperationDisallowReason> reasons (default value: [])
    test('to test the property `reasons`', () async {
      // TODO
    });


  });

}
