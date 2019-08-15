import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RefsApi
void main() {
  var instance = RefsApi();

  group('tests for RefsApi', () {
    // Queries the provided repository for its refs and returns them.
    //
    //Future<List<GitRef>> list(String organization, String repositoryId, String project, String apiVersion, { String filter, bool includeLinks, bool includeStatuses, bool includeMyBranches, bool latestStatusesOnly, bool peelTags, String filterContains, int $top, String continuationToken }) async 
    test('test list', () async {
      // TODO
    });

    // Lock or Unlock a branch.
    //
    //Future<GitRef> update Ref(String organization, String repositoryId, String filter, String project, String apiVersion, GitRefUpdate body, { String projectId }) async 
    test('test update Ref', () async {
      // TODO
    });

    // Creating, updating, or deleting refs(branches).  Updating a ref means making it point at a different commit than it used to. You must specify both the old and new commit to avoid race conditions.
    //
    //Future<List<GitRefUpdateResult>> update Refs(String organization, String repositoryId, String project, String apiVersion, List<GitRefUpdate> body, { String projectId }) async 
    test('test update Refs', () async {
      // TODO
    });

  });
}
