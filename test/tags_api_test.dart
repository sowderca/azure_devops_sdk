import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TagsApi
void main() {
  var instance = TagsApi();

  group('tests for TagsApi', () {
    // Adds a tag to a build.
    //
    //Future<List<String>> add Build Tag(String organization, String project, int buildId, String tag, String apiVersion) async 
    test('test add Build Tag', () async {
      // TODO
    });

    // Adds tags to a build.
    //
    //Future<List<String>> add Build Tags(String organization, String project, int buildId, String apiVersion, List<String> body) async 
    test('test add Build Tags', () async {
      // TODO
    });

    // Adds a tag to a definition
    //
    //Future<List<String>> add Definition Tag(String organization, String project, int definitionId, String tag, String apiVersion) async 
    test('test add Definition Tag', () async {
      // TODO
    });

    // Adds multiple tags to a definition.
    //
    //Future<List<String>> add Definition Tags(String organization, String project, int definitionId, String apiVersion, List<String> body) async 
    test('test add Definition Tags', () async {
      // TODO
    });

    // Removes a tag from a build.
    //
    //Future<List<String>> delete Build Tag(String organization, String project, int buildId, String tag, String apiVersion) async 
    test('test delete Build Tag', () async {
      // TODO
    });

    // Removes a tag from a definition.
    //
    //Future<List<String>> delete Definition Tag(String organization, String project, int definitionId, String tag, String apiVersion) async 
    test('test delete Definition Tag', () async {
      // TODO
    });

    // Gets the tags for a build.
    //
    //Future<List<String>> get Build Tags(String organization, String project, int buildId, String apiVersion) async 
    test('test get Build Tags', () async {
      // TODO
    });

    // Gets the tags for a definition.
    //
    //Future<List<String>> get Definition Tags(String organization, String project, int definitionId, String apiVersion, { int revision }) async 
    test('test get Definition Tags', () async {
      // TODO
    });

    // Gets a list of all build and definition tags in the project.
    //
    //Future<List<String>> get Tags(String organization, String project, String apiVersion) async 
    test('test get Tags', () async {
      // TODO
    });

  });
}
