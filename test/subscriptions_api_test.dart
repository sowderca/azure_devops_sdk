import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for SubscriptionsApi
void main() {
  var instance = SubscriptionsApi();

  group('tests for SubscriptionsApi', () {
    // Get a notification subscription by its ID.
    //
    //Future<NotificationSubscription> callGet(String subscriptionId, String organization, String apiVersion, { String queryFlags }) async 
    test('test callGet', () async {
      // TODO
    });

    // Get a specific service hooks subscription.
    //
    //Future<Subscription> callGet_0(String organization, String subscriptionId, String apiVersion) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Create a new subscription.
    //
    //Future<NotificationSubscription> create(String organization, String apiVersion, NotificationSubscriptionCreateParameters body) async 
    test('test create', () async {
      // TODO
    });

    // Query for service hook subscriptions.
    //
    //Future<SubscriptionsQuery> create Subscriptions Query(String organization, String apiVersion, SubscriptionsQuery body) async 
    test('test create Subscriptions Query', () async {
      // TODO
    });

    // Create a subscription.
    //
    //Future<Subscription> create_0(String organization, String apiVersion, Subscription body) async 
    test('test create_0', () async {
      // TODO
    });

    // Delete a subscription.
    //
    //Future delete(String subscriptionId, String organization, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Delete a specific service hooks subscription.
    //
    //Future delete_0(String organization, String subscriptionId, String apiVersion) async 
    test('test delete_0', () async {
      // TODO
    });

    // Get available subscription templates.
    //
    //Future<List<NotificationSubscriptionTemplate>> get Subscription Templates(String organization, String apiVersion) async 
    test('test get Subscription Templates', () async {
      // TODO
    });

    // Get a list of notification subscriptions, either by subscription IDs or by all subscriptions for a given user or group.
    //
    //Future<List<NotificationSubscription>> list(String organization, String apiVersion, { String targetId, String ids, String queryFlags }) async 
    test('test list', () async {
      // TODO
    });

    // Get a list of subscriptions.
    //
    //Future<List<Subscription>> list_0(String organization, String apiVersion, { String publisherId, String eventType, String consumerId, String consumerActionId }) async 
    test('test list_0', () async {
      // TODO
    });

    // Query for subscriptions. A subscription is returned if it matches one or more of the specified conditions.
    //
    //Future<List<NotificationSubscription>> query(String organization, String apiVersion, SubscriptionQuery body) async 
    test('test query', () async {
      // TODO
    });

    // Update a subscription. <param name=\"subscriptionId\">ID for a subscription that you wish to update.</param>
    //
    //Future<Subscription> replace Subscription(String organization, String subscriptionId, String apiVersion, Subscription body) async 
    test('test replace Subscription', () async {
      // TODO
    });

    // Update an existing subscription. Depending on the type of subscription and permissions, the caller can update the description, filter settings, channel (delivery) settings and more.
    //
    //Future<NotificationSubscription> update(String subscriptionId, String organization, String apiVersion, NotificationSubscriptionUpdateParameters body) async 
    test('test update', () async {
      // TODO
    });

    // Update the specified user's settings for the specified subscription. This API is typically used to opt in or out of a shared subscription. User settings can only be applied to shared subscriptions, like team subscriptions or default subscriptions.
    //
    //Future<SubscriptionUserSettings> update Subscription User Settings(String subscriptionId, String userId, String organization, String apiVersion, SubscriptionUserSettings body) async 
    test('test update Subscription User Settings', () async {
      // TODO
    });

  });
}
