import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitPullRequest
void main() {
  var instance = GitPullRequest();

  group('test GitPullRequest', () {
    // ReferenceLinks links (default value: null)
    test('to test the property `links`', () async {
      // TODO
    });

    // A string which uniquely identifies this pull request. To generate an artifact ID for a pull request, use this template: ```vstfs:///Git/PullRequestId/{projectId}/{repositoryId}/{pullRequestId}```
    // String artifactId (default value: null)
    test('to test the property `artifactId`', () async {
      // TODO
    });

    // IdentityRef autoCompleteSetBy (default value: null)
    test('to test the property `autoCompleteSetBy`', () async {
      // TODO
    });

    // IdentityRef closedBy (default value: null)
    test('to test the property `closedBy`', () async {
      // TODO
    });

    // The date when the pull request was closed (completed, abandoned, or merged externally).
    // DateTime closedDate (default value: null)
    test('to test the property `closedDate`', () async {
      // TODO
    });

    // The code review ID of the pull request. Used internally.
    // int codeReviewId (default value: null)
    test('to test the property `codeReviewId`', () async {
      // TODO
    });

    // The commits contained in the pull request.
    // List<GitCommitRef> commits (default value: [])
    test('to test the property `commits`', () async {
      // TODO
    });

    // GitPullRequestCompletionOptions completionOptions (default value: null)
    test('to test the property `completionOptions`', () async {
      // TODO
    });

    // The most recent date at which the pull request entered the queue to be completed. Used internally.
    // DateTime completionQueueTime (default value: null)
    test('to test the property `completionQueueTime`', () async {
      // TODO
    });

    // IdentityRef createdBy (default value: null)
    test('to test the property `createdBy`', () async {
      // TODO
    });

    // The date when the pull request was created.
    // DateTime creationDate (default value: null)
    test('to test the property `creationDate`', () async {
      // TODO
    });

    // The description of the pull request.
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // GitForkRef forkSource (default value: null)
    test('to test the property `forkSource`', () async {
      // TODO
    });

    // Draft / WIP pull request.
    // bool isDraft (default value: null)
    test('to test the property `isDraft`', () async {
      // TODO
    });

    // The labels associated with the pull request.
    // List<WebApiTagDefinition> labels (default value: [])
    test('to test the property `labels`', () async {
      // TODO
    });

    // GitCommitRef lastMergeCommit (default value: null)
    test('to test the property `lastMergeCommit`', () async {
      // TODO
    });

    // GitCommitRef lastMergeSourceCommit (default value: null)
    test('to test the property `lastMergeSourceCommit`', () async {
      // TODO
    });

    // GitCommitRef lastMergeTargetCommit (default value: null)
    test('to test the property `lastMergeTargetCommit`', () async {
      // TODO
    });

    // If set, pull request merge failed for this reason.
    // String mergeFailureMessage (default value: null)
    test('to test the property `mergeFailureMessage`', () async {
      // TODO
    });

    // The type of failure (if any) of the pull request merge.
    // String mergeFailureType (default value: null)
    test('to test the property `mergeFailureType`', () async {
      // TODO
    });

    // The ID of the job used to run the pull request merge. Used internally.
    // String mergeId (default value: null)
    test('to test the property `mergeId`', () async {
      // TODO
    });

    // GitPullRequestMergeOptions mergeOptions (default value: null)
    test('to test the property `mergeOptions`', () async {
      // TODO
    });

    // The current status of the pull request merge.
    // String mergeStatus (default value: null)
    test('to test the property `mergeStatus`', () async {
      // TODO
    });

    // The ID of the pull request.
    // int pullRequestId (default value: null)
    test('to test the property `pullRequestId`', () async {
      // TODO
    });

    // Used internally.
    // String remoteUrl (default value: null)
    test('to test the property `remoteUrl`', () async {
      // TODO
    });

    // GitRepository repository (default value: null)
    test('to test the property `repository`', () async {
      // TODO
    });

    // A list of reviewers on the pull request along with the state of their votes.
    // List<IdentityRefWithVote> reviewers (default value: [])
    test('to test the property `reviewers`', () async {
      // TODO
    });

    // The name of the source branch of the pull request.
    // String sourceRefName (default value: null)
    test('to test the property `sourceRefName`', () async {
      // TODO
    });

    // The status of the pull request.
    // String status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // If true, this pull request supports multiple iterations. Iteration support means individual pushes to the source branch of the pull request can be reviewed and comments left in one iteration will be tracked across future iterations.
    // bool supportsIterations (default value: null)
    test('to test the property `supportsIterations`', () async {
      // TODO
    });

    // The name of the target branch of the pull request.
    // String targetRefName (default value: null)
    test('to test the property `targetRefName`', () async {
      // TODO
    });

    // The title of the pull request.
    // String title (default value: null)
    test('to test the property `title`', () async {
      // TODO
    });

    // Used internally.
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });

    // Any work item references associated with this pull request.
    // List<ResourceRef> workItemRefs (default value: [])
    test('to test the property `workItemRefs`', () async {
      // TODO
    });


  });

}
