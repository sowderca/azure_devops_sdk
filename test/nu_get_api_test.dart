import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for NuGetApi
void main() {
  var instance = NuGetApi();

  group('tests for NuGetApi', () {
    // Send a package version from the feed to its paired recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<Package> delete Package Version(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion) async 
    test('test delete Package Version', () async {
      // TODO
    });

    // Delete a package version from a feed's recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future delete Package Version From Recycle Bin(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion) async 
    test('test delete Package Version From Recycle Bin', () async {
      // TODO
    });

    // Download a package version directly.  This API is intended for manual UI download options, not for programmatic access and scripting.  You may be heavily throttled if accessing this api for scripting purposes.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<String> download Package(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion, { String sourceProtocolVersion }) async 
    test('test download Package', () async {
      // TODO
    });

    // Get information about a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<Package> get Package Version(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion, { bool showDeleted }) async 
    test('test get Package Version', () async {
      // TODO
    });

    // View a package version's deletion/recycled status  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<NuGetPackageVersionDeletionState> getPackageVersionFromRecycleBin(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion) async 
    test('test getPackageVersionFromRecycleBin', () async {
      // TODO
    });

    // Restore a package version from a feed's recycle bin back into the active feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future restore Package Version From Recycle Bin(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion, NuGetRecycleBinPackageVersionDetails body) async 
    test('test restore Package Version From Recycle Bin', () async {
      // TODO
    });

    // Set mutable state on a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future update Package Version(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion, PackageVersionDetails body) async 
    test('test update Package Version', () async {
      // TODO
    });

    // Update several packages from a single feed in a single request. The updates to the packages do not happen atomically.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future update Package Versions(String organization, String feedId, String project, String apiVersion, NuGetPackagesBatchRequest body) async 
    test('test update Package Versions', () async {
      // TODO
    });

  });
}
