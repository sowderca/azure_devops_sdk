import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ApprovalsApi
void main() {
  var instance = ApprovalsApi();

  group('tests for ApprovalsApi', () {
    // Get a list of approvals
    //
    //Future<List<ReleaseApproval>> list(String organization, String project, String apiVersion, { String assignedToFilter, String statusFilter, String releaseIdsFilter, String typeFilter, int top, int continuationToken, String queryOrder, bool includeMyGroupApprovals }) async 
    test('test list', () async {
      // TODO
    });

    // Update status of an approval
    //
    //Future<ReleaseApproval> update(String organization, String project, int approvalId, String apiVersion, ReleaseApproval body) async 
    test('test update', () async {
      // TODO
    });

  });
}
