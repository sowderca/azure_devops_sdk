import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ChangeTrackingApi
void main() {
  var instance = ChangeTrackingApi();

  group('tests for ChangeTrackingApi', () {
    // Query a feed to determine its current state.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<FeedChange> get Feed Change(String organization, String feedId, String project, String apiVersion) async 
    test('test get Feed Change', () async {
      // TODO
    });

    // Query to determine which feeds have changed since the last call, tracked through the provided continuationToken. Only changes to a feed itself are returned and impact the continuationToken, not additions or alterations to packages within the feeds.  If the project parameter is present, gets all feed changes in the given project. If omitted, gets all feed changes in the organization.
    //
    //Future<FeedChangesResponse> get Feed Changes(String organization, String project, String apiVersion, { bool includeDeleted, int continuationToken, int batchSize }) async 
    test('test get Feed Changes', () async {
      // TODO
    });

    // Get a batch of package changes made to a feed.  The changes returned are 'most recent change' so if an Add is followed by an Update before you begin enumerating, you'll only see one change in the batch.  While consuming batches using the continuation token, you may see changes to the same package version multiple times if they are happening as you enumerate.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<PackageChangesResponse> get Package Changes(String organization, String feedId, String project, String apiVersion, { int continuationToken, int batchSize }) async 
    test('test get Package Changes', () async {
      // TODO
    });

  });
}
