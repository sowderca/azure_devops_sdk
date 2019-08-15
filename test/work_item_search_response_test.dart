import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for WorkItemSearchResponse
void main() {
  var instance = WorkItemSearchResponse();

  group('test WorkItemSearchResponse', () {
    // A dictionary storing an array of <code>Filter</code> object against each facet.
    // Map<String, List<Filter>> facets (default value: {})
    test('to test the property `facets`', () async {
      // TODO
    });

    // Numeric code indicating any additional information: 0 - Ok, 1 - Account is being reindexed, 2 - Account indexing has not started, 3 - Invalid Request, 4 - Prefix wildcard query not supported, 5 - MultiWords with code facet not supported, 6 - Account is being onboarded, 7 - Account is being onboarded or reindexed, 8 - Top value trimmed to maxresult allowed 9 - Branches are being indexed, 10 - Faceting not enabled, 11 - Work items not accessible, 19 - Phrase queries with code type filters not supported, 20 - Wildcard queries with code type filters not supported. Any other info code is used for internal purpose.
    // int infoCode (default value: null)
    test('to test the property `infoCode`', () async {
      // TODO
    });


  });

}
