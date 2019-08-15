import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for EndpointsApi
void main() {
  var instance = EndpointsApi();

  group('tests for EndpointsApi', () {
    // Get the service endpoint details.
    //
    //Future<ServiceEndpoint> callGet(String organization, String project, String endpointId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Create a service endpoint.
    //
    //Future<ServiceEndpoint> create(String organization, String project, String apiVersion, ServiceEndpoint body) async 
    test('test create', () async {
      // TODO
    });

    // Delete a service endpoint.
    //
    //Future delete(String organization, String project, String endpointId, String apiVersion, { bool deep }) async 
    test('test delete', () async {
      // TODO
    });

    // Get the service endpoints by name.
    //
    //Future<List<ServiceEndpoint>> get Service Endpoints By Names(String organization, String project, String endpointNames, String apiVersion, { String type, String authSchemes, String owner, bool includeFailed, bool includeDetails }) async 
    test('test get Service Endpoints By Names', () async {
      // TODO
    });

    // Update a service endpoint.
    //
    //Future<ServiceEndpoint> update Service Endpoint(String organization, String project, String endpointId, String apiVersion, ServiceEndpoint body, { String operation }) async 
    test('test update Service Endpoint', () async {
      // TODO
    });

    // Update the service endpoints.
    //
    //Future<List<ServiceEndpoint>> update Service Endpoints(String organization, String project, String apiVersion, List<ServiceEndpoint> body) async 
    test('test update Service Endpoints', () async {
      // TODO
    });

  });
}
