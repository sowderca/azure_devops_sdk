part of azure_devops_sdk.api;

class GitRevert {
  
  ReferenceLinks links = null;
  
  GitAsyncRefOperationDetail detailedStatus = null;
  
  GitAsyncRefOperationParameters parameters = null;
  
  String status = null;
  //enum statusEnum {  queued,  inProgress,  completed,  failed,  abandoned,  };{
  /* A URL that can be used to make further requests for status about the operation */
  String url = null;
  GitRevert();

  @override
  String toString() {
    return 'GitRevert[links=$links, detailedStatus=$detailedStatus, parameters=$parameters, status=$status, url=$url, ]';
  }

  GitRevert.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['detailedStatus'] == null) {
      detailedStatus = null;
    } else {
      detailedStatus = GitAsyncRefOperationDetail.fromJson(json['detailedStatus']);
    }
    if (json['parameters'] == null) {
      parameters = null;
    } else {
      parameters = GitAsyncRefOperationParameters.fromJson(json['parameters']);
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
    if (parameters != null)
      json['parameters'] = parameters;
    if (status != null)
      json['status'] = status;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitRevert> listFromJson(List<dynamic> json) {
    return json == null ? List<GitRevert>() : json.map((value) => GitRevert.fromJson(value)).toList();
  }

  static Map<String, GitRevert> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitRevert>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitRevert.fromJson(value));
    }
    return map;
  }
}

