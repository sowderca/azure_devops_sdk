import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for MavenApi
void main() {
  var instance = MavenApi();

  group('tests for MavenApi', () {
    // Delete a package version from the feed and move it to the feed's recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future deletePackageVersion(String organization, String feed, String groupId, String artifactId, String version, String project, String apiVersion) async 
    test('test deletePackageVersion', () async {
      // TODO
    });

    // Permanently delete a package from a feed's recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future deletePackageVersionFromRecycleBin(String organization, String feed, String groupId, String artifactId, String version, String project, String apiVersion) async 
    test('test deletePackageVersionFromRecycleBin', () async {
      // TODO
    });

    // Fulfills Maven package file download requests by either returning the URL of the requested package file or, in the case of Azure DevOps Server (OnPrem), returning the content as a stream.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<String> downloadPackage(String organization, String feedId, String groupId, String artifactId, String version, String fileName, String project, String apiVersion) async 
    test('test downloadPackage', () async {
      // TODO
    });

    // Get information about a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<Package> get Package Version(String organization, String feed, String groupId, String artifactId, String version, String project, String apiVersion, { bool showDeleted }) async 
    test('test get Package Version', () async {
      // TODO
    });

    // Get information about a package version in the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<MavenPackageVersionDeletionState> getPackageVersionFromRecycleBin(String organization, String feed, String groupId, String artifactId, String version, String project, String apiVersion) async 
    test('test getPackageVersionFromRecycleBin', () async {
      // TODO
    });

    // Restore a package version from the recycle bin to its associated feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future restore Package Version From Recycle Bin(String organization, String feed, String groupId, String artifactId, String version, String project, String apiVersion, MavenRecycleBinPackageVersionDetails body) async 
    test('test restore Package Version From Recycle Bin', () async {
      // TODO
    });

  });
}
