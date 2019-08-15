import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for DataProviderResult
void main() {
  var instance = DataProviderResult();

  group('test DataProviderResult', () {
    // This is the set of data providers that were requested, but either they were defined as client providers, or as remote providers that failed and may be retried by the client.
    // Map<String, ClientDataProviderQuery> clientProviders (default value: {})
    test('to test the property `clientProviders`', () async {
      // TODO
    });

    // Property bag of data keyed off of the data provider contribution id
    // Map<String, Object> data (default value: {})
    test('to test the property `data`', () async {
      // TODO
    });

    // Set of exceptions that occurred resolving the data providers.
    // Map<String, DataProviderExceptionDetails> exceptions (default value: {})
    test('to test the property `exceptions`', () async {
      // TODO
    });

    // List of data providers resolved in the data-provider query
    // List<ResolvedDataProvider> resolvedProviders (default value: [])
    test('to test the property `resolvedProviders`', () async {
      // TODO
    });

    // Scope name applied to this data provider result.
    // String scopeName (default value: null)
    test('to test the property `scopeName`', () async {
      // TODO
    });

    // Scope value applied to this data provider result.
    // String scopeValue (default value: null)
    test('to test the property `scopeValue`', () async {
      // TODO
    });

    // Property bag of shared data that was contributed to by any of the individual data providers
    // Map<String, Object> sharedData (default value: {})
    test('to test the property `sharedData`', () async {
      // TODO
    });


  });

}
