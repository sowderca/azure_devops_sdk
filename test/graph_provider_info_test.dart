import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GraphProviderInfo
void main() {
  var instance = GraphProviderInfo();

  group('test GraphProviderInfo', () {
    // The descriptor is the primary way to reference the graph subject while the system is running. This field will uniquely identify the same graph subject across both Accounts and Organizations.
    // String descriptor (default value: null)
    test('to test the property `descriptor`', () async {
      // TODO
    });

    // This represents the name of the container of origin for a graph member. (For MSA this is \"Windows Live ID\", for AAD the tenantID of the directory.)
    // String domain (default value: null)
    test('to test the property `domain`', () async {
      // TODO
    });

    // The type of source provider for the origin identifier (ex: \"aad\", \"msa\")
    // String origin (default value: null)
    test('to test the property `origin`', () async {
      // TODO
    });

    // The unique identifier from the system of origin. (For MSA this is the PUID in hex notation, for AAD this is the object id.)
    // String originId (default value: null)
    test('to test the property `originId`', () async {
      // TODO
    });


  });

}
