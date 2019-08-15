import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ManualInterventionsApi
void main() {
  var instance = ManualInterventionsApi();

  group('tests for ManualInterventionsApi', () {
    // Get manual intervention for a given release and manual intervention id.
    //
    //Future<ManualIntervention> callGet(String organization, String project, int releaseId, int manualInterventionId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // List all manual interventions for a given release.
    //
    //Future<List<ManualIntervention>> list(String organization, String project, int releaseId, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Update manual intervention.
    //
    //Future<ManualIntervention> update(String organization, String project, int releaseId, int manualInterventionId, String apiVersion, ManualInterventionUpdateMetadata body) async 
    test('test update', () async {
      // TODO
    });

  });
}
