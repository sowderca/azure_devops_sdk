import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for BlobsApi
void main() {
  var instance = BlobsApi();

  group('tests for BlobsApi', () {
    // Get a single blob.  Repositories have both a name and an identifier. Identifiers are globally unique, but several projects may contain a repository of the same name. You don't need to include the project if you specify a repository by ID. However, if you specify a repository by name, you must also specify the project (by name or ID).
    //
    //Future<GitBlobRef> get Blob(String organization, String repositoryId, String sha1, String project, String apiVersion, { bool download, String fileName, String $format, bool resolveLfs }) async 
    test('test get Blob', () async {
      // TODO
    });

    // Gets one or more blobs in a zip file download.
    //
    //Future<String> get Blobs Zip(String organization, String repositoryId, String project, String apiVersion, List<String> body, { String filename }) async 
    test('test get Blobs Zip', () async {
      // TODO
    });

  });
}
