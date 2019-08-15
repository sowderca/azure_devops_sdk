import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RefsFavoritesApi
void main() {
  var instance = RefsFavoritesApi();

  group('tests for RefsFavoritesApi', () {
    // Gets the refs favorite for a favorite Id.
    //
    //Future<GitRefFavorite> callGet(String organization, String project, int favoriteId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Creates a ref favorite
    //
    //Future<GitRefFavorite> create(String organization, String project, String apiVersion, GitRefFavorite body) async 
    test('test create', () async {
      // TODO
    });

    // Deletes the refs favorite specified
    //
    //Future delete(String organization, String project, int favoriteId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Gets the refs favorites for a repo and an identity.
    //
    //Future<List<GitRefFavorite>> list(String organization, String project, String apiVersion, { String repositoryId, String identityId }) async 
    test('test list', () async {
      // TODO
    });

  });
}
