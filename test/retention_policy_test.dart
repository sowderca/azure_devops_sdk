import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for RetentionPolicy
void main() {
  var instance = RetentionPolicy();

  group('test RetentionPolicy', () {
    // List<String> artifacts (default value: [])
    test('to test the property `artifacts`', () async {
      // TODO
    });

    // List<String> artifactTypesToDelete (default value: [])
    test('to test the property `artifactTypesToDelete`', () async {
      // TODO
    });

    // List<String> branches (default value: [])
    test('to test the property `branches`', () async {
      // TODO
    });

    // The number of days to keep builds.
    // int daysToKeep (default value: null)
    test('to test the property `daysToKeep`', () async {
      // TODO
    });

    // Indicates whether the build record itself should be deleted.
    // bool deleteBuildRecord (default value: null)
    test('to test the property `deleteBuildRecord`', () async {
      // TODO
    });

    // Indicates whether to delete test results associated with the build.
    // bool deleteTestResults (default value: null)
    test('to test the property `deleteTestResults`', () async {
      // TODO
    });

    // The minimum number of builds to keep.
    // int minimumToKeep (default value: null)
    test('to test the property `minimumToKeep`', () async {
      // TODO
    });


  });

}
