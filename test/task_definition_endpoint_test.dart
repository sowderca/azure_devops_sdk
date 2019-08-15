import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TaskDefinitionEndpoint
void main() {
  var instance = TaskDefinitionEndpoint();

  group('test TaskDefinitionEndpoint', () {
    // An ID that identifies a service connection to be used for authenticating endpoint requests.
    // String connectionId (default value: null)
    test('to test the property `connectionId`', () async {
      // TODO
    });

    // An Json based keyselector to filter response returned by fetching the endpoint <c>Url</c>.A Json based keyselector must be prefixed with \"jsonpath:\". KeySelector can be used to specify the filter to get the keys for the values specified with Selector. <example> The following keyselector defines an Json for extracting nodes named 'ServiceName'. <code> endpoint.KeySelector = \"jsonpath://ServiceName\"; </code></example>
    // String keySelector (default value: null)
    test('to test the property `keySelector`', () async {
      // TODO
    });

    // The scope as understood by Connected Services. Essentially, a project-id for now.
    // String scope (default value: null)
    test('to test the property `scope`', () async {
      // TODO
    });

    // An XPath/Json based selector to filter response returned by fetching the endpoint <c>Url</c>. An XPath based selector must be prefixed with the string \"xpath:\". A Json based selector must be prefixed with \"jsonpath:\". <example> The following selector defines an XPath for extracting nodes named 'ServiceName'. <code> endpoint.Selector = \"xpath://ServiceName\"; </code></example>
    // String selector (default value: null)
    test('to test the property `selector`', () async {
      // TODO
    });

    // TaskId that this endpoint belongs to.
    // String taskId (default value: null)
    test('to test the property `taskId`', () async {
      // TODO
    });

    // URL to GET.
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });


  });

}
