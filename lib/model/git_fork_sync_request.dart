part of azure_devops_sdk.api;

class GitForkSyncRequest {
  
  ReferenceLinks links = null;
  
  GitForkOperationStatusDetail detailedStatus = null;
  /* Unique identifier for the operation. */
  int operationId = null;
  
  GlobalGitRepositoryKey source = null;
  /* If supplied, the set of ref mappings to use when performing a \"sync\" or create. If missing, all refs will be synchronized. */
  List<SourceToTargetRef> sourceToTargetRefs = [];
  
  String status = null;
  //enum statusEnum {  queued,  inProgress,  completed,  failed,  abandoned,  };{
  GitForkSyncRequest();

  @override
  String toString() {
    return 'GitForkSyncRequest[links=$links, detailedStatus=$detailedStatus, operationId=$operationId, source=$source, sourceToTargetRefs=$sourceToTargetRefs, status=$status, ]';
  }

  GitForkSyncRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['detailedStatus'] == null) {
      detailedStatus = null;
    } else {
      detailedStatus = GitForkOperationStatusDetail.fromJson(json['detailedStatus']);
    }
    if (json['operationId'] == null) {
      operationId = null;
    } else {
          operationId = json['operationId'];
    }
    if (json['source'] == null) {
      source = null;
    } else {
      source = GlobalGitRepositoryKey.fromJson(json['source']);
    }
    if (json['sourceToTargetRefs'] == null) {
      sourceToTargetRefs = null;
    } else {
      sourceToTargetRefs = SourceToTargetRef.listFromJson(json['sourceToTargetRefs']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (detailedStatus != null)
      json['detailedStatus'] = detailedStatus;
    if (operationId != null)
      json['operationId'] = operationId;
    if (source != null)
      json['source'] = source;
    if (sourceToTargetRefs != null)
      json['sourceToTargetRefs'] = sourceToTargetRefs;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<GitForkSyncRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<GitForkSyncRequest>() : json.map((value) => GitForkSyncRequest.fromJson(value)).toList();
  }

  static Map<String, GitForkSyncRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitForkSyncRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitForkSyncRequest.fromJson(value));
    }
    return map;
  }
}

