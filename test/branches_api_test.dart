import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for BranchesApi
void main() {
  var instance = BranchesApi();

  group('tests for BranchesApi', () {
    // Get branch hierarchies below the specified scopePath
    //
    //Future<List<TfvcBranchRef>> get Branch Refs(String organization, String scopePath, String project, String apiVersion, { bool includeDeleted, bool includeLinks }) async 
    test('test get Branch Refs', () async {
      // TODO
    });

  });
}
