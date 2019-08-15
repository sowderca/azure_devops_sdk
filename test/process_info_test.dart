import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ProcessInfo
void main() {
  var instance = ProcessInfo();

  group('test ProcessInfo', () {
    // Indicates the type of customization on this process. System Process is default process. Inherited Process is modified process that was System process before.
    // String customizationType (default value: null)
    test('to test the property `customizationType`', () async {
      // TODO
    });

    // Description of the process.
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // Is the process default.
    // bool isDefault (default value: null)
    test('to test the property `isDefault`', () async {
      // TODO
    });

    // Is the process enabled.
    // bool isEnabled (default value: null)
    test('to test the property `isEnabled`', () async {
      // TODO
    });

    // Name of the process.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // ID of the parent process.
    // String parentProcessTypeId (default value: null)
    test('to test the property `parentProcessTypeId`', () async {
      // TODO
    });

    // Projects in this process to which the user is subscribed to.
    // List<ProjectReference> projects (default value: [])
    test('to test the property `projects`', () async {
      // TODO
    });

    // Reference name of the process.
    // String referenceName (default value: null)
    test('to test the property `referenceName`', () async {
      // TODO
    });

    // The ID of the process.
    // String typeId (default value: null)
    test('to test the property `typeId`', () async {
      // TODO
    });


  });

}
