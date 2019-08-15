part of azure_devops_sdk.api;

class BacklogLevel {
  /* Reference name of the corresponding WIT category */
  String categoryReferenceName = null;
  /* Plural name for the backlog level */
  String pluralName = null;
  /* Collection of work item states that are included in the plan. The server will filter to only these work item types. */
  List<String> workItemStates = [];
  /* Collection of valid workitem type names for the given backlog level */
  List<String> workItemTypes = [];
  BacklogLevel();

  @override
  String toString() {
    return 'BacklogLevel[categoryReferenceName=$categoryReferenceName, pluralName=$pluralName, workItemStates=$workItemStates, workItemTypes=$workItemTypes, ]';
  }

  BacklogLevel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['categoryReferenceName'] == null) {
      categoryReferenceName = null;
    } else {
          categoryReferenceName = json['categoryReferenceName'];
    }
    if (json['pluralName'] == null) {
      pluralName = null;
    } else {
          pluralName = json['pluralName'];
    }
    if (json['workItemStates'] == null) {
      workItemStates = null;
    } else {
      workItemStates = (json['workItemStates'] as List).cast<String>();
    }
    if (json['workItemTypes'] == null) {
      workItemTypes = null;
    } else {
      workItemTypes = (json['workItemTypes'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (categoryReferenceName != null)
      json['categoryReferenceName'] = categoryReferenceName;
    if (pluralName != null)
      json['pluralName'] = pluralName;
    if (workItemStates != null)
      json['workItemStates'] = workItemStates;
    if (workItemTypes != null)
      json['workItemTypes'] = workItemTypes;
    return json;
  }

  static List<BacklogLevel> listFromJson(List<dynamic> json) {
    return json == null ? List<BacklogLevel>() : json.map((value) => BacklogLevel.fromJson(value)).toList();
  }

  static Map<String, BacklogLevel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BacklogLevel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BacklogLevel.fromJson(value));
    }
    return map;
  }
}

