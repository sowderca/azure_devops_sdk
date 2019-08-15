import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for CloneOptions
void main() {
  var instance = CloneOptions();

  group('test CloneOptions', () {
    // If set to true requirements will be cloned
    // bool cloneRequirements (default value: null)
    test('to test the property `cloneRequirements`', () async {
      // TODO
    });

    // copy all suites from a source plan
    // bool copyAllSuites (default value: null)
    test('to test the property `copyAllSuites`', () async {
      // TODO
    });

    // copy ancestor hierarchy
    // bool copyAncestorHierarchy (default value: null)
    test('to test the property `copyAncestorHierarchy`', () async {
      // TODO
    });

    // Name of the workitem type of the clone
    // String destinationWorkItemType (default value: null)
    test('to test the property `destinationWorkItemType`', () async {
      // TODO
    });

    // Key value pairs where the key value is overridden by the value.
    // Map<String, String> overrideParameters (default value: {})
    test('to test the property `overrideParameters`', () async {
      // TODO
    });

    // Comment on the link that will link the new clone  test case to the original Set null for no comment
    // String relatedLinkComment (default value: null)
    test('to test the property `relatedLinkComment`', () async {
      // TODO
    });


  });

}
