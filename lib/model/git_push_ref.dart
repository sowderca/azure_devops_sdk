part of azure_devops_sdk.api;

class GitPushRef {
  
  ReferenceLinks links = null;
  
  DateTime date = null;
  
  IdentityRef pushedBy = null;
  
  int pushId = null;
  
  String url = null;
  GitPushRef();

  @override
  String toString() {
    return 'GitPushRef[links=$links, date=$date, pushedBy=$pushedBy, pushId=$pushId, url=$url, ]';
  }

  GitPushRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['date'] == null) {
      date = null;
    } else {
      date = DateTime.parse(json['date']);
    }
    if (json['pushedBy'] == null) {
      pushedBy = null;
    } else {
      pushedBy = IdentityRef.fromJson(json['pushedBy']);
    }
    if (json['pushId'] == null) {
      pushId = null;
    } else {
          pushId = json['pushId'];
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
    if (date != null)
      json['date'] = date == null ? null : date.toUtc().toIso8601String();
    if (pushedBy != null)
      json['pushedBy'] = pushedBy;
    if (pushId != null)
      json['pushId'] = pushId;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitPushRef> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPushRef>() : json.map((value) => GitPushRef.fromJson(value)).toList();
  }

  static Map<String, GitPushRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPushRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPushRef.fromJson(value));
    }
    return map;
  }
}

