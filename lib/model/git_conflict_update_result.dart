part of azure_devops_sdk.api;

class GitConflictUpdateResult {
  /* Conflict ID that was provided by input */
  int conflictId = null;
  /* Reason for failing */
  String customMessage = null;
  
  GitConflict updatedConflict = null;
  /* Status of the update on the server */
  String updateStatus = null;
  //enum updateStatusEnum {  succeeded,  badRequest,  invalidResolution,  unsupportedConflictType,  notFound,  };{
  GitConflictUpdateResult();

  @override
  String toString() {
    return 'GitConflictUpdateResult[conflictId=$conflictId, customMessage=$customMessage, updatedConflict=$updatedConflict, updateStatus=$updateStatus, ]';
  }

  GitConflictUpdateResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['conflictId'] == null) {
      conflictId = null;
    } else {
          conflictId = json['conflictId'];
    }
    if (json['customMessage'] == null) {
      customMessage = null;
    } else {
          customMessage = json['customMessage'];
    }
    if (json['updatedConflict'] == null) {
      updatedConflict = null;
    } else {
      updatedConflict = GitConflict.fromJson(json['updatedConflict']);
    }
    if (json['updateStatus'] == null) {
      updateStatus = null;
    } else {
          updateStatus = json['updateStatus'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (conflictId != null)
      json['conflictId'] = conflictId;
    if (customMessage != null)
      json['customMessage'] = customMessage;
    if (updatedConflict != null)
      json['updatedConflict'] = updatedConflict;
    if (updateStatus != null)
      json['updateStatus'] = updateStatus;
    return json;
  }

  static List<GitConflictUpdateResult> listFromJson(List<dynamic> json) {
    return json == null ? List<GitConflictUpdateResult>() : json.map((value) => GitConflictUpdateResult.fromJson(value)).toList();
  }

  static Map<String, GitConflictUpdateResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitConflictUpdateResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitConflictUpdateResult.fromJson(value));
    }
    return map;
  }
}

