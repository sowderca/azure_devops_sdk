part of azure_devops_sdk.api;

class GitPushSearchCriteria {
  
  DateTime fromDate = null;
  /* Whether to include the _links field on the shallow references */
  bool includeLinks = null;
  
  bool includeRefUpdates = null;
  
  String pusherId = null;
  
  String refName = null;
  
  DateTime toDate = null;
  GitPushSearchCriteria();

  @override
  String toString() {
    return 'GitPushSearchCriteria[fromDate=$fromDate, includeLinks=$includeLinks, includeRefUpdates=$includeRefUpdates, pusherId=$pusherId, refName=$refName, toDate=$toDate, ]';
  }

  GitPushSearchCriteria.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fromDate'] == null) {
      fromDate = null;
    } else {
      fromDate = DateTime.parse(json['fromDate']);
    }
    if (json['includeLinks'] == null) {
      includeLinks = null;
    } else {
          includeLinks = json['includeLinks'];
    }
    if (json['includeRefUpdates'] == null) {
      includeRefUpdates = null;
    } else {
          includeRefUpdates = json['includeRefUpdates'];
    }
    if (json['pusherId'] == null) {
      pusherId = null;
    } else {
          pusherId = json['pusherId'];
    }
    if (json['refName'] == null) {
      refName = null;
    } else {
          refName = json['refName'];
    }
    if (json['toDate'] == null) {
      toDate = null;
    } else {
      toDate = DateTime.parse(json['toDate']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fromDate != null)
      json['fromDate'] = fromDate == null ? null : fromDate.toUtc().toIso8601String();
    if (includeLinks != null)
      json['includeLinks'] = includeLinks;
    if (includeRefUpdates != null)
      json['includeRefUpdates'] = includeRefUpdates;
    if (pusherId != null)
      json['pusherId'] = pusherId;
    if (refName != null)
      json['refName'] = refName;
    if (toDate != null)
      json['toDate'] = toDate == null ? null : toDate.toUtc().toIso8601String();
    return json;
  }

  static List<GitPushSearchCriteria> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPushSearchCriteria>() : json.map((value) => GitPushSearchCriteria.fromJson(value)).toList();
  }

  static Map<String, GitPushSearchCriteria> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPushSearchCriteria>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPushSearchCriteria.fromJson(value));
    }
    return map;
  }
}

