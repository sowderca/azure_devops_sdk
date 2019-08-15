import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for NotificationsQuery
void main() {
  var instance = NotificationsQuery();

  group('test NotificationsQuery', () {
    // The subscriptions associated with the notifications returned from the query
    // List<Subscription> associatedSubscriptions (default value: [])
    test('to test the property `associatedSubscriptions`', () async {
      // TODO
    });

    // If true, we will return all notification history for the query provided; otherwise, the summary is returned.
    // bool includeDetails (default value: null)
    test('to test the property `includeDetails`', () async {
      // TODO
    });

    // Optional maximum date at which the notification was created
    // DateTime maxCreatedDate (default value: null)
    test('to test the property `maxCreatedDate`', () async {
      // TODO
    });

    // Optional maximum number of overall results to include
    // int maxResults (default value: null)
    test('to test the property `maxResults`', () async {
      // TODO
    });

    // Optional maximum number of results for each subscription. Only takes effect when a list of subscription ids is supplied in the query.
    // int maxResultsPerSubscription (default value: null)
    test('to test the property `maxResultsPerSubscription`', () async {
      // TODO
    });

    // Optional minimum date at which the notification was created
    // DateTime minCreatedDate (default value: null)
    test('to test the property `minCreatedDate`', () async {
      // TODO
    });

    // Optional publisher id to restrict the results to
    // String publisherId (default value: null)
    test('to test the property `publisherId`', () async {
      // TODO
    });

    // Results from the query
    // List<Notification> results (default value: [])
    test('to test the property `results`', () async {
      // TODO
    });

    // Optional notification result type to filter results to
    // String resultType (default value: null)
    test('to test the property `resultType`', () async {
      // TODO
    });

    // Optional notification status to filter results to
    // String status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // Optional list of subscription ids to restrict the results to
    // List<String> subscriptionIds (default value: [])
    test('to test the property `subscriptionIds`', () async {
      // TODO
    });

    // Summary of notifications - the count of each result type (success, fail, ..).
    // List<NotificationSummary> summary (default value: [])
    test('to test the property `summary`', () async {
      // TODO
    });


  });

}
