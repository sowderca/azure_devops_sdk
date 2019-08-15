import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for BadgeApi
void main() {
  var instance = BadgeApi();

  group('tests for BadgeApi', () {
    // This endpoint is deprecated. Please see the Build Status REST endpoint.
    //
    //Future<String> callGet(String organization, String project, int definitionId, String apiVersion, { String branchName }) async 
    test('test callGet', () async {
      // TODO
    });

    // Gets a badge that indicates the status of the most recent build for the specified branch.
    //
    //Future<String> get Build Badge Data(String organization, String project, String repoType, String apiVersion, { String repoId, String branchName }) async 
    test('test get Build Badge Data', () async {
      // TODO
    });

  });
}
