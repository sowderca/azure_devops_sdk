import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitPullRequestIteration
void main() {
  var instance = GitPullRequestIteration();

  group('test GitPullRequestIteration', () {
    // ReferenceLinks links (default value: null)
    test('to test the property `links`', () async {
      // TODO
    });

    // IdentityRef author (default value: null)
    test('to test the property `author`', () async {
      // TODO
    });

    // Changes included with the pull request iteration.
    // List<GitPullRequestChange> changeList (default value: [])
    test('to test the property `changeList`', () async {
      // TODO
    });

    // The commits included with the pull request iteration.
    // List<GitCommitRef> commits (default value: [])
    test('to test the property `commits`', () async {
      // TODO
    });

    // GitCommitRef commonRefCommit (default value: null)
    test('to test the property `commonRefCommit`', () async {
      // TODO
    });

    // The creation date of the pull request iteration.
    // DateTime createdDate (default value: null)
    test('to test the property `createdDate`', () async {
      // TODO
    });

    // Description of the pull request iteration.
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // Indicates if the Commits property contains a truncated list of commits in this pull request iteration.
    // bool hasMoreCommits (default value: null)
    test('to test the property `hasMoreCommits`', () async {
      // TODO
    });

    // ID of the pull request iteration. Iterations are created as a result of creating and pushing updates to a pull request.
    // int id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // If the iteration reason is Retarget, this is the refName of the new target
    // String newTargetRefName (default value: null)
    test('to test the property `newTargetRefName`', () async {
      // TODO
    });

    // If the iteration reason is Retarget, this is the original target refName
    // String oldTargetRefName (default value: null)
    test('to test the property `oldTargetRefName`', () async {
      // TODO
    });

    // GitPushRef push (default value: null)
    test('to test the property `push`', () async {
      // TODO
    });

    // The reason for which the pull request iteration was created.
    // String reason (default value: null)
    test('to test the property `reason`', () async {
      // TODO
    });

    // GitCommitRef sourceRefCommit (default value: null)
    test('to test the property `sourceRefCommit`', () async {
      // TODO
    });

    // GitCommitRef targetRefCommit (default value: null)
    test('to test the property `targetRefCommit`', () async {
      // TODO
    });

    // The updated date of the pull request iteration.
    // DateTime updatedDate (default value: null)
    test('to test the property `updatedDate`', () async {
      // TODO
    });


  });

}
