import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for InstalledExtensionsApi
void main() {
  var instance = InstalledExtensionsApi();

  group('tests for InstalledExtensionsApi', () {
    // Get an installed extension by its publisher and extension name.
    //
    //Future<InstalledExtension> callGet(String organization, String publisherName, String extensionName, String apiVersion, { String assetTypes }) async 
    test('test callGet', () async {
      // TODO
    });

    // Install the specified extension into the account / project collection.
    //
    //Future<InstalledExtension> install Extension By Name(String organization, String publisherName, String extensionName, String version, String apiVersion) async 
    test('test install Extension By Name', () async {
      // TODO
    });

    // List the installed extensions in the account / project collection.
    //
    //Future<List<InstalledExtension>> list(String organization, String apiVersion, { bool includeDisabledExtensions, bool includeErrors, String assetTypes, bool includeInstallationIssues }) async 
    test('test list', () async {
      // TODO
    });

    // Uninstall the specified extension from the account / project collection.
    //
    //Future uninstall Extension By Name(String organization, String publisherName, String extensionName, String apiVersion, { String reason, String reasonCode }) async 
    test('test uninstall Extension By Name', () async {
      // TODO
    });

    // Update an installed extension. Typically this API is used to enable or disable an extension.
    //
    //Future<InstalledExtension> update(String organization, String apiVersion, InstalledExtension body) async 
    test('test update', () async {
      // TODO
    });

  });
}
