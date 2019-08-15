part of azure_devops_sdk.api;

class GitCherryPick {
  
  ReferenceLinks links = null;
  
  GitAsyncRefOperationDetail detailedStatus = null;
  
  GitAsyncRefOperationParameters parameters = null;
  
  String status = null;
  //enum statusEnum {  queued,  inProgress,  completed,  failed,  abandoned,  };{
  /* A URL that can be used to make further requests for status about the operation */
  String url = null;
  GitCherryPick();

  @override
  String toString() {
    return 'GitCherryPick[links=$links, detailedStatus=$detailedStatus, parameters=$parameters, status=$status, url=$url, ]';
  }

  GitCherryPick.fromJson(Map<String, dynamic> json) {
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

  static List<GitCherryPick> listFromJson(List<dynamic> json) {
    return json == null ? List<GitCherryPick>() : json.map((value) => GitCherryPick.fromJson(value)).toList();
  }

  static Map<String, GitCherryPick> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitCherryPick>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitCherryPick.fromJson(value));
    }
    return map;
  }
}

