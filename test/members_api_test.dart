import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for MembersApi
void main() {
  var instance = MembersApi();

  group('tests for MembersApi', () {
    // Add a member to a Group.
    //
    //Future add(String organization, String groupId, String memberId, String apiVersion) async 
    test('test add', () async {
      // TODO
    });

    // Get direct members of a Group.
    //
    //Future<PagedGraphMemberList> callGet(String organization, String groupId, String apiVersion, { int maxResults, String pagingToken }) async 
    test('test callGet', () async {
      // TODO
    });

    // Remove a member from a Group.
    //
    //Future remove Member From Group(String organization, String groupId, String memberId, String apiVersion) async 
    test('test remove Member From Group', () async {
      // TODO
    });

  });
}
