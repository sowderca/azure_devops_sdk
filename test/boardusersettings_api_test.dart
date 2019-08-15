import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for BoardusersettingsApi
void main() {
  var instance = BoardusersettingsApi();

  group('tests for BoardusersettingsApi', () {
    // Get board user settings for a board id
    //
    //Future<BoardUserSettings> callGet(String organization, String project, String board, String team, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Update board user settings for the board id  We don't want stakeholders to update board settings (currently just autorefresh). The BacklogManagement feature check validates this.
    //
    //Future<BoardUserSettings> update(String organization, String project, String board, String team, String apiVersion, Map<String, String> body) async 
    test('test update', () async {
      // TODO
    });

  });
}
