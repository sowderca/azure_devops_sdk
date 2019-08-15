import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ChartsApi
void main() {
  var instance = ChartsApi();

  group('tests for ChartsApi', () {
    // Get a board chart
    //
    //Future<BoardChart> callGet(String organization, String project, String board, String name, String team, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Get board charts
    //
    //Future<List<BoardChartReference>> list(String organization, String project, String board, String team, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Update a board chart
    //
    //Future<BoardChart> update(String organization, String project, String board, String name, String team, String apiVersion, BoardChart body) async 
    test('test update', () async {
      // TODO
    });

  });
}
