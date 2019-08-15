part of azure_devops_sdk.api;

class BuildOptionGroupDefinition {
  /* The name of the group to display in the UI. */
  String displayName = null;
  /* Indicates whether the group is initially displayed as expanded in the UI. */
  bool isExpanded = null;
  /* The internal name of the group. */
  String name = null;
  BuildOptionGroupDefinition();

  @override
  String toString() {
    return 'BuildOptionGroupDefinition[displayName=$displayName, isExpanded=$isExpanded, name=$name, ]';
  }

  BuildOptionGroupDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['isExpanded'] == null) {
      isExpanded = null;
    } else {
          isExpanded = json['isExpanded'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (isExpanded != null)
      json['isExpanded'] = isExpanded;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<BuildOptionGroupDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildOptionGroupDefinition>() : json.map((value) => BuildOptionGroupDefinition.fromJson(value)).toList();
  }

  static Map<String, BuildOptionGroupDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildOptionGroupDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildOptionGroupDefinition.fromJson(value));
    }
    return map;
  }
}

