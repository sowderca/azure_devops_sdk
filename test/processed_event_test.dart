import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ProcessedEvent
void main() {
  var instance = ProcessedEvent();

  group('test ProcessedEvent', () {
    // All of the users that were associated with this event and their role.
    // List<EventActor> actors (default value: [])
    test('to test the property `actors`', () async {
      // TODO
    });

    // String allowedChannels (default value: null)
    test('to test the property `allowedChannels`', () async {
      // TODO
    });

    // String artifactUri (default value: null)
    test('to test the property `artifactUri`', () async {
      // TODO
    });

    // ProcessingIdentities deliveryIdentities (default value: null)
    test('to test the property `deliveryIdentities`', () async {
      // TODO
    });

    // Evaluations for each user
    // Map<String, SubscriptionEvaluation> evaluations (default value: {})
    test('to test the property `evaluations`', () async {
      // TODO
    });

    // int eventId (default value: null)
    test('to test the property `eventId`', () async {
      // TODO
    });

    // Which members were excluded from evaluation (only applies to ActorMatcher subscriptions)
    // List<EventActor> exclusions (default value: [])
    test('to test the property `exclusions`', () async {
      // TODO
    });

    // Which members were included for evaluation (only applies to ActorMatcher subscriptions)
    // List<EventActor> inclusions (default value: [])
    test('to test the property `inclusions`', () async {
      // TODO
    });

    // List<GeneratedNotification> notifications (default value: [])
    test('to test the property `notifications`', () async {
      // TODO
    });


  });

}
