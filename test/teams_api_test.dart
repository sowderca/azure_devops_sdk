import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TeamsApi
void main() {
  var instance = TeamsApi();

  group('tests for TeamsApi', () {
    // Get a specific team.
    //
    //Future<WebApiTeam> callGet(String organization, String projectId, String teamId, String apiVersion, { bool $expandIdentity }) async 
    test('test callGet', () async {
      // TODO
    });

    // Create a team in a team project.  Possible failure scenarios Invalid project name/ID (project doesn't exist) 404 Invalid team name or description 400 Team already exists 400 Insufficient privileges 400
    //
    //Future<WebApiTeam> create(String organization, String projectId, String apiVersion, WebApiTeam body) async 
    test('test create', () async {
      // TODO
    });

    // Delete a team.
    //
    //Future delete(String organization, String projectId, String teamId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get a list of all teams.
    //
    //Future<List<WebApiTeam>> get All Teams(String organization, String apiVersion, { bool $mine, int $top, int $skip, bool $expandIdentity }) async 
    test('test get All Teams', () async {
      // TODO
    });

    // Get a list of members for a specific team.
    //
    //Future<List<TeamMember>> get Team Members With Extended Properties(String organization, String projectId, String teamId, String apiVersion, { int $top, int $skip }) async 
    test('test get Team Members With Extended Properties', () async {
      // TODO
    });

    // Get a list of teams.
    //
    //Future<List<WebApiTeam>> get Teams(String organization, String projectId, String apiVersion, { bool $mine, int $top, int $skip, bool $expandIdentity }) async 
    test('test get Teams', () async {
      // TODO
    });

    // Update a team's name and/or description.
    //
    //Future<WebApiTeam> update(String organization, String projectId, String teamId, String apiVersion, WebApiTeam body) async 
    test('test update', () async {
      // TODO
    });

  });
}
