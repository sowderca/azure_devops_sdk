import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for NpmApi
void main() {
  var instance = NpmApi();

  group('tests for NpmApi', () {
    // Delete a package version without an npm scope from the recycle bin.
    //
    //Future delete Package Version From Recycle Bin(String organization, String feedId, String packageName, String packageVersion, String apiVersion) async 
    test('test delete Package Version From Recycle Bin', () async {
      // TODO
    });

    // Delete a package version with an npm scope from the recycle bin.
    //
    //Future delete Scoped Package Version From Recycle Bin(String organization, String feedId, String packageScope, String unscopedPackageName, String packageVersion, String apiVersion) async 
    test('test delete Scoped Package Version From Recycle Bin', () async {
      // TODO
    });

    // Get an unscoped npm package.
    //
    //Future<String> downloadPackage(String organization, String feedId, String packageName, String packageVersion, String apiVersion) async 
    test('test downloadPackage', () async {
      // TODO
    });

    //Future<String> downloadScopedPackage(String organization, String feedId, String packageScope, String unscopedPackageName, String packageVersion, String apiVersion) async 
    test('test downloadScopedPackage', () async {
      // TODO
    });

    // Get the Readme for a package version that has no npm scope.
    //
    //Future<String> getPackageReadme(String organization, String feedId, String packageName, String packageVersion, String apiVersion) async 
    test('test getPackageReadme', () async {
      // TODO
    });

    // Get information about an unscoped package version.
    //
    //Future<Package> getPackageVersion(String organization, String feedId, String packageName, String packageVersion, String apiVersion) async 
    test('test getPackageVersion', () async {
      // TODO
    });

    // Get information about an unscoped package version in the recycle bin.
    //
    //Future<NpmPackageVersionDeletionState> getPackageVersionFromRecycleBin(String organization, String feedId, String packageName, String packageVersion, String apiVersion) async 
    test('test getPackageVersionFromRecycleBin', () async {
      // TODO
    });

    // Get the Readme for a package version with an npm scope.
    //
    //Future<String> getScopedPackageReadme(String organization, String feedId, String packageScope, String unscopedPackageName, String packageVersion, String apiVersion) async 
    test('test getScopedPackageReadme', () async {
      // TODO
    });

    // Get information about a scoped package version (such as @scope/name).
    //
    //Future<Package> getScopedPackageVersion(String organization, String feedId, String packageScope, String unscopedPackageName, String packageVersion, String apiVersion) async 
    test('test getScopedPackageVersion', () async {
      // TODO
    });

    // Get information about a scoped package version in the recycle bin.
    //
    //Future<NpmPackageVersionDeletionState> getScopedPackageVersionFromRecycleBin(String organization, String feedId, String packageScope, String unscopedPackageName, String packageVersion, String apiVersion) async 
    test('test getScopedPackageVersionFromRecycleBin', () async {
      // TODO
    });

    // Restore a package version without an npm scope from the recycle bin to its feed.
    //
    //Future restore Package Version From Recycle Bin(String organization, String feedId, String packageName, String packageVersion, String apiVersion, NpmRecycleBinPackageVersionDetails body) async 
    test('test restore Package Version From Recycle Bin', () async {
      // TODO
    });

    // Restore a package version with an npm scope from the recycle bin to its feed.
    //
    //Future restore Scoped Package Version From Recycle Bin(String organization, String feedId, String packageScope, String unscopedPackageName, String packageVersion, String apiVersion, NpmRecycleBinPackageVersionDetails body) async 
    test('test restore Scoped Package Version From Recycle Bin', () async {
      // TODO
    });

    // Unpublish an unscoped package version.
    //
    //Future<Package> unpublish Package(String organization, String feedId, String packageName, String packageVersion, String apiVersion) async 
    test('test unpublish Package', () async {
      // TODO
    });

    // Unpublish a scoped package version (such as @scope/name).
    //
    //Future<Package> unpublish Scoped Package(String organization, String feedId, String packageScope, String unscopedPackageName, String packageVersion, String apiVersion) async 
    test('test unpublish Scoped Package', () async {
      // TODO
    });

    //Future<Package> update Package(String organization, String feedId, String packageName, String packageVersion, String apiVersion, PackageVersionDetails body) async 
    test('test update Package', () async {
      // TODO
    });

    // Update several packages from a single feed in a single request. The updates to the packages do not happen atomically.
    //
    //Future update Packages(String organization, String feedId, String apiVersion, NpmPackagesBatchRequest body) async 
    test('test update Packages', () async {
      // TODO
    });

    //Future<Package> update Scoped Package(String organization, String feedId, String packageScope, String unscopedPackageName, String packageVersion, String apiVersion, PackageVersionDetails body) async 
    test('test update Scoped Package', () async {
      // TODO
    });

  });
}
