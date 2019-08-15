import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ChangesetsApi
void main() {
  var instance = ChangesetsApi();

  group('tests for ChangesetsApi', () {
    // Retrieve a Tfvc Changeset
    //
    //Future<TfvcChangeset> callGet(String organization, int id, String project, String apiVersion, { int maxChangeCount, bool includeDetails, bool includeWorkItems, int maxCommentLength, bool includeSourceRename, int $skip, int $top, String $orderby, Object searchCriteriaMappings, bool searchCriteriaIncludeLinks, bool searchCriteriaFollowRenames, int searchCriteriaToId, int searchCriteriaFromId, String searchCriteriaToDate, String searchCriteriaFromDate, String searchCriteriaAuthor, String searchCriteriaItemPath }) async 
    test('test callGet', () async {
      // TODO
    });

    // Create a new changeset.  Accepts TfvcChangesetToCreate as JSON body
    //
    //Future<TfvcChangesetRef> create(String organization, String project, String apiVersion, TfvcChangeset body) async 
    test('test create', () async {
      // TODO
    });

    // Returns changesets for a given list of changeset Ids.
    //
    //Future<List<TfvcChangesetRef>> get Batched Changesets(String organization, String apiVersion, TfvcChangesetsRequestData body) async 
    test('test get Batched Changesets', () async {
      // TODO
    });

    // Retrieve Tfvc changes for a given changeset.
    //
    //Future<List<TfvcChange>> get Changeset Changes(String organization, int id, String apiVersion, { int $skip, int $top }) async 
    test('test get Changeset Changes', () async {
      // TODO
    });

    // Retrieves the work items associated with a particular changeset.
    //
    //Future<List<AssociatedWorkItem>> get Changeset Work Items(String organization, int id, String apiVersion) async 
    test('test get Changeset Work Items', () async {
      // TODO
    });

    // Retrieve Tfvc Changesets  Note: This is a new version of the GetChangesets API that doesn't expose the unneeded queryParams present in the 1.0 version of the API.
    //
    //Future<List<TfvcChangesetRef>> get Changesets(String organization, String project, String apiVersion, { int maxCommentLength, int $skip, int $top, String $orderby, Object searchCriteriaMappings, bool searchCriteriaIncludeLinks, bool searchCriteriaFollowRenames, int searchCriteriaToId, int searchCriteriaFromId, String searchCriteriaToDate, String searchCriteriaFromDate, String searchCriteriaAuthor, String searchCriteriaItemPath }) async 
    test('test get Changesets', () async {
      // TODO
    });

  });
}
