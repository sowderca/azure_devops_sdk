part of azure_devops_sdk.api;

class GitImportRequest {
  
  ReferenceLinks links = null;
  
  GitImportStatusDetail detailedStatus = null;
  /* The unique identifier for this import request. */
  int importRequestId = null;
  
  GitImportRequestParameters parameters = null;
  
  GitRepository repository = null;
  /* Current status of the import. */
  String status = null;
  //enum statusEnum {  queued,  inProgress,  completed,  failed,  abandoned,  };{
  /* A link back to this import request resource. */
  String url = null;
  GitImportRequest();

  @override
  String toString() {
    return 'GitImportRequest[links=$links, detailedStatus=$detailedStatus, importRequestId=$importRequestId, parameters=$parameters, repository=$repository, status=$status, url=$url, ]';
  }

  GitImportRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['detailedStatus'] == null) {
      detailedStatus = null;
    } else {
      detailedStatus = GitImportStatusDetail.fromJson(json['detailedStatus']);
    }
    if (json['importRequestId'] == null) {
      importRequestId = null;
    } else {
          importRequestId = json['importRequestId'];
    }
    if (json['parameters'] == null) {
      parameters = null;
    } else {
      parameters = GitImportRequestParameters.fromJson(json['parameters']);
    }
    if (json['repository'] == null) {
      repository = null;
    } else {
      repository = GitRepository.fromJson(json['repository']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
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
    if (detailedStatus != null)
      json['detailedStatus'] = detailedStatus;
    if (importRequestId != null)
      json['importRequestId'] = importRequestId;
    if (parameters != null)
      json['parameters'] = parameters;
    if (repository != null)
      json['repository'] = repository;
    if (status != null)
      json['status'] = status;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitImportRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<GitImportRequest>() : json.map((value) => GitImportRequest.fromJson(value)).toList();
  }

  static Map<String, GitImportRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitImportRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitImportRequest.fromJson(value));
    }
    return map;
  }
}

