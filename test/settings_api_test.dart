import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for SettingsApi
void main() {
  var instance = SettingsApi();

  group('tests for SettingsApi', () {
    // Gets the build settings.
    //
    //Future<BuildSettings> callGet(String organization, String project, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    //Future<NotificationAdminSettings> callGet_0(String organization, String apiVersion) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Updates the build settings.
    //
    //Future<BuildSettings> update(String organization, String project, String apiVersion, BuildSettings body) async 
    test('test update', () async {
      // TODO
    });

    //Future<NotificationAdminSettings> update_0(String organization, String apiVersion, NotificationAdminSettingsUpdateParameters body) async 
    test('test update_0', () async {
      // TODO
    });

  });
}
