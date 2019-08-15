import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ArtifactsApi
void main() {
  var instance = ArtifactsApi();

  group('tests for ArtifactsApi', () {
    // Associates an artifact with a build.
    //
    //Future<BuildArtifact> create(String organization, String project, int buildId, String apiVersion, BuildArtifact body) async 
    test('test create', () async {
      // TODO
    });

    // Gets all artifacts for a build.
    //
    //Future<List<BuildArtifact>> list(String organization, String project, int buildId, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

  });
}
