import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TokenAdministrationRevocation
void main() {
  var instance = TokenAdministrationRevocation();

  group('test TokenAdministrationRevocation', () {
    // A list of audience (target accounts) to limit the revocations to
    // List<String> audience (default value: [])
    test('to test the property `audience`', () async {
      // TODO
    });

    // A list of authorization ID of the OAuth authorization to revoke.
    // List<String> authorizationIds (default value: [])
    test('to test the property `authorizationIds`', () async {
      // TODO
    });


  });

}
