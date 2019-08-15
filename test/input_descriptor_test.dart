import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for InputDescriptor
void main() {
  var instance = InputDescriptor();

  group('test InputDescriptor', () {
    // The ids of all inputs that the value of this input is dependent on.
    // List<String> dependencyInputIds (default value: [])
    test('to test the property `dependencyInputIds`', () async {
      // TODO
    });

    // Description of what this input is used for
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // The group localized name to which this input belongs and can be shown as a header for the container that will include all the inputs in the group.
    // String groupName (default value: null)
    test('to test the property `groupName`', () async {
      // TODO
    });

    // If true, the value information for this input is dynamic and should be fetched when the value of dependency inputs change.
    // bool hasDynamicValueInformation (default value: null)
    test('to test the property `hasDynamicValueInformation`', () async {
      // TODO
    });

    // Identifier for the subscription input
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Mode in which the value of this input should be entered
    // String inputMode (default value: null)
    test('to test the property `inputMode`', () async {
      // TODO
    });

    // Gets whether this input is confidential, such as for a password or application key
    // bool isConfidential (default value: null)
    test('to test the property `isConfidential`', () async {
      // TODO
    });

    // Localized name which can be shown as a label for the subscription input
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Custom properties for the input which can be used by the service provider
    // Map<String, Object> properties (default value: {})
    test('to test the property `properties`', () async {
      // TODO
    });

    // Underlying data type for the input value. When this value is specified, InputMode, Validation and Values are optional.
    // String type (default value: null)
    test('to test the property `type`', () async {
      // TODO
    });

    // Gets whether this input is included in the default generated action description.
    // bool useInDefaultDescription (default value: null)
    test('to test the property `useInDefaultDescription`', () async {
      // TODO
    });

    // InputValidation validation (default value: null)
    test('to test the property `validation`', () async {
      // TODO
    });

    // A hint for input value. It can be used in the UI as the input placeholder.
    // String valueHint (default value: null)
    test('to test the property `valueHint`', () async {
      // TODO
    });

    // InputValues values (default value: null)
    test('to test the property `values`', () async {
      // TODO
    });


  });

}
