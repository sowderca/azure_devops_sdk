import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RequestsApi
void main() {
  var instance = RequestsApi();

  group('tests for RequestsApi', () {
    // Create a new symbol request.
    //
    //Future<Request> create Requests(String organization, String apiVersion, Request body) async 
    test('test create Requests', () async {
      // TODO
    });

    // Create debug entries for a symbol request as specified by its identifier.
    //
    //Future<List<DebugEntry>> create Requests Request Id Debug Entries(String organization, String requestId, String collection, String apiVersion, DebugEntryCreateBatch body) async 
    test('test create Requests Request Id Debug Entries', () async {
      // TODO
    });

    // Delete a symbol request by request identifier.
    //
    //Future delete Requests Request Id(String organization, String requestId, String apiVersion, { bool synchronous }) async 
    test('test delete Requests Request Id', () async {
      // TODO
    });

    // Delete a symbol request by request name.
    //
    //Future delete Requests Request Name(String organization, String requestName, String apiVersion, { bool synchronous }) async 
    test('test delete Requests Request Name', () async {
      // TODO
    });

    // Get a symbol request by request identifier.
    //
    //Future<Request> get Requests Request Id(String organization, String requestId, String apiVersion) async 
    test('test get Requests Request Id', () async {
      // TODO
    });

    // Get a symbol request by request name.
    //
    //Future<Request> get Requests Request Name(String organization, String requestName, String apiVersion) async 
    test('test get Requests Request Name', () async {
      // TODO
    });

    //Future<List<TaskAgentCloudRequest>> list(String organization, int agentCloudId, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Update a symbol request by request identifier.
    //
    //Future<Request> update Requests Request Id(String organization, String requestId, String apiVersion, Request body) async 
    test('test update Requests Request Id', () async {
      // TODO
    });

    // Update a symbol request by request name.
    //
    //Future<Request> update Requests Request Name(String organization, String requestName, String apiVersion, Request body) async 
    test('test update Requests Request Name', () async {
      // TODO
    });

  });
}
