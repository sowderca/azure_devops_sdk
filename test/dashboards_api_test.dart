import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for DashboardsApi
void main() {
  var instance = DashboardsApi();

  group('tests for DashboardsApi', () {
    // Get a dashboard by its ID.
    //
    //Future<Dashboard> callGet(String organization, String project, String dashboardId, String team, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Create the supplied dashboard.
    //
    //Future<Dashboard> create(String organization, String project, String team, String apiVersion, Dashboard body) async 
    test('test create', () async {
      // TODO
    });

    // Delete a dashboard given its ID. This also deletes the widgets associated with this dashboard.
    //
    //Future delete(String organization, String project, String dashboardId, String team, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get a list of dashboards.
    //
    //Future<DashboardGroup> list(String organization, String project, String team, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Replace configuration for the specified dashboard. Replaces Widget list on Dashboard, only if property is supplied.
    //
    //Future<Dashboard> replace Dashboard(String organization, String project, String dashboardId, String team, String apiVersion, Dashboard body) async 
    test('test replace Dashboard', () async {
      // TODO
    });

    // Update the name and position of dashboards in the supplied group, and remove omitted dashboards. Does not modify dashboard content.
    //
    //Future<DashboardGroup> replace Dashboards(String organization, String project, String team, String apiVersion, DashboardGroup body) async 
    test('test replace Dashboards', () async {
      // TODO
    });

  });
}
