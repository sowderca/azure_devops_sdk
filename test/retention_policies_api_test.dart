import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RetentionPoliciesApi
void main() {
  var instance = RetentionPoliciesApi();

  group('tests for RetentionPoliciesApi', () {
    // Delete the retention policy for a feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future delete Retention Policy(String organization, String feedId, String project, String apiVersion) async 
    test('test delete Retention Policy', () async {
      // TODO
    });

    // Get the retention policy for a feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<FeedRetentionPolicy> get Retention Policy(String organization, String feedId, String project, String apiVersion) async 
    test('test get Retention Policy', () async {
      // TODO
    });

    // Set the retention policy for a feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
    //
    //Future<FeedRetentionPolicy> set Retention Policy(String organization, String feedId, String project, String apiVersion, FeedRetentionPolicy body) async 
    test('test set Retention Policy', () async {
      // TODO
    });

  });
}
