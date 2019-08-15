import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for WikiV2
void main() {
  var instance = WikiV2();

  group('test WikiV2', () {
    // Folder path inside repository which is shown as Wiki. Not required for ProjectWiki type.
    // String mappedPath (default value: null)
    test('to test the property `mappedPath`', () async {
      // TODO
    });

    // Wiki name.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // ID of the project in which the wiki is to be created.
    // String projectId (default value: null)
    test('to test the property `projectId`', () async {
      // TODO
    });

    // ID of the git repository that backs up the wiki. Not required for ProjectWiki type.
    // String repositoryId (default value: null)
    test('to test the property `repositoryId`', () async {
      // TODO
    });

    // Type of the wiki.
    // String type (default value: null)
    test('to test the property `type`', () async {
      // TODO
    });


  });

}
