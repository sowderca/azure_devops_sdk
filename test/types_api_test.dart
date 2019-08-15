import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TypesApi
void main() {
  var instance = TypesApi();

  group('tests for TypesApi', () {
    // Retrieve a specific policy type by ID.
    //
    //Future<PolicyType> callGet(String organization, String project, String typeId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Retrieve all available policy types.
    //
    //Future<List<PolicyType>> list(String organization, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Get service endpoint types.
    //
    //Future<List<ServiceEndpointType>> list_0(String organization, String apiVersion, { String type, String scheme }) async 
    test('test list_0', () async {
      // TODO
    });

  });
}
