import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for StatusApi
void main() {
  var instance = StatusApi();

  group('tests for StatusApi', () {
    // <p>Gets the build status for a definition, optionally scoped to a specific branch, stage, job, and configuration.</p> <p>If there are more than one, then it is required to pass in a stageName value when specifying a jobName, and the same rule then applies for both if passing a configuration parameter.</p>
    //
    //Future<String> callGet(String organization, String project, String definition, String apiVersion, { String branchName, String stageName, String jobName, String configuration, String label }) async 
    test('test callGet', () async {
      // TODO
    });

  });
}
