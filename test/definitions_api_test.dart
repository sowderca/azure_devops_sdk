import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for DefinitionsApi
void main() {
  var instance = DefinitionsApi();

  group('tests for DefinitionsApi', () {
    // Gets a definition, optionally at a specific revision.
    //
    //Future<BuildDefinition> callGet(String organization, String project, int definitionId, String apiVersion, { int revision, DateTime minMetricsTime, String propertyFilters, bool includeLatestBuilds }) async 
    test('test callGet', () async {
      // TODO
    });

    // Get a release definition.
    //
    //Future<ReleaseDefinition> callGet_0(String organization, String project, int definitionId, String apiVersion, { String propertyFilters }) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Creates a new definition.
    //
    //Future<BuildDefinition> create(String organization, String project, String apiVersion, BuildDefinition body, { int definitionToCloneId, int definitionToCloneRevision }) async 
    test('test create', () async {
      // TODO
    });

    // Create a release definition
    //
    //Future<ReleaseDefinition> create_0(String organization, String project, String apiVersion, ReleaseDefinition body) async 
    test('test create_0', () async {
      // TODO
    });

    // Deletes a definition and all associated builds.
    //
    //Future delete(String organization, String project, int definitionId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Delete a release definition.
    //
    //Future delete_0(String organization, String project, int definitionId, String apiVersion, { String comment, bool forceDelete }) async 
    test('test delete_0', () async {
      // TODO
    });

    // Get release definition for a given definitionId and revision
    //
    //Future<String> get Definition Revision(String organization, String project, int definitionId, int revision, String apiVersion) async 
    test('test get Definition Revision', () async {
      // TODO
    });

    // Gets all revisions of a definition.
    //
    //Future<List<BuildDefinitionRevision>> get Definition Revisions(String organization, String project, int definitionId, String apiVersion) async 
    test('test get Definition Revisions', () async {
      // TODO
    });

    // Get revision history for a release definition
    //
    //Future<List<ReleaseDefinitionRevision>> get Release Definition History(String organization, String project, int definitionId, String apiVersion) async 
    test('test get Release Definition History', () async {
      // TODO
    });

    // Gets a list of definitions.
    //
    //Future<List<BuildDefinitionReference>> list(String organization, String project, String apiVersion, { String name, String repositoryId, String repositoryType, String queryOrder, int $top, String continuationToken, DateTime minMetricsTime, String definitionIds, String path, DateTime builtAfter, DateTime notBuiltAfter, bool includeAllProperties, bool includeLatestBuilds, String taskIdFilter, int processType, String yamlFilename }) async 
    test('test list', () async {
      // TODO
    });

    // Get a list of release definitions.
    //
    //Future<List<ReleaseDefinition>> list_0(String organization, String project, String apiVersion, { String searchText, String $expand, String artifactType, String artifactSourceId, int $top, String continuationToken, String queryOrder, String path, bool isExactNameMatch, String tagFilter, String propertyFilters, String definitionIdFilter, bool isDeleted, bool searchTextContainsFolderName }) async 
    test('test list_0', () async {
      // TODO
    });

    // Restores a deleted definition
    //
    //Future<BuildDefinition> restore Definition(String organization, String project, int definitionId, bool deleted, String apiVersion) async 
    test('test restore Definition', () async {
      // TODO
    });

    // Updates an existing definition.
    //
    //Future<BuildDefinition> update(String organization, String project, int definitionId, String apiVersion, BuildDefinition body, { int secretsSourceDefinitionId, int secretsSourceDefinitionRevision }) async 
    test('test update', () async {
      // TODO
    });

    // Update a release definition.
    //
    //Future<ReleaseDefinition> update_0(String organization, String project, String apiVersion, ReleaseDefinition body) async 
    test('test update_0', () async {
      // TODO
    });

  });
}
