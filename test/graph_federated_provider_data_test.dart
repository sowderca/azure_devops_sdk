import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GraphFederatedProviderData
void main() {
  var instance = GraphFederatedProviderData();

  group('test GraphFederatedProviderData', () {
    // The access token that can be used to communicated with the federated provider on behalf on the target identity, if we were able to successfully acquire one, otherwise <code>null</code>, if we were not.
    // String accessToken (default value: null)
    test('to test the property `accessToken`', () async {
      // TODO
    });

    // The name of the federated provider, e.g. \"github.com\".
    // String providerName (default value: null)
    test('to test the property `providerName`', () async {
      // TODO
    });

    // The descriptor of the graph subject to which this federated provider data corresponds.
    // String subjectDescriptor (default value: null)
    test('to test the property `subjectDescriptor`', () async {
      // TODO
    });

    // The version number of this federated provider data, which corresponds to when it was last updated. Can be used to prevent returning stale provider data from the cache when the caller is aware of a newer version, such as to prevent local cache poisoning from a remote cache or store. This is the app layer equivalent of the data layer sequence ID.
    // int version (default value: null)
    test('to test the property `version`', () async {
      // TODO
    });


  });

}
