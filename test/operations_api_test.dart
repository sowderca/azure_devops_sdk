import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for OperationsApi
void main() {
  var instance = OperationsApi();

  group('tests for OperationsApi', () {
    // Gets an operation from the the operationId using the given pluginId.  Some scenarios donât require a pluginId. If a pluginId is not included in the call then just the operationId will be used to find an operation.
    //
    //Future<Operation> callGet(String operationId, String organization, String apiVersion, { String pluginId }) async 
    test('test callGet', () async {
      // TODO
    });

  });
}
