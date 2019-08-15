import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for SupportedTrigger
void main() {
  var instance = SupportedTrigger();

  group('test SupportedTrigger', () {
    // The default interval to wait between polls (only relevant when NotificationType is Polling).
    // int defaultPollingInterval (default value: null)
    test('to test the property `defaultPollingInterval`', () async {
      // TODO
    });

    // How the trigger is notified of changes.
    // String notificationType (default value: null)
    test('to test the property `notificationType`', () async {
      // TODO
    });

    // The capabilities supported by this trigger.
    // Map<String, Object> supportedCapabilities (default value: {})
    test('to test the property `supportedCapabilities`', () async {
      // TODO
    });

    // The type of trigger.
    // String type (default value: null)
    test('to test the property `type`', () async {
      // TODO
    });


  });

}
