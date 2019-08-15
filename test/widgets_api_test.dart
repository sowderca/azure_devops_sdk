import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for WidgetsApi
void main() {
  var instance = WidgetsApi();

  group('tests for WidgetsApi', () {
    // Create a widget on the specified dashboard.
    //
    //Future<Widget> create(String organization, String project, String dashboardId, String team, String apiVersion, Widget body) async 
    test('test create', () async {
      // TODO
    });

    // Delete the specified widget.
    //
    //Future<Dashboard> delete(String organization, String project, String dashboardId, String widgetId, String team, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get the current state of the specified widget.
    //
    //Future<Widget> get Widget(String organization, String project, String dashboardId, String widgetId, String team, String apiVersion) async 
    test('test get Widget', () async {
      // TODO
    });

    // Get widgets contained on the specified dashboard.
    //
    //Future<List<Widget>> get Widgets(String organization, String project, String dashboardId, String team, String apiVersion, { String eTag }) async 
    test('test get Widgets', () async {
      // TODO
    });

    // Override the  state of the specified widget.
    //
    //Future<Widget> replace Widget(String organization, String project, String dashboardId, String widgetId, String team, String apiVersion, Widget body) async 
    test('test replace Widget', () async {
      // TODO
    });

    // Replace the widgets on specified dashboard with the supplied widgets.
    //
    //Future<List<Widget>> replace Widgets(String organization, String project, String dashboardId, String team, String apiVersion, List<Widget> body, { String eTag }) async 
    test('test replace Widgets', () async {
      // TODO
    });

    // Perform a partial update of the specified widget.
    //
    //Future<Widget> update Widget(String organization, String project, String dashboardId, String widgetId, String team, String apiVersion, Widget body) async 
    test('test update Widget', () async {
      // TODO
    });

    // Update the supplied widgets on the dashboard using supplied state. State of existing Widgets not passed in the widget list is preserved.
    //
    //Future<List<Widget>> update Widgets(String organization, String project, String dashboardId, String team, String apiVersion, List<Widget> body, { String eTag }) async 
    test('test update Widgets', () async {
      // TODO
    });

  });
}
