import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitPullRequestSearchCriteria
void main() {
  var instance = GitPullRequestSearchCriteria();

  group('test GitPullRequestSearchCriteria', () {
    // If set, search for pull requests that were created by this identity.
    // String creatorId (default value: null)
    test('to test the property `creatorId`', () async {
      // TODO
    });

    // Whether to include the _links field on the shallow references
    // bool includeLinks (default value: null)
    test('to test the property `includeLinks`', () async {
      // TODO
    });

    // If set, search for pull requests whose target branch is in this repository.
    // String repositoryId (default value: null)
    test('to test the property `repositoryId`', () async {
      // TODO
    });

    // If set, search for pull requests that have this identity as a reviewer.
    // String reviewerId (default value: null)
    test('to test the property `reviewerId`', () async {
      // TODO
    });

    // If set, search for pull requests from this branch.
    // String sourceRefName (default value: null)
    test('to test the property `sourceRefName`', () async {
      // TODO
    });

    // If set, search for pull requests whose source branch is in this repository.
    // String sourceRepositoryId (default value: null)
    test('to test the property `sourceRepositoryId`', () async {
      // TODO
    });

    // If set, search for pull requests that are in this state. Defaults to Active if unset.
    // String status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // If set, search for pull requests into this branch.
    // String targetRefName (default value: null)
    test('to test the property `targetRefName`', () async {
      // TODO
    });


  });

}
