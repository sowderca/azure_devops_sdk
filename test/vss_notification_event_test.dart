import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for VssNotificationEvent
void main() {
  var instance = VssNotificationEvent();

  group('test VssNotificationEvent', () {
    // Optional: A list of actors which are additional identities with corresponding roles that are relevant to the event.
    // List<EventActor> actors (default value: [])
    test('to test the property `actors`', () async {
      // TODO
    });

    // Optional: A list of artifacts referenced or impacted by this event.
    // List<String> artifactUris (default value: [])
    test('to test the property `artifactUris`', () async {
      // TODO
    });

    // Required: The event payload.  If Data is a string, it must be in Json or XML format.  Otherwise it must have a serialization format attribute.
    // Object data (default value: null)
    test('to test the property `data`', () async {
      // TODO
    });

    // Required: The name of the event.  This event must be registered in the context it is being fired.
    // String eventType (default value: null)
    test('to test the property `eventType`', () async {
      // TODO
    });

    // How long before the event expires and will be cleaned up.  The default is to use the system default.
    // String expiresIn (default value: null)
    test('to test the property `expiresIn`', () async {
      // TODO
    });

    // The id of the item, artifact, extension, project, etc.
    // String itemId (default value: null)
    test('to test the property `itemId`', () async {
      // TODO
    });

    // How long to wait before processing this event.  The default is to process immediately.
    // String processDelay (default value: null)
    test('to test the property `processDelay`', () async {
      // TODO
    });

    // Optional: A list of scopes which are are relevant to the event.
    // List<EventScope> scopes (default value: [])
    test('to test the property `scopes`', () async {
      // TODO
    });

    // This is the time the original source event for this VssNotificationEvent was created.  For example, for something like a build completion notification SourceEventCreatedTime should be the time the build finished not the time this event was raised.
    // DateTime sourceEventCreatedTime (default value: null)
    test('to test the property `sourceEventCreatedTime`', () async {
      // TODO
    });


  });

}
