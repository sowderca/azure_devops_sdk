import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for EventTypesApi
void main() {
  var instance = EventTypesApi();

  group('tests for EventTypesApi', () {
    // Get a specific event type.
    //
    //Future<NotificationEventType> callGet(String eventType, String organization, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // List available event types for this service. Optionally filter by only event types for the specified publisher.
    //
    //Future<List<NotificationEventType>> list(String organization, String apiVersion, { String publisherId }) async 
    test('test list', () async {
      // TODO
    });

  });
}
