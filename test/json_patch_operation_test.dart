import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for JsonPatchOperation
void main() {
  var instance = JsonPatchOperation();

  group('test JsonPatchOperation', () {
    // The path to copy from for the Move/Copy operation.
    // String from (default value: null)
    test('to test the property `from`', () async {
      // TODO
    });

    // The patch operation
    // String op (default value: null)
    test('to test the property `op`', () async {
      // TODO
    });

    // The path for the operation. In the case of an array, a zero based index can be used to specify the position in the array (e.g. /biscuits/0/name). The \"-\" character can be used instead of an index to insert at the end of the array (e.g. /biscuits/-).
    // String path (default value: null)
    test('to test the property `path`', () async {
      // TODO
    });

    // The value for the operation. This is either a primitive or a JToken.
    // Object value (default value: null)
    test('to test the property `value`', () async {
      // TODO
    });


  });

}
