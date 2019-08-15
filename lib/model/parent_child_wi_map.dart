part of azure_devops_sdk.api;

class ParentChildWIMap {
  
  List<int> childWorkItemIds = [];
  
  int id = null;
  
  String title = null;
  ParentChildWIMap();

  @override
  String toString() {
    return 'ParentChildWIMap[childWorkItemIds=$childWorkItemIds, id=$id, title=$title, ]';
  }

  ParentChildWIMap.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['childWorkItemIds'] == null) {
      childWorkItemIds = null;
    } else {
      childWorkItemIds = (json['childWorkItemIds'] as List).cast<int>();
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (childWorkItemIds != null)
      json['childWorkItemIds'] = childWorkItemIds;
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<ParentChildWIMap> listFromJson(List<dynamic> json) {
    return json == null ? List<ParentChildWIMap>() : json.map((value) => ParentChildWIMap.fromJson(value)).toList();
  }

  static Map<String, ParentChildWIMap> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ParentChildWIMap>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ParentChildWIMap.fromJson(value));
    }
    return map;
  }
}

