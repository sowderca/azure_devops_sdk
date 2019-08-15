import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for CardFieldSettings
void main() {
  var instance = CardFieldSettings();

  group('test CardFieldSettings', () {
    // A collection of field information of additional fields on cards. The index in the collection signifies the order of the field among the additional fields. Currently unused. Should be used with User Story 691539: Card setting: additional fields
    // List<FieldInfo> additionalFields (default value: [])
    test('to test the property `additionalFields`', () async {
      // TODO
    });

    // Display format for the assigned to field
    // String assignedToDisplayFormat (default value: null)
    test('to test the property `assignedToDisplayFormat`', () async {
      // TODO
    });

    // A collection of field information of rendered core fields on cards.
    // List<FieldInfo> coreFields (default value: [])
    test('to test the property `coreFields`', () async {
      // TODO
    });

    // Flag indicating whether to show assigned to field on cards. When true, AssignedToDisplayFormat will determine how the field will be displayed
    // bool showAssignedTo (default value: null)
    test('to test the property `showAssignedTo`', () async {
      // TODO
    });

    // Flag indicating whether to show empty fields on cards
    // bool showEmptyFields (default value: null)
    test('to test the property `showEmptyFields`', () async {
      // TODO
    });

    // Flag indicating whether to show ID on cards
    // bool showId (default value: null)
    test('to test the property `showId`', () async {
      // TODO
    });

    // Flag indicating whether to show state field on cards
    // bool showState (default value: null)
    test('to test the property `showState`', () async {
      // TODO
    });

    // Flag indicating whether to show tags on cards
    // bool showTags (default value: null)
    test('to test the property `showTags`', () async {
      // TODO
    });


  });

}
