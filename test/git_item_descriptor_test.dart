import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitItemDescriptor
void main() {
  var instance = GitItemDescriptor();

  group('test GitItemDescriptor', () {
    // Path to item
    // String path (default value: null)
    test('to test the property `path`', () async {
      // TODO
    });

    // Specifies whether to include children (OneLevel), all descendants (Full), or None
    // String recursionLevel (default value: null)
    test('to test the property `recursionLevel`', () async {
      // TODO
    });

    // Version string (interpretation based on VersionType defined in subclass
    // String version (default value: null)
    test('to test the property `version`', () async {
      // TODO
    });

    // Version modifiers (e.g. previous)
    // String versionOptions (default value: null)
    test('to test the property `versionOptions`', () async {
      // TODO
    });

    // How to interpret version (branch,tag,commit)
    // String versionType (default value: null)
    test('to test the property `versionType`', () async {
      // TODO
    });


  });

}
