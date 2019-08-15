import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for CardsettingsApi
void main() {
  var instance = CardsettingsApi();

  group('tests for CardsettingsApi', () {
    // Get board card settings for the board id or board by name
    //
    //Future<BoardCardSettings> callGet(String organization, String project, String board, String team, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Update board card settings for the board id or board by name
    //
    //Future<BoardCardSettings> update Board Card Settings(String organization, String project, String board, String team, String apiVersion, BoardCardSettings body) async 
    test('test update Board Card Settings', () async {
      // TODO
    });

    // Update taskboard card settings
    //
    //Future update Taskboard Card Settings(String organization, String project, String team, String apiVersion, BoardCardSettings body) async 
    test('test update Taskboard Card Settings', () async {
      // TODO
    });

  });
}
