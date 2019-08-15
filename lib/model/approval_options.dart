part of azure_devops_sdk.api;

class ApprovalOptions {
  /* Specify whether the approval can be skipped if the same approver approved the previous stage. */
  bool autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped = null;
  /* Specify whether revalidate identity of approver before completing the approval. */
  bool enforceIdentityRevalidation = null;
  /* Approvals execution order. */
  String executionOrder = null;
  //enum executionOrderEnum {  beforeGates,  afterSuccessfulGates,  afterGatesAlways,  };{
  /* Specify whether the user requesting a release or deployment should allow to approver. */
  bool releaseCreatorCanBeApprover = null;
  /* The number of approvals required to move release forward. '0' means all approvals required. */
  int requiredApproverCount = null;
  /* Approval timeout. Approval default timeout is 30 days. Maximum allowed timeout is 365 days. '0' means default timeout i.e 30 days. */
  int timeoutInMinutes = null;
  ApprovalOptions();

  @override
  String toString() {
    return 'ApprovalOptions[autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped=$autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped, enforceIdentityRevalidation=$enforceIdentityRevalidation, executionOrder=$executionOrder, releaseCreatorCanBeApprover=$releaseCreatorCanBeApprover, requiredApproverCount=$requiredApproverCount, timeoutInMinutes=$timeoutInMinutes, ]';
  }

  ApprovalOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped'] == null) {
      autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped = null;
    } else {
          autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped = json['autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped'];
    }
    if (json['enforceIdentityRevalidation'] == null) {
      enforceIdentityRevalidation = null;
    } else {
          enforceIdentityRevalidation = json['enforceIdentityRevalidation'];
    }
    if (json['executionOrder'] == null) {
      executionOrder = null;
    } else {
          executionOrder = json['executionOrder'];
    }
    if (json['releaseCreatorCanBeApprover'] == null) {
      releaseCreatorCanBeApprover = null;
    } else {
          releaseCreatorCanBeApprover = json['releaseCreatorCanBeApprover'];
    }
    if (json['requiredApproverCount'] == null) {
      requiredApproverCount = null;
    } else {
          requiredApproverCount = json['requiredApproverCount'];
    }
    if (json['timeoutInMinutes'] == null) {
      timeoutInMinutes = null;
    } else {
          timeoutInMinutes = json['timeoutInMinutes'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped != null)
      json['autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped'] = autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped;
    if (enforceIdentityRevalidation != null)
      json['enforceIdentityRevalidation'] = enforceIdentityRevalidation;
    if (executionOrder != null)
      json['executionOrder'] = executionOrder;
    if (releaseCreatorCanBeApprover != null)
      json['releaseCreatorCanBeApprover'] = releaseCreatorCanBeApprover;
    if (requiredApproverCount != null)
      json['requiredApproverCount'] = requiredApproverCount;
    if (timeoutInMinutes != null)
      json['timeoutInMinutes'] = timeoutInMinutes;
    return json;
  }

  static List<ApprovalOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<ApprovalOptions>() : json.map((value) => ApprovalOptions.fromJson(value)).toList();
  }

  static Map<String, ApprovalOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApprovalOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApprovalOptions.fromJson(value));
    }
    return map;
  }
}

