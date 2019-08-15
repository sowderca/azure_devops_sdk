import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for PublisherEvent
void main() {
  var instance = PublisherEvent();

  group('test PublisherEvent', () {
    // Add key/value pairs which will be stored with a published notification in the SH service DB.  This key/value pairs are for diagnostic purposes only and will have not effect on the delivery of a notificaton.
    // Map<String, String> diagnostics (default value: {})
    test('to test the property `diagnostics`', () async {
      // TODO
    });

    // Event event (default value: null)
    test('to test the property `event`', () async {
      // TODO
    });

    // Gets or sets flag for filtered events
    // bool isFilteredEvent (default value: null)
    test('to test the property `isFilteredEvent`', () async {
      // TODO
    });

    // Additional data that needs to be sent as part of notification to complement the Resource data in the Event
    // Map<String, String> notificationData (default value: {})
    test('to test the property `notificationData`', () async {
      // TODO
    });

    // Gets or sets the array of older supported resource versions.
    // List<VersionedResource> otherResourceVersions (default value: [])
    test('to test the property `otherResourceVersions`', () async {
      // TODO
    });

    // Optional publisher-input filters which restricts the set of subscriptions which are triggered by the event
    // List<InputFilter> publisherInputFilters (default value: [])
    test('to test the property `publisherInputFilters`', () async {
      // TODO
    });

    // Subscription subscription (default value: null)
    test('to test the property `subscription`', () async {
      // TODO
    });


  });

}
