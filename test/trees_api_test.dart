import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TreesApi
void main() {
  var instance = TreesApi();

  group('tests for TreesApi', () {
    // The Tree endpoint returns the collection of objects underneath the specified tree. Trees are folders in a Git repository.  Repositories have both a name and an identifier. Identifiers are globally unique, but several projects may contain a repository of the same name. You don't need to include the project if you specify a repository by ID. However, if you specify a repository by name, you must also specify the project (by name or ID.
    //
    //Future<GitTreeRef> callGet(String organization, String repositoryId, String sha1, String project, String apiVersion, { String projectId, bool recursive, String fileName, String $format }) async 
    test('test callGet', () async {
      // TODO
    });

  });
}
