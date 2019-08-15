part of azure_devops_sdk.api;

class AssociatedWorkItem {
  
  String assignedTo = null;
  /* Id of associated the work item. */
  int id = null;
  
  String state = null;
  
  String title = null;
  /* REST Url of the work item. */
  String url = null;
  
  String webUrl = null;
  
  String workItemType = null;
  AssociatedWorkItem();

  @override
  String toString() {
    return 'AssociatedWorkItem[assignedTo=$assignedTo, id=$id, state=$state, title=$title, url=$url, webUrl=$webUrl, workItemType=$workItemType, ]';
  }

  AssociatedWorkItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assignedTo'] == null) {
      assignedTo = null;
    } else {
          assignedTo = json['assignedTo'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['webUrl'] == null) {
      webUrl = null;
    } else {
          webUrl = json['webUrl'];
    }
    if (json['workItemType'] == null) {
      workItemType = null;
    } else {
          workItemType = json['workItemType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assignedTo != null)
      json['assignedTo'] = assignedTo;
    if (id != null)
      json['id'] = id;
    if (state != null)
      json['state'] = state;
    if (title != null)
      json['title'] = title;
    if (url != null)
      json['url'] = url;
    if (webUrl != null)
      json['webUrl'] = webUrl;
    if (workItemType != null)
      json['workItemType'] = workItemType;
    return json;
  }

  static List<AssociatedWorkItem> listFromJson(List<dynamic> json) {
    return json == null ? List<AssociatedWorkItem>() : json.map((value) => AssociatedWorkItem.fromJson(value)).toList();
  }

  static Map<String, AssociatedWorkItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AssociatedWorkItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AssociatedWorkItem.fromJson(value));
    }
    return map;
  }
}

