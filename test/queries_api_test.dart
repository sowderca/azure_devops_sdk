import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for QueriesApi
void main() {
  var instance = QueriesApi();

  group('tests for QueriesApi', () {
    // Retrieves an individual query and its children
    //
    //Future<QueryHierarchyItem> callGet(String organization, String project, String query, String apiVersion, { String $expand, int $depth, bool $includeDeleted }) async 
    test('test callGet', () async {
      // TODO
    });

    // Creates a query, or moves a query.  Learn more about Work Item Query Language (WIQL) syntax [here](https://docs.microsoft.com/en-us/vsts/collaborate/wiql-syntax?toc=/vsts/work/track/toc.json&bc=/vsts/work/track/breadcrumb/toc.json&view=vsts).
    //
    //Future<QueryHierarchyItem> create(String organization, String project, String query, String apiVersion, QueryHierarchyItem body, { bool validateWiqlOnly }) async 
    test('test create', () async {
      // TODO
    });

    // Delete a query or a folder. This deletes any permission change on the deleted query or folder and any of its descendants if it is a folder. It is important to note that the deleted permission changes cannot be recovered upon undeleting the query or folder.
    //
    //Future delete(String organization, String project, String query, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Gets a list of queries by ids (Maximum 1000)
    //
    //Future<List<QueryHierarchyItem>> get Queries Batch(String organization, String project, String apiVersion, QueryBatchGetRequest body) async 
    test('test get Queries Batch', () async {
      // TODO
    });

    // Gets the root queries and their children
    //
    //Future<List<QueryHierarchyItem>> list(String organization, String project, String apiVersion, { String $expand, int $depth, bool $includeDeleted }) async 
    test('test list', () async {
      // TODO
    });

    // Update a query or a folder. This allows you to update, rename and move queries and folders.
    //
    //Future<QueryHierarchyItem> update(String organization, String project, String query, String apiVersion, QueryHierarchyItem body, { bool $undeleteDescendants }) async 
    test('test update', () async {
      // TODO
    });

  });
}
