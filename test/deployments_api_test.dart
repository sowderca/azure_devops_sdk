import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for DeploymentsApi
void main() {
  var instance = DeploymentsApi();

  group('tests for DeploymentsApi', () {
    //Future<List<Deployment>> list(String organization, String project, String apiVersion, { int definitionId, int definitionEnvironmentId, String createdBy, DateTime minModifiedTime, DateTime maxModifiedTime, String deploymentStatus, String operationStatus, bool latestAttemptsOnly, String queryOrder, int $top, int continuationToken, String createdFor, DateTime minStartedTime, DateTime maxStartedTime, String sourceBranch }) async 
    test('test list', () async {
      // TODO
    });

  });
}
