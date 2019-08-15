part of azure_devops_sdk.api;

class GroupOption {
  
  AccessLevel accessLevel = null;
  
  Group group = null;
  GroupOption();

  @override
  String toString() {
    return 'GroupOption[accessLevel=$accessLevel, group=$group, ]';
  }

  GroupOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accessLevel'] == null) {
      accessLevel = null;
    } else {
      accessLevel = AccessLevel.fromJson(json['accessLevel']);
    }
    if (json['group'] == null) {
      group = null;
    } else {
      group = Group.fromJson(json['group']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accessLevel != null)
      json['accessLevel'] = accessLevel;
    if (group != null)
      json['group'] = group;
    return json;
  }

  static List<GroupOption> listFromJson(List<dynamic> json) {
    return json == null ? List<GroupOption>() : json.map((value) => GroupOption.fromJson(value)).toList();
  }

  static Map<String, GroupOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GroupOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GroupOption.fromJson(value));
    }
    return map;
  }
}

