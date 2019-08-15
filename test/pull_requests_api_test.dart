import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestsApi
void main() {
  var instance = PullRequestsApi();

  group('tests for PullRequestsApi', () {
    // Create a pull request.
    //
    //Future<GitPullRequest> create(String organization, String repositoryId, String project, String apiVersion, GitPullRequest body, { bool supportsIterations }) async 
    test('test create', () async {
      // TODO
    });

    // Retrieve a pull request.
    //
    //Future<GitPullRequest> get Pull Request(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, { int maxCommentLength, int $skip, int $top, bool includeCommits, bool includeWorkItemRefs }) async 
    test('test get Pull Request', () async {
      // TODO
    });

    // Retrieve a pull request.
    //
    //Future<GitPullRequest> get Pull Request By Id(String organization, int pullRequestId, String project, String apiVersion) async 
    test('test get Pull Request By Id', () async {
      // TODO
    });

    // Retrieve all pull requests matching a specified criteria.
    //
    //Future<List<GitPullRequest>> get Pull Requests(String organization, String repositoryId, String project, String apiVersion, { bool searchCriteriaIncludeLinks, String searchCriteriaSourceRefName, String searchCriteriaSourceRepositoryId, String searchCriteriaTargetRefName, String searchCriteriaStatus, String searchCriteriaReviewerId, String searchCriteriaCreatorId, String searchCriteriaRepositoryId, int maxCommentLength, int $skip, int $top }) async 
    test('test get Pull Requests', () async {
      // TODO
    });

    // Retrieve all pull requests matching a specified criteria.
    //
    //Future<List<GitPullRequest>> get Pull Requests By Project(String organization, String project, String apiVersion, { bool searchCriteriaIncludeLinks, String searchCriteriaSourceRefName, String searchCriteriaSourceRepositoryId, String searchCriteriaTargetRefName, String searchCriteriaStatus, String searchCriteriaReviewerId, String searchCriteriaCreatorId, String searchCriteriaRepositoryId, int maxCommentLength, int $skip, int $top }) async 
    test('test get Pull Requests By Project', () async {
      // TODO
    });

    // Update a pull request  These are the properties that can be updated with the API:  - Status  - Title  - Description (up to 4000 characters)  - CompletionOptions  - MergeOptions  - AutoCompleteSetBy.Id  - TargetRefName (when the PR retargeting feature is enabled)  Attempting to update other properties outside of this list will either cause the server to throw an `InvalidArgumentValueException`,  or to silently ignore the update.
    //
    //Future<GitPullRequest> update(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, GitPullRequest body) async 
    test('test update', () async {
      // TODO
    });

  });
}
