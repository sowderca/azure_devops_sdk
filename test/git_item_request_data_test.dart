import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitItemRequestData
void main() {
  var instance = GitItemRequestData();

  group('test GitItemRequestData', () {
    // Whether to include metadata for all items
    // bool includeContentMetadata (default value: null)
    test('to test the property `includeContentMetadata`', () async {
      // TODO
    });

    // Whether to include the _links field on the shallow references
    // bool includeLinks (default value: null)
    test('to test the property `includeLinks`', () async {
      // TODO
    });

    // Collection of items to fetch, including path, version, and recursion level
    // List<GitItemDescriptor> itemDescriptors (default value: [])
    test('to test the property `itemDescriptors`', () async {
      // TODO
    });

    // Whether to include shallow ref to commit that last changed each item
    // bool latestProcessedChange (default value: null)
    test('to test the property `latestProcessedChange`', () async {
      // TODO
    });


  });

}
