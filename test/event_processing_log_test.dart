import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for EventProcessingLog
void main() {
  var instance = EventProcessingLog();

  group('test EventProcessingLog', () {
    // Identifier used for correlating to other diagnostics that may have been recorded elsewhere.
    // String activityId (default value: null)
    test('to test the property `activityId`', () async {
      // TODO
    });

    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // DateTime endTime (default value: null)
    test('to test the property `endTime`', () async {
      // TODO
    });

    // int errors (default value: null)
    test('to test the property `errors`', () async {
      // TODO
    });

    // Unique instance identifier.
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // String logType (default value: null)
    test('to test the property `logType`', () async {
      // TODO
    });

    // List<NotificationDiagnosticLogMessage> messages (default value: [])
    test('to test the property `messages`', () async {
      // TODO
    });

    // Map<String, String> properties (default value: {})
    test('to test the property `properties`', () async {
      // TODO
    });

    // This identifier depends on the logType.  For notification jobs, this will be the job Id. For subscription tracing, this will be a special root Guid with the subscription Id encoded.
    // String source (default value: null)
    test('to test the property `source`', () async {
      // TODO
    });

    // DateTime startTime (default value: null)
    test('to test the property `startTime`', () async {
      // TODO
    });

    // int warnings (default value: null)
    test('to test the property `warnings`', () async {
      // TODO
    });


  });

}
