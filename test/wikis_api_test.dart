import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for WikisApi
void main() {
  var instance = WikisApi();

  group('tests for WikisApi', () {
    // Gets the wiki corresponding to the wiki name or Id provided.
    //
    //Future<WikiV2> callGet(String organization, String wikiIdentifier, String project, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Creates the wiki resource.
    //
    //Future<WikiV2> create(String organization, String project, String apiVersion, WikiCreateParametersV2 body) async 
    test('test create', () async {
      // TODO
    });

    // Deletes the wiki corresponding to the wiki name or Id provided.
    //
    //Future<WikiV2> delete(String organization, String wikiIdentifier, String project, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Gets all wikis in a project or collection.
    //
    //Future<List<WikiV2>> list(String organization, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Updates the wiki corresponding to the wiki Id or name provided using the update parameters.
    //
    //Future<WikiV2> update(String organization, String wikiIdentifier, String project, String apiVersion, WikiUpdateParameters body) async 
    test('test update', () async {
      // TODO
    });

  });
}
