import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ArtifactDetailsApi
void main() {
  var instance = ArtifactDetailsApi();

  group('tests for ArtifactDetailsApi', () {
    // Generate a SVG badge for the latest version of a package.  The generated SVG is typically used as the image in an HTML link which takes users to the feed containing the package to accelerate discovery and consumption.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<String> get Badge(String organization, String feedId, String packageId, String project, String apiVersion) async 
    test('test get Badge', () async {
      // TODO
    });

    // Get details about a specific package.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<Package> get Package(String organization, String feedId, String packageId, String project, String apiVersion, { bool includeAllVersions, bool includeUrls, bool isListed, bool isRelease, bool includeDeleted, bool includeDescription }) async 
    test('test get Package', () async {
      // TODO
    });

    // Get details about a specific package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<PackageVersion> get Package Version(String organization, String feedId, String packageId, String packageVersionId, String project, String apiVersion, { bool includeUrls, bool isListed, bool isDeleted }) async 
    test('test get Package Version', () async {
      // TODO
    });

    // Get a list of package versions, optionally filtering by state.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<List<PackageVersion>> get Package Versions(String organization, String feedId, String packageId, String project, String apiVersion, { bool includeUrls, bool isListed, bool isDeleted }) async 
    test('test get Package Versions', () async {
      // TODO
    });

    // Get details about all of the packages in the feed. Use the various filters to include or exclude information from the result set.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<List<Package>> get Packages(String organization, String feedId, String project, String apiVersion, { String protocolType, String packageNameQuery, String normalizedPackageName, bool includeUrls, bool includeAllVersions, bool isListed, bool getTopPackageVersions, bool isRelease, bool includeDescription, int $top, int $skip, bool includeDeleted, bool isCached, String directUpstreamId }) async 
    test('test get Packages', () async {
      // TODO
    });

    // Gets provenance for a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<PackageVersionProvenance> getPackageVersionProvenance(String organization, String feedId, String packageId, String packageVersionId, String project, String apiVersion) async 
    test('test getPackageVersionProvenance', () async {
      // TODO
    });

    //Future<List<PackageMetrics>> query Package Metrics(String organization, String feedId, String project, String apiVersion, PackageMetricsQuery body) async 
    test('test query Package Metrics', () async {
      // TODO
    });

    //Future<List<PackageVersionMetrics>> query Package Version Metrics(String organization, String feedId, String packageId, String project, String apiVersion, PackageVersionMetricsQuery body) async 
    test('test query Package Version Metrics', () async {
      // TODO
    });

  });
}
