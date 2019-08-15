import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for WidgetTypesApi
void main() {
  var instance = WidgetTypesApi();

  group('tests for WidgetTypesApi', () {
    // Get the widget metadata satisfying the specified contribution ID.
    //
    //Future<WidgetMetadataResponse> get Widget Metadata(String organization, String contributionId, String project, String apiVersion) async 
    test('test get Widget Metadata', () async {
      // TODO
    });

    // Get all available widget metadata in alphabetical order.
    //
    //Future<WidgetTypesResponse> get Widget Types(String organization, String $scope, String project, String apiVersion) async 
    test('test get Widget Types', () async {
      // TODO
    });

  });
}
