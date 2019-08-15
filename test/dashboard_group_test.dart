import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for DashboardGroup
void main() {
  var instance = DashboardGroup();

  group('test DashboardGroup', () {
    // ReferenceLinks links (default value: null)
    test('to test the property `links`', () async {
      // TODO
    });

    // A list of Dashboards held by the Dashboard Group
    // List<DashboardGroupEntry> dashboardEntries (default value: [])
    test('to test the property `dashboardEntries`', () async {
      // TODO
    });

    // Deprecated: The old permission model describing the level of permissions for the current team. Pre-M125.
    // String permission (default value: null)
    test('to test the property `permission`', () async {
      // TODO
    });

    // A permissions bit mask describing the security permissions of the current team for dashboards. When this permission is the value None, use GroupMemberPermission. Permissions are evaluated based on the presence of a value other than None, else the GroupMemberPermission will be saved.
    // String teamDashboardPermission (default value: null)
    test('to test the property `teamDashboardPermission`', () async {
      // TODO
    });

    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });


  });

}
