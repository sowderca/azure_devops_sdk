import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for SessionApi
void main() {
  var instance = SessionApi();

  group('tests for SessionApi', () {
    // Create a test session
    //
    //Future<TestSession> create(String organization, String project, String team, String apiVersion, TestSession body) async 
    test('test create', () async {
      // TODO
    });

    // Get a list of test sessions
    //
    //Future<List<TestSession>> list(String organization, String project, String team, String apiVersion, { int period, bool allSessions, bool includeAllProperties, String source, bool includeOnlyCompletedSessions }) async 
    test('test list', () async {
      // TODO
    });

    // Update a test session
    //
    //Future<TestSession> update(String organization, String project, String team, String apiVersion, TestSession body) async 
    test('test update', () async {
      // TODO
    });

  });
}
