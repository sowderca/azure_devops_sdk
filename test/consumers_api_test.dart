import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ConsumersApi
void main() {
  var instance = ConsumersApi();

  group('tests for ConsumersApi', () {
    // Get a specific consumer service. Optionally filter out consumer actions that do not support any event types for the specified publisher.
    //
    //Future<Consumer> callGet(String organization, String consumerId, String apiVersion, { String publisherId }) async 
    test('test callGet', () async {
      // TODO
    });

    // Get details about a specific consumer action.
    //
    //Future<ConsumerAction> get Consumer Action(String organization, String consumerId, String consumerActionId, String apiVersion, { String publisherId }) async 
    test('test get Consumer Action', () async {
      // TODO
    });

    // Get a list of available service hook consumer services. Optionally filter by consumers that support at least one event type from the specific publisher.
    //
    //Future<List<Consumer>> list(String organization, String apiVersion, { String publisherId }) async 
    test('test list', () async {
      // TODO
    });

    // Get a list of consumer actions for a specific consumer.
    //
    //Future<List<ConsumerAction>> list Consumer Actions(String organization, String consumerId, String apiVersion, { String publisherId }) async 
    test('test list Consumer Actions', () async {
      // TODO
    });

  });
}
