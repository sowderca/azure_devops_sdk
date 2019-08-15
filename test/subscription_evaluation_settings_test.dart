import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for SubscriptionEvaluationSettings
void main() {
  var instance = SubscriptionEvaluationSettings();

  group('test SubscriptionEvaluationSettings', () {
    // Indicates whether subscription evaluation before saving is enabled or not
    // bool enabled (default value: null)
    test('to test the property `enabled`', () async {
      // TODO
    });

    // Time interval to check on subscription evaluation job in seconds
    // int interval (default value: null)
    test('to test the property `interval`', () async {
      // TODO
    });

    // Threshold on the number of notifications for considering a subscription too noisy
    // int threshold (default value: null)
    test('to test the property `threshold`', () async {
      // TODO
    });

    // Time out for the subscription evaluation check in seconds
    // int timeOut (default value: null)
    test('to test the property `timeOut`', () async {
      // TODO
    });


  });

}
