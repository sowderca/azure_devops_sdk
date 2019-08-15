import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for BoardsApi
void main() {
  var instance = BoardsApi();

  group('tests for BoardsApi', () {
    // Get board
    //
    //Future<Board> callGet(String organization, String project, String id, String team, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Get boards
    //
    //Future<List<BoardReference>> list(String organization, String project, String team, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Update board options
    //
    //Future<Map<String, String>> set Board Options(String organization, String project, String id, String team, String apiVersion, Map<String, String> body) async 
    test('test set Board Options', () async {
      // TODO
    });

  });
}
