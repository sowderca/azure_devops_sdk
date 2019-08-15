part of azure_devops_sdk.api;

class GitRefUpdateResult {
  /* Custom message for the result object For instance, Reason for failing. */
  String customMessage = null;
  /* Whether the ref is locked or not */
  bool isLocked = null;
  /* Ref name */
  String name = null;
  /* New object ID */
  String newObjectId = null;
  /* Old object ID */
  String oldObjectId = null;
  /* Name of the plugin that rejected the updated. */
  String rejectedBy = null;
  /* Repository ID */
  String repositoryId = null;
  /* True if the ref update succeeded, false otherwise */
  bool success = null;
  /* Status of the update from the TFS server. */
  String updateStatus = null;
  //enum updateStatusEnum {  succeeded,  forcePushRequired,  staleOldObjectId,  invalidRefName,  unprocessed,  unresolvableToCommit,  writePermissionRequired,  manageNotePermissionRequired,  createBranchPermissionRequired,  createTagPermissionRequired,  rejectedByPlugin,  locked,  refNameConflict,  rejectedByPolicy,  succeededNonExistentRef,  succeededCorruptRef,  };{
  GitRefUpdateResult();

  @override
  String toString() {
    return 'GitRefUpdateResult[customMessage=$customMessage, isLocked=$isLocked, name=$name, newObjectId=$newObjectId, oldObjectId=$oldObjectId, rejectedBy=$rejectedBy, repositoryId=$repositoryId, success=$success, updateStatus=$updateStatus, ]';
  }

  GitRefUpdateResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['customMessage'] == null) {
      customMessage = null;
    } else {
          customMessage = json['customMessage'];
    }
    if (json['isLocked'] == null) {
      isLocked = null;
    } else {
          isLocked = json['isLocked'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['newObjectId'] == null) {
      newObjectId = null;
    } else {
          newObjectId = json['newObjectId'];
    }
    if (json['oldObjectId'] == null) {
      oldObjectId = null;
    } else {
          oldObjectId = json['oldObjectId'];
    }
    if (json['rejectedBy'] == null) {
      rejectedBy = null;
    } else {
          rejectedBy = json['rejectedBy'];
    }
    if (json['repositoryId'] == null) {
      repositoryId = null;
    } else {
          repositoryId = json['repositoryId'];
    }
    if (json['success'] == null) {
      success = null;
    } else {
          success = json['success'];
    }
    if (json['updateStatus'] == null) {
      updateStatus = null;
    } else {
          updateStatus = json['updateStatus'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (customMessage != null)
      json['customMessage'] = customMessage;
    if (isLocked != null)
      json['isLocked'] = isLocked;
    if (name != null)
      json['name'] = name;
    if (newObjectId != null)
      json['newObjectId'] = newObjectId;
    if (oldObjectId != null)
      json['oldObjectId'] = oldObjectId;
    if (rejectedBy != null)
      json['rejectedBy'] = rejectedBy;
    if (repositoryId != null)
      json['repositoryId'] = repositoryId;
    if (success != null)
      json['success'] = success;
    if (updateStatus != null)
      json['updateStatus'] = updateStatus;
    return json;
  }

  static List<GitRefUpdateResult> listFromJson(List<dynamic> json) {
    return json == null ? List<GitRefUpdateResult>() : json.map((value) => GitRefUpdateResult.fromJson(value)).toList();
  }

  static Map<String, GitRefUpdateResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitRefUpdateResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitRefUpdateResult.fromJson(value));
    }
    return map;
  }
}

