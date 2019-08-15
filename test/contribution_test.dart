import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for Contribution
void main() {
  var instance = Contribution();

  group('test Contribution', () {
    // Description of the contribution/type
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // Fully qualified identifier of the contribution/type
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // VisibleTo can be used to restrict whom can reference a given contribution/type. This value should be a list of publishers or extensions access is restricted too.  Examples: \"ms\" - Means only the \"ms\" publisher can reference this. \"ms.vss-web\" - Means only the \"vss-web\" extension from the \"ms\" publisher can reference this.
    // List<String> visibleTo (default value: [])
    test('to test the property `visibleTo`', () async {
      // TODO
    });


  });

}
