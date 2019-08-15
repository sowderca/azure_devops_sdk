part of azure_devops_sdk.api;

class GitConflict {
  
  ReferenceLinks links = null;
  
  int conflictId = null;
  
  String conflictPath = null;
  
  String conflictType = null;
  //enum conflictTypeEnum {  none,  addAdd,  addRename,  deleteEdit,  deleteRename,  directoryFile,  directoryChild,  editDelete,  editEdit,  fileDirectory,  rename1to2,  rename2to1,  renameAdd,  renameDelete,  renameRename,  };{
  
  GitCommitRef mergeBaseCommit = null;
  
  GitMergeOriginRef mergeOrigin = null;
  
  GitCommitRef mergeSourceCommit = null;
  
  GitCommitRef mergeTargetCommit = null;
  
  String resolutionError = null;
  //enum resolutionErrorEnum {  none,  mergeContentNotFound,  pathInUse,  invalidPath,  unknownAction,  unknownMergeType,  otherError,  };{
  
  String resolutionStatus = null;
  //enum resolutionStatusEnum {  unresolved,  partiallyResolved,  resolved,  };{
  
  IdentityRef resolvedBy = null;
  
  DateTime resolvedDate = null;
  
  String url = null;
  GitConflict();

  @override
  String toString() {
    return 'GitConflict[links=$links, conflictId=$conflictId, conflictPath=$conflictPath, conflictType=$conflictType, mergeBaseCommit=$mergeBaseCommit, mergeOrigin=$mergeOrigin, mergeSourceCommit=$mergeSourceCommit, mergeTargetCommit=$mergeTargetCommit, resolutionError=$resolutionError, resolutionStatus=$resolutionStatus, resolvedBy=$resolvedBy, resolvedDate=$resolvedDate, url=$url, ]';
  }

  GitConflict.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['conflictId'] == null) {
      conflictId = null;
    } else {
          conflictId = json['conflictId'];
    }
    if (json['conflictPath'] == null) {
      conflictPath = null;
    } else {
          conflictPath = json['conflictPath'];
    }
    if (json['conflictType'] == null) {
      conflictType = null;
    } else {
          conflictType = json['conflictType'];
    }
    if (json['mergeBaseCommit'] == null) {
      mergeBaseCommit = null;
    } else {
      mergeBaseCommit = GitCommitRef.fromJson(json['mergeBaseCommit']);
    }
    if (json['mergeOrigin'] == null) {
      mergeOrigin = null;
    } else {
      mergeOrigin = GitMergeOriginRef.fromJson(json['mergeOrigin']);
    }
    if (json['mergeSourceCommit'] == null) {
      mergeSourceCommit = null;
    } else {
      mergeSourceCommit = GitCommitRef.fromJson(json['mergeSourceCommit']);
    }
    if (json['mergeTargetCommit'] == null) {
      mergeTargetCommit = null;
    } else {
      mergeTargetCommit = GitCommitRef.fromJson(json['mergeTargetCommit']);
    }
    if (json['resolutionError'] == null) {
      resolutionError = null;
    } else {
          resolutionError = json['resolutionError'];
    }
    if (json['resolutionStatus'] == null) {
      resolutionStatus = null;
    } else {
          resolutionStatus = json['resolutionStatus'];
    }
    if (json['resolvedBy'] == null) {
      resolvedBy = null;
    } else {
      resolvedBy = IdentityRef.fromJson(json['resolvedBy']);
    }
    if (json['resolvedDate'] == null) {
      resolvedDate = null;
    } else {
      resolvedDate = DateTime.parse(json['resolvedDate']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (conflictId != null)
      json['conflictId'] = conflictId;
    if (conflictPath != null)
      json['conflictPath'] = conflictPath;
    if (conflictType != null)
      json['conflictType'] = conflictType;
    if (mergeBaseCommit != null)
      json['mergeBaseCommit'] = mergeBaseCommit;
    if (mergeOrigin != null)
      json['mergeOrigin'] = mergeOrigin;
    if (mergeSourceCommit != null)
      json['mergeSourceCommit'] = mergeSourceCommit;
    if (mergeTargetCommit != null)
      json['mergeTargetCommit'] = mergeTargetCommit;
    if (resolutionError != null)
      json['resolutionError'] = resolutionError;
    if (resolutionStatus != null)
      json['resolutionStatus'] = resolutionStatus;
    if (resolvedBy != null)
      json['resolvedBy'] = resolvedBy;
    if (resolvedDate != null)
      json['resolvedDate'] = resolvedDate == null ? null : resolvedDate.toUtc().toIso8601String();
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitConflict> listFromJson(List<dynamic> json) {
    return json == null ? List<GitConflict>() : json.map((value) => GitConflict.fromJson(value)).toList();
  }

  static Map<String, GitConflict> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitConflict>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitConflict.fromJson(value));
    }
    return map;
  }
}

