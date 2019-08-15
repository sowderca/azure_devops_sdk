import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for UniversalApi
void main() {
  var instance = UniversalApi();

  group('tests for UniversalApi', () {
    // Delete a package version from a feed's recycle bin.
    //
    //Future<Package> delete Package Version(String organization, String feedId, String packageName, String packageVersion, String apiVersion) async 
    test('test delete Package Version', () async {
      // TODO
    });

    // Delete a package version from the recycle bin.
    //
    //Future delete Package Version From Recycle Bin(String organization, String feedId, String packageName, String packageVersion, String apiVersion) async 
    test('test delete Package Version From Recycle Bin', () async {
      // TODO
    });

    // Show information about a package version.
    //
    //Future<Package> get Package Version(String organization, String feedId, String packageName, String packageVersion, String apiVersion, { bool showDeleted }) async 
    test('test get Package Version', () async {
      // TODO
    });

    // Get information about a package version in the recycle bin.
    //
    //Future<UPackPackageVersionDeletionState> getPackageVersionFromRecycleBin(String organization, String feedId, String packageName, String packageVersion, String apiVersion) async 
    test('test getPackageVersionFromRecycleBin', () async {
      // TODO
    });

    // Restore a package version from the recycle bin to its associated feed.
    //
    //Future restore Package Version From Recycle Bin(String organization, String feedId, String packageName, String packageVersion, String apiVersion, UPackRecycleBinPackageVersionDetails body) async 
    test('test restore Package Version From Recycle Bin', () async {
      // TODO
    });

    // Update information for a package version.
    //
    //Future update Package Version(String organization, String feedId, String packageName, String packageVersion, String apiVersion, PackageVersionDetails body) async 
    test('test update Package Version', () async {
      // TODO
    });

  });
}
