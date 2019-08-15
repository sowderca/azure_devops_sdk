import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for CloneOperationInformation
void main() {
  var instance = CloneOperationInformation();

  group('test CloneOperationInformation', () {
    // CloneStatistics cloneStatistics (default value: null)
    test('to test the property `cloneStatistics`', () async {
      // TODO
    });

    // If the operation is complete, the DateTime of completion. If operation is not complete, this is DateTime.MaxValue
    // DateTime completionDate (default value: null)
    test('to test the property `completionDate`', () async {
      // TODO
    });

    // DateTime when the operation was started
    // DateTime creationDate (default value: null)
    test('to test the property `creationDate`', () async {
      // TODO
    });

    // ShallowReference destinationObject (default value: null)
    test('to test the property `destinationObject`', () async {
      // TODO
    });

    // ShallowReference destinationPlan (default value: null)
    test('to test the property `destinationPlan`', () async {
      // TODO
    });

    // ShallowReference destinationProject (default value: null)
    test('to test the property `destinationProject`', () async {
      // TODO
    });

    // If the operation has Failed, Message contains the reason for failure. Null otherwise.
    // String message (default value: null)
    test('to test the property `message`', () async {
      // TODO
    });

    // The ID of the operation
    // int opId (default value: null)
    test('to test the property `opId`', () async {
      // TODO
    });

    // The type of the object generated as a result of the Clone operation
    // String resultObjectType (default value: null)
    test('to test the property `resultObjectType`', () async {
      // TODO
    });

    // ShallowReference sourceObject (default value: null)
    test('to test the property `sourceObject`', () async {
      // TODO
    });

    // ShallowReference sourcePlan (default value: null)
    test('to test the property `sourcePlan`', () async {
      // TODO
    });

    // ShallowReference sourceProject (default value: null)
    test('to test the property `sourceProject`', () async {
      // TODO
    });

    // Current state of the operation. When State reaches Suceeded or Failed, the operation is complete
    // String state (default value: null)
    test('to test the property `state`', () async {
      // TODO
    });

    // Url for getting the clone information
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });


  });

}
