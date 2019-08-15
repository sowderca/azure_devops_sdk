import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for FeedManagementApi
void main() {
  var instance = FeedManagementApi();

  group('tests for FeedManagementApi', () {
    // Create a feed, a container for various package types.  Feeds can be created in a project if the project parameter is included in the request url. If the project parameter is omitted, the feed will not be associated with a project and will be created at the organization level. Creating project-scoped feeds is in prerelease, and may not yet be available in your organization.
    //
    //Future<Feed> create Feed(String organization, String project, String apiVersion, Feed body) async 
    test('test create Feed', () async {
      // TODO
    });

    // Create a new view on the referenced feed.  The project parameter must be supplied if the feed was created in a project.
    //
    //Future<FeedView> create Feed View(String organization, String feedId, String project, String apiVersion, FeedView body) async 
    test('test create Feed View', () async {
      // TODO
    });

    // Remove a feed and all its packages. The action does not result in packages moving to the RecycleBin and is not reversible.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future delete Feed(String organization, String feedId, String project, String apiVersion) async 
    test('test delete Feed', () async {
      // TODO
    });

    // Delete a feed view.  The project parameter must be supplied if the feed was created in a project.
    //
    //Future delete Feed View(String organization, String feedId, String viewId, String project, String apiVersion) async 
    test('test delete Feed View', () async {
      // TODO
    });

    // Get the settings for a specific feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<Feed> get Feed(String organization, String feedId, String project, String apiVersion, { bool includeDeletedUpstreams }) async 
    test('test get Feed', () async {
      // TODO
    });

    // Get the permissions for a feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<List<FeedPermission>> get Feed Permissions(String organization, String feedId, String project, String apiVersion, { bool includeIds, bool excludeInheritedPermissions, String identityDescriptor }) async 
    test('test get Feed Permissions', () async {
      // TODO
    });

    // Get a view by Id.  The project parameter must be supplied if the feed was created in a project.
    //
    //Future<FeedView> get Feed View(String organization, String feedId, String viewId, String project, String apiVersion) async 
    test('test get Feed View', () async {
      // TODO
    });

    // Get all views for a feed.  The project parameter must be supplied if the feed was created in a project.
    //
    //Future<List<FeedView>> get Feed Views(String organization, String feedId, String project, String apiVersion) async 
    test('test get Feed Views', () async {
      // TODO
    });

    // Get all feeds in an account where you have the provided role access.  If the project parameter is present, gets all feeds in the given project. If omitted, gets all feeds in the organization.
    //
    //Future<List<Feed>> get Feeds(String organization, String project, String apiVersion, { String feedRole, bool includeDeletedUpstreams }) async 
    test('test get Feeds', () async {
      // TODO
    });

    // Update the permissions on a feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<List<FeedPermission>> set Feed Permissions(String organization, String feedId, String project, String apiVersion, List<FeedPermission> body) async 
    test('test set Feed Permissions', () async {
      // TODO
    });

    // Change the attributes of a feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<Feed> update Feed(String organization, String feedId, String project, String apiVersion, FeedUpdate body) async 
    test('test update Feed', () async {
      // TODO
    });

    // Update a view.  The project parameter must be supplied if the feed was created in a project.
    //
    //Future<FeedView> update Feed View(String organization, String feedId, String viewId, String project, String apiVersion, FeedView body) async 
    test('test update Feed View', () async {
      // TODO
    });

  });
}
