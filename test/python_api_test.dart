import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PythonApi
void main() {
  var instance = PythonApi();

  group('tests for PythonApi', () {
    // Delete a package version, moving it to the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<Package> delete Package Version(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion) async 
    test('test delete Package Version', () async {
      // TODO
    });

    // Delete a package version from the feed, moving it to the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future delete Package Version From Recycle Bin(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion) async 
    test('test delete Package Version From Recycle Bin', () async {
      // TODO
    });

    // Download a python package file directly. This API is intended for manual UI download options, not for programmatic access and scripting.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<String> download Package(String organization, String feedId, String packageName, String packageVersion, String fileName, String project, String apiVersion) async 
    test('test download Package', () async {
      // TODO
    });

    // Get information about a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<Package> get Package Version(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion, { bool showDeleted }) async 
    test('test get Package Version', () async {
      // TODO
    });

    // Get information about a package version in the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<PyPiPackageVersionDeletionState> getPackageVersionFromRecycleBin(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion) async 
    test('test getPackageVersionFromRecycleBin', () async {
      // TODO
    });

    // Restore a package version from the recycle bin to its associated feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future restore Package Version From Recycle Bin(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion, PyPiRecycleBinPackageVersionDetails body) async 
    test('test restore Package Version From Recycle Bin', () async {
      // TODO
    });

    // Update state for a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future update Package Version(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion, PackageVersionDetails body) async 
    test('test update Package Version', () async {
      // TODO
    });

  });
}
