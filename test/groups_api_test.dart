import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for GroupsApi
void main() {
  var instance = GroupsApi();

  group('tests for GroupsApi', () {
    // Adds a group to the work item form.
    //
    //Future<Group> add(String organization, String processId, String witRefName, String pageId, String sectionId, String apiVersion, Group body) async 
    test('test add', () async {
      // TODO
    });

    // Get a group by its descriptor.  The group will be returned even if it has been deleted from the account or has had all its memberships deleted.
    //
    //Future<GraphGroup> callGet(String organization, String groupDescriptor, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Create a new Azure DevOps group or materialize an existing AAD group.  The body of the request must be a derived type of GraphGroupCreationContext:   * GraphGroupVstsCreationContext - Create a new Azure DevOps group that is not backed by an external provider.   * GraphGroupMailAddressCreationContext - Create a new group using the mail address as a reference to an existing group from an external AD or AAD backed provider.   * GraphGroupOriginIdCreationContext - Create a new group using the OriginID as a reference to a group from an external AD or AAD backed provider.   Optionally, you can add the newly created group as a member of an existing Azure DevOps group and/or specify a custom storage key for the group.
    //
    //Future<GraphGroup> create(String organization, String apiVersion, GraphGroupCreationContext body, { String scopeDescriptor, String groupDescriptors }) async 
    test('test create', () async {
      // TODO
    });

    // Removes an Azure DevOps group from all of its parent groups.  The group will still be visible, but membership  checks for the group, and all descendants which derive membership through it, will return false.â
    //
    //Future delete(String organization, String groupDescriptor, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Gets a list of all groups in the current scope (usually organization or account).  The optional parameters are used to filter down the returned results. Returned results are in no guaranteed order.   Since the list of groups may be large, results are returned in pages of groups.  If there are more results  than can be returned in a single page, the result set will contain a continuation token for retrieval of the  next set of results.
    //
    //Future<List<GraphGroup>> list(String organization, String apiVersion, { String scopeDescriptor, String subjectTypes, String continuationToken }) async 
    test('test list', () async {
      // TODO
    });

    // Moves a group to a different section.
    //
    //Future<Group> move Group To Section(String organization, String processId, String witRefName, String pageId, String sectionId, String groupId, String removeFromSectionId, String apiVersion, Group body) async 
    test('test move Group To Section', () async {
      // TODO
    });

    // Removes a group from the work item form.
    //
    //Future remove Group(String organization, String processId, String witRefName, String pageId, String sectionId, String groupId, String apiVersion) async 
    test('test remove Group', () async {
      // TODO
    });

    // Update the properties of an Azure DevOps group.  Currently limited to only changing the description and account name.
    //
    //Future<GraphGroup> update(String organization, String groupDescriptor, String apiVersion, JsonPatchDocument body) async 
    test('test update', () async {
      // TODO
    });

    // Updates a group in the work item form.
    //
    //Future<Group> update_0(String organization, String processId, String witRefName, String pageId, String sectionId, String groupId, String apiVersion, Group body) async 
    test('test update_0', () async {
      // TODO
    });

  });
}
