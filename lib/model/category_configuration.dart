part of azure_devops_sdk.api;

class CategoryConfiguration {
  /* Name */
  String name = null;
  /* Category Reference Name */
  String referenceName = null;
  /* Work item types for the backlog category */
  List<WorkItemTypeReference> workItemTypes = [];
  CategoryConfiguration();

  @override
  String toString() {
    return 'CategoryConfiguration[name=$name, referenceName=$referenceName, workItemTypes=$workItemTypes, ]';
  }

  CategoryConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['referenceName'] == null) {
      referenceName = null;
    } else {
          referenceName = json['referenceName'];
    }
    if (json['workItemTypes'] == null) {
      workItemTypes = null;
    } else {
      workItemTypes = WorkItemTypeReference.listFromJson(json['workItemTypes']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    if (workItemTypes != null)
      json['workItemTypes'] = workItemTypes;
    return json;
  }

  static List<CategoryConfiguration> listFromJson(List<dynamic> json) {
    return json == null ? List<CategoryConfiguration>() : json.map((value) => CategoryConfiguration.fromJson(value)).toList();
  }

  static Map<String, CategoryConfiguration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoryConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CategoryConfiguration.fromJson(value));
    }
    return map;
  }
}

