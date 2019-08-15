import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for NotificationsApi
void main() {
  var instance = NotificationsApi();

  group('tests for NotificationsApi', () {
    // Get a specific notification for a subscription.
    //
    //Future<Notification> callGet(String organization, String subscriptionId, int notificationId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Sends a test notification. This is useful for verifying the configuration of an updated or new service hooks subscription.
    //
    //Future<Notification> create(String organization, String apiVersion, Notification body, { bool useRealData }) async 
    test('test create', () async {
      // TODO
    });

    // Get a list of notifications for a specific subscription. A notification includes details about the event, the request to and the response from the consumer service.
    //
    //Future<List<Notification>> list(String organization, String subscriptionId, String apiVersion, { int maxResults, String status, String result }) async 
    test('test list', () async {
      // TODO
    });

    // Query for notifications. A notification includes details about the event, the request to and the response from the consumer service.
    //
    //Future<NotificationsQuery> query(String organization, String apiVersion, NotificationsQuery body) async 
    test('test query', () async {
      // TODO
    });

  });
}
