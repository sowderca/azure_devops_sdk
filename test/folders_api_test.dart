import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for FoldersApi
void main() {
  var instance = FoldersApi();

  group('tests for FoldersApi', () {
    // Creates a new folder.
    //
    //Future<Folder> create(String organization, String project, String path, String apiVersion, Folder body) async 
    test('test create', () async {
      // TODO
    });

    // This method is no longer supported. Use CreateFolder with folder parameter API.
    //
    //Future<Folder> create_0(String organization, String project, String path, String apiVersion, Folder body) async 
    test('test create_0', () async {
      // TODO
    });

    // Deletes a definition folder. Definitions and their corresponding builds will also be deleted.
    //
    //Future delete(String organization, String project, String path, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Deletes a definition folder for given folder name and path and all it's existing definitions.
    //
    //Future delete_0(String organization, String project, String path, String apiVersion) async 
    test('test delete_0', () async {
      // TODO
    });

    // Gets a list of build definition folders.
    //
    //Future<List<Folder>> list(String organization, String project, String path, String apiVersion, { String queryOrder }) async 
    test('test list', () async {
      // TODO
    });

    // Gets folders.
    //
    //Future<List<Folder>> list_0(String organization, String project, String path, String apiVersion, { String queryOrder }) async 
    test('test list_0', () async {
      // TODO
    });

    // Updates an existing folder at given  existing path
    //
    //Future<Folder> update(String organization, String project, String path, String apiVersion, Folder body) async 
    test('test update', () async {
      // TODO
    });

    // Updates an existing folder at given existing path.
    //
    //Future<Folder> update_0(String organization, String project, String path, String apiVersion, Folder body) async 
    test('test update_0', () async {
      // TODO
    });

  });
}
