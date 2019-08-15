import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PropertiesApi
void main() {
  var instance = PropertiesApi();

  group('tests for PropertiesApi', () {
    // Gets properties for a build.
    //
    //Future<PropertiesCollection> get Build Properties(String organization, String project, int buildId, String apiVersion, { String filter }) async 
    test('test get Build Properties', () async {
      // TODO
    });

    // Gets properties for a definition.
    //
    //Future<PropertiesCollection> get Definition Properties(String organization, String project, int definitionId, String apiVersion, { String filter }) async 
    test('test get Definition Properties', () async {
      // TODO
    });

    // Updates properties for a build.
    //
    //Future<PropertiesCollection> update Build Properties(String organization, String project, int buildId, String apiVersion, JsonPatchDocument body) async 
    test('test update Build Properties', () async {
      // TODO
    });

    // Updates properties for a definition.
    //
    //Future<PropertiesCollection> update Definition Properties(String organization, String project, int definitionId, String apiVersion, JsonPatchDocument body) async 
    test('test update Definition Properties', () async {
      // TODO
    });

  });
}
