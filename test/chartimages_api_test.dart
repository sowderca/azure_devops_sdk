import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ChartimagesApi
void main() {
  var instance = ChartimagesApi();

  group('tests for ChartimagesApi', () {
    // Get a board chart image.
    //
    //Future<String> get Board Chart Image(String organization, String project, String team, String board, String name, String apiVersion, { int width, int height, bool showDetails, String title }) async 
    test('test get Board Chart Image', () async {
      // TODO
    });

    // Get an iteration chart image.
    //
    //Future<String> get Iteration Chart Image(String organization, String project, String team, String iterationId, String name, String apiVersion, { int width, int height, bool showDetails, String title }) async 
    test('test get Iteration Chart Image', () async {
      // TODO
    });

    // Get an iterations chart image.
    //
    //Future<String> get Iterations Chart Image(String organization, String project, String team, String name, String apiVersion, { int iterationsNumber, int width, int height, bool showDetails, String title }) async 
    test('test get Iterations Chart Image', () async {
      // TODO
    });

  });
}
