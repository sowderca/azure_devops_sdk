import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for DashboardGroupEntryResponse
void main() {
  var instance = DashboardGroupEntryResponse();

  group('test DashboardGroupEntryResponse', () {
    // ReferenceLinks links (default value: null)
    test('to test the property `links`', () async {
      // TODO
    });

    // Description of the dashboard.
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // Server defined version tracking value, used for edit collision detection.
    // String eTag (default value: null)
    test('to test the property `eTag`', () async {
      // TODO
    });

    // ID of the Dashboard. Provided by service at creation time.
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Name of the Dashboard.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // ID of the Owner for a dashboard. For any legacy dashboards, this would be the unique identifier for the team associated with the dashboard.
    // String ownerId (default value: null)
    test('to test the property `ownerId`', () async {
      // TODO
    });

    // Position of the dashboard, within a dashboard group. If unset at creation time, position is decided by the service.
    // int position (default value: null)
    test('to test the property `position`', () async {
      // TODO
    });

    // Interval for client to automatically refresh the dashboard. Expressed in minutes.
    // int refreshInterval (default value: null)
    test('to test the property `refreshInterval`', () async {
      // TODO
    });

    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });

    // The set of Widgets on the dashboard.
    // List<Widget> widgets (default value: [])
    test('to test the property `widgets`', () async {
      // TODO
    });


  });

}
