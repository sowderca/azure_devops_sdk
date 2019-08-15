import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestReviewersApi
void main() {
  var instance = PullRequestReviewersApi();

  group('tests for PullRequestReviewersApi', () {
    // Retrieve information about a particular reviewer on a pull request
    //
    //Future<IdentityRefWithVote> callGet(String organization, String repositoryId, int pullRequestId, String reviewerId, String project, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Add a reviewer to a pull request or cast a vote.
    //
    //Future<IdentityRefWithVote> create Pull Request Reviewer(String organization, String repositoryId, int pullRequestId, String reviewerId, String project, String apiVersion, IdentityRefWithVote body) async 
    test('test create Pull Request Reviewer', () async {
      // TODO
    });

    // Add reviewers to a pull request.
    //
    //Future<List<IdentityRefWithVote>> create Pull Request Reviewers(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, List<IdentityRef> body) async 
    test('test create Pull Request Reviewers', () async {
      // TODO
    });

    // Remove a reviewer from a pull request.
    //
    //Future delete(String organization, String repositoryId, int pullRequestId, String reviewerId, String project, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Retrieve the reviewers for a pull request
    //
    //Future<List<IdentityRefWithVote>> list(String organization, String repositoryId, int pullRequestId, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Reset the votes of multiple reviewers on a pull request.  NOTE: This endpoint only supports updating votes, but does not support updating required reviewers (use policy) or display names.
    //
    //Future update(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, List<IdentityRefWithVote> body) async 
    test('test update', () async {
      // TODO
    });

  });
}
