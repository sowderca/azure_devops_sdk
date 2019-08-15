import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ApprovalOptions
void main() {
  var instance = ApprovalOptions();

  group('test ApprovalOptions', () {
    // Specify whether the approval can be skipped if the same approver approved the previous stage.
    // bool autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped (default value: null)
    test('to test the property `autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped`', () async {
      // TODO
    });

    // Specify whether revalidate identity of approver before completing the approval.
    // bool enforceIdentityRevalidation (default value: null)
    test('to test the property `enforceIdentityRevalidation`', () async {
      // TODO
    });

    // Approvals execution order.
    // String executionOrder (default value: null)
    test('to test the property `executionOrder`', () async {
      // TODO
    });

    // Specify whether the user requesting a release or deployment should allow to approver.
    // bool releaseCreatorCanBeApprover (default value: null)
    test('to test the property `releaseCreatorCanBeApprover`', () async {
      // TODO
    });

    // The number of approvals required to move release forward. '0' means all approvals required.
    // int requiredApproverCount (default value: null)
    test('to test the property `requiredApproverCount`', () async {
      // TODO
    });

    // Approval timeout. Approval default timeout is 30 days. Maximum allowed timeout is 365 days. '0' means default timeout i.e 30 days.
    // int timeoutInMinutes (default value: null)
    test('to test the property `timeoutInMinutes`', () async {
      // TODO
    });


  });

}
