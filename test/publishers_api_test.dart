import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PublishersApi
void main() {
  var instance = PublishersApi();

  group('tests for PublishersApi', () {
    // Get a specific service hooks publisher.
    //
    //Future<Publisher> callGet(String organization, String publisherId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Get a specific event type.
    //
    //Future<EventTypeDescriptor> get Event Type(String organization, String publisherId, String eventTypeId, String apiVersion) async 
    test('test get Event Type', () async {
      // TODO
    });

    // Get a list of publishers.
    //
    //Future<List<Publisher>> list(String organization, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Get the event types for a specific publisher.
    //
    //Future<List<EventTypeDescriptor>> list Event Types(String organization, String publisherId, String apiVersion) async 
    test('test list Event Types', () async {
      // TODO
    });

    //Future<InputValuesQuery> query Input Values(String organization, String publisherId, String apiVersion, InputValuesQuery body) async 
    test('test query Input Values', () async {
      // TODO
    });

    // Query for service hook publishers.
    //
    //Future<PublishersQuery> query Publishers(String organization, String apiVersion, PublishersQuery body) async 
    test('test query Publishers', () async {
      // TODO
    });

  });
}
