import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ServiceSettingsApi
void main() {
  var instance = ServiceSettingsApi();

  group('tests for ServiceSettingsApi', () {
    // Get all service-wide feed creation and administration permissions.
    //
    //Future<List<GlobalPermission>> getGlobalPermissions(String organization, String apiVersion, { bool includeIds }) async 
    test('test getGlobalPermissions', () async {
      // TODO
    });

    // Set service-wide permissions that govern feed creation and administration.
    //
    //Future<List<GlobalPermission>> setGlobalPermissions(String organization, String apiVersion, List<GlobalPermission> body) async 
    test('test setGlobalPermissions', () async {
      // TODO
    });

  });
}
