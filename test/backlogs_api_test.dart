import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for BacklogsApi
void main() {
  var instance = BacklogsApi();

  group('tests for BacklogsApi', () {
    // Get a backlog level
    //
    //Future<BacklogLevelConfiguration> get Backlog(String organization, String project, String team, String id, String apiVersion) async 
    test('test get Backlog', () async {
      // TODO
    });

    // Get a list of work items within a backlog level
    //
    //Future<BacklogLevelWorkItems> get Backlog Level Work Items(String organization, String project, String team, String backlogId, String apiVersion) async 
    test('test get Backlog Level Work Items', () async {
      // TODO
    });

    // List all backlog levels
    //
    //Future<List<BacklogLevelConfiguration>> list(String organization, String project, String team, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

  });
}
