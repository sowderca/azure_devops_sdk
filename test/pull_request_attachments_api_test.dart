import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestAttachmentsApi
void main() {
  var instance = PullRequestAttachmentsApi();

  group('tests for PullRequestAttachmentsApi', () {
    // Get the file content of a pull request attachment.
    //
    //Future<String> callGet(String organization, String fileName, String repositoryId, int pullRequestId, String project, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Attach a new file to a pull request.
    //
    //Future<Attachment> create(String organization, String fileName, String repositoryId, int pullRequestId, String project, String apiVersion, String body) async 
    test('test create', () async {
      // TODO
    });

    // Delete a pull request attachment.
    //
    //Future delete(String organization, String fileName, String repositoryId, int pullRequestId, String project, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get a list of files attached to a given pull request.
    //
    //Future<List<Attachment>> list(String organization, String repositoryId, int pullRequestId, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

  });
}
