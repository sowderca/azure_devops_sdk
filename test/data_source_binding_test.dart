import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for DataSourceBinding
void main() {
  var instance = DataSourceBinding();

  group('test DataSourceBinding', () {
    // Pagination format supported by this data source(ContinuationToken/SkipTop).
    // String callbackContextTemplate (default value: null)
    test('to test the property `callbackContextTemplate`', () async {
      // TODO
    });

    // Subsequent calls needed?
    // String callBackRequiredTemplate (default value: null)
    test('to test the property `callBackRequiredTemplate`', () async {
      // TODO
    });

    // Name of the datasource.
    // String dataSourceName (default value: null)
    test('to test the property `dataSourceName`', () async {
      // TODO
    });

    // Endpoint ID of the datasource.
    // String endpointId (default value: null)
    test('to test the property `endpointId`', () async {
      // TODO
    });

    // Endpoint URL of the datasource.
    // String endpointUrl (default value: null)
    test('to test the property `endpointUrl`', () async {
      // TODO
    });

    // Defines the initial value of the query params
    // String initialContextTemplate (default value: null)
    test('to test the property `initialContextTemplate`', () async {
      // TODO
    });

    // Parameters of the datasource.
    // Map<String, String> parameters (default value: {})
    test('to test the property `parameters`', () async {
      // TODO
    });

    // Gets or sets http request body
    // String requestContent (default value: null)
    test('to test the property `requestContent`', () async {
      // TODO
    });

    // Gets or sets http request verb
    // String requestVerb (default value: null)
    test('to test the property `requestVerb`', () async {
      // TODO
    });

    // Result selector applied on output of datasource result, for example jsonpath:$.value[?(@.properties.isEnabled == true)].
    // String resultSelector (default value: null)
    test('to test the property `resultSelector`', () async {
      // TODO
    });

    // Format of the return results, for example. { \"Value\" : \"{{{id}}}\", \"DisplayValue\" : \"{{{name}}}\" }.
    // String resultTemplate (default value: null)
    test('to test the property `resultTemplate`', () async {
      // TODO
    });

    // Target of the datasource.
    // String target (default value: null)
    test('to test the property `target`', () async {
      // TODO
    });


  });

}
