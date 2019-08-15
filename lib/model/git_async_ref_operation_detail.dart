part of azure_devops_sdk.api;

class GitAsyncRefOperationDetail {
  /* Indicates if there was a conflict generated when trying to cherry pick or revert the changes. */
  bool conflict = null;
  /* The current commit from the list of commits that are being cherry picked or reverted. */
  String currentCommitId = null;
  /* Detailed information about why the cherry pick or revert failed to complete. */
  String failureMessage = null;
  /* A number between 0 and 1 indicating the percent complete of the operation. */
  double progress = null;
  /* Provides a status code that indicates the reason the cherry pick or revert failed. */
  String status = null;
  //enum statusEnum {  none,  invalidRefName,  refNameConflict,  createBranchPermissionRequired,  writePermissionRequired,  targetBranchDeleted,  gitObjectTooLarge,  operationIndentityNotFound,  asyncOperationNotFound,  other,  emptyCommitterSignature,  };{
  /* Indicates if the operation went beyond the maximum time allowed for a cherry pick or revert operation. */
  bool timedout = null;
  GitAsyncRefOperationDetail();

  @override
  String toString() {
    return 'GitAsyncRefOperationDetail[conflict=$conflict, currentCommitId=$currentCommitId, failureMessage=$failureMessage, progress=$progress, status=$status, timedout=$timedout, ]';
  }

  GitAsyncRefOperationDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['conflict'] == null) {
      conflict = null;
    } else {
          conflict = json['conflict'];
    }
    if (json['currentCommitId'] == null) {
      currentCommitId = null;
    } else {
          currentCommitId = json['currentCommitId'];
    }
    if (json['failureMessage'] == null) {
      failureMessage = null;
    } else {
          failureMessage = json['failureMessage'];
    }
    if (json['progress'] == null) {
      progress = null;
    } else {
          progress = json['progress'].toDouble();
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['timedout'] == null) {
      timedout = null;
    } else {
          timedout = json['timedout'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (conflict != null)
      json['conflict'] = conflict;
    if (currentCommitId != null)
      json['currentCommitId'] = currentCommitId;
    if (failureMessage != null)
      json['failureMessage'] = failureMessage;
    if (progress != null)
      json['progress'] = progress;
    if (status != null)
      json['status'] = status;
    if (timedout != null)
      json['timedout'] = timedout;
    return json;
  }

  static List<GitAsyncRefOperationDetail> listFromJson(List<dynamic> json) {
    return json == null ? List<GitAsyncRefOperationDetail>() : json.map((value) => GitAsyncRefOperationDetail.fromJson(value)).toList();
  }

  static Map<String, GitAsyncRefOperationDetail> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitAsyncRefOperationDetail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitAsyncRefOperationDetail.fromJson(value));
    }
    return map;
  }
}

