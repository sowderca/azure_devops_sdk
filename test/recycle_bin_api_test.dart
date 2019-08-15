import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RecycleBinApi
void main() {
  var instance = RecycleBinApi();

  group('tests for RecycleBinApi', () {
    // Get information about a package and all its versions within the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<Package> get Recycle Bin Package(String organization, String feedId, String packageId, String project, String apiVersion, { bool includeUrls }) async 
    test('test get Recycle Bin Package', () async {
      // TODO
    });

    // Get information about a package version within the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<RecycleBinPackageVersion> get Recycle Bin Package Version(String organization, String feedId, String packageId, String packageVersionId, String project, String apiVersion, { bool includeUrls }) async 
    test('test get Recycle Bin Package Version', () async {
      // TODO
    });

    // Get a list of package versions within the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<List<RecycleBinPackageVersion>> get Recycle Bin Package Versions(String organization, String feedId, String packageId, String project, String apiVersion, { bool includeUrls }) async 
    test('test get Recycle Bin Package Versions', () async {
      // TODO
    });

    // Query for packages within the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<List<Package>> get Recycle Bin Packages(String organization, String feedId, String project, String apiVersion, { String protocolType, String packageNameQuery, bool includeUrls, int $top, int $skip, bool includeAllVersions }) async 
    test('test get Recycle Bin Packages', () async {
      // TODO
    });

  });
}
