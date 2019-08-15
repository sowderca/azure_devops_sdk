import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for StatsApi
void main() {
  var instance = StatsApi();

  group('tests for StatsApi', () {
    // Retrieve statistics about all branches within a repository.
    //
    //Future<List<GitBranchStats>> list(String organization, String repositoryId, String project, String apiVersion, { String baseVersionDescriptorVersionOptions, String baseVersionDescriptorVersion, String baseVersionDescriptorVersionType }) async 
    test('test list', () async {
      // TODO
    });

  });
}
