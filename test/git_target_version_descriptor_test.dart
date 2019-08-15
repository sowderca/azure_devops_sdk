import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitTargetVersionDescriptor
void main() {
  var instance = GitTargetVersionDescriptor();

  group('test GitTargetVersionDescriptor', () {
    // Version string identifier (name of tag/branch, SHA1 of commit)
    // String version (default value: null)
    test('to test the property `version`', () async {
      // TODO
    });

    // Version options - Specify additional modifiers to version (e.g Previous)
    // String versionOptions (default value: null)
    test('to test the property `versionOptions`', () async {
      // TODO
    });

    // Version type (branch, tag, or commit). Determines how Id is interpreted
    // String versionType (default value: null)
    test('to test the property `versionType`', () async {
      // TODO
    });


  });

}
