import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for SubscriptionQuery
void main() {
  var instance = SubscriptionQuery();

  group('test SubscriptionQuery', () {
    // One or more conditions to query on. If more than 2 conditions are specified, the combined results of each condition is returned (i.e. conditions are logically OR'ed).
    // List<SubscriptionQueryCondition> conditions (default value: [])
    test('to test the property `conditions`', () async {
      // TODO
    });

    // Flags the refine the types of subscriptions that will be returned from the query.
    // String queryFlags (default value: null)
    test('to test the property `queryFlags`', () async {
      // TODO
    });


  });

}
