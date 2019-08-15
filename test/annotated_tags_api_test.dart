import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for AnnotatedTagsApi
void main() {
  var instance = AnnotatedTagsApi();

  group('tests for AnnotatedTagsApi', () {
    // Get an annotated tag.  Repositories have both a name and an identifier. Identifiers are globally unique, but several projects may contain a repository of the same name. You don't need to include the project if you specify a repository by ID. However, if you specify a repository by name, you must also specify the project (by name or ID).
    //
    //Future<GitAnnotatedTag> callGet(String organization, String project, String repositoryId, String objectId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Create an annotated tag.  Repositories have both a name and an identifier. Identifiers are globally unique, but several projects may contain a repository of the same name. You don't need to include the project if you specify a repository by ID. However, if you specify a repository by name, you must also specify the project (by name or ID).
    //
    //Future<GitAnnotatedTag> create(String organization, String project, String repositoryId, String apiVersion, GitAnnotatedTag body) async 
    test('test create', () async {
      // TODO
    });

  });
}
