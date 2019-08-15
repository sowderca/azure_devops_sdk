import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ProjectsApi
void main() {
  var instance = ProjectsApi();

  group('tests for ProjectsApi', () {
    // Get project with the specified id or name, optionally including capabilities.
    //
    //Future<TeamProject> callGet(String organization, String projectId, String apiVersion, { bool includeCapabilities, bool includeHistory }) async 
    test('test callGet', () async {
      // TODO
    });

    // Queues a project to be created. Use the [GetOperation](../../operations/operations/get) to periodically check for create project status.
    //
    //Future<OperationReference> create(String organization, String apiVersion, TeamProject body) async 
    test('test create', () async {
      // TODO
    });

    // Queues a project to be deleted. Use the [GetOperation](../../operations/operations/get) to periodically check for delete project status.
    //
    //Future<OperationReference> delete(String organization, String projectId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get a collection of team project properties.
    //
    //Future<List<ProjectProperty>> get Project Properties(String organization, String projectId, String apiVersion, { String keys }) async 
    test('test get Project Properties', () async {
      // TODO
    });

    // Get all projects in the organization that the authenticated user has access to.
    //
    //Future<List<TeamProjectReference>> list(String organization, String apiVersion, { String stateFilter, int $top, int $skip, String continuationToken, bool getDefaultTeamImageUrl }) async 
    test('test list', () async {
      // TODO
    });

    // Create, update, and delete team project properties.
    //
    //Future set Project Properties(String organization, String projectId, String apiVersion, JsonPatchDocument body) async 
    test('test set Project Properties', () async {
      // TODO
    });

    // Update an existing project's name, abbreviation, description, or restore a project.
    //
    //Future<OperationReference> update(String organization, String projectId, String apiVersion, TeamProject body) async 
    test('test update', () async {
      // TODO
    });

  });
}
