part of azure_devops_sdk.api;

class Group {
  /* Display Name of the Group */
  String displayName = null;
  /* Group Type */
  String groupType = null;
  //enum groupTypeEnum {  projectStakeholder,  projectReader,  projectContributor,  projectAdministrator,  custom,  };{
  Group();

  @override
  String toString() {
    return 'Group[displayName=$displayName, groupType=$groupType, ]';
  }

  Group.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['groupType'] == null) {
      groupType = null;
    } else {
          groupType = json['groupType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (groupType != null)
      json['groupType'] = groupType;
    return json;
  }

  static List<Group> listFromJson(List<dynamic> json) {
    return json == null ? List<Group>() : json.map((value) => Group.fromJson(value)).toList();
  }

  static Map<String, Group> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Group>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Group.fromJson(value));
    }
    return map;
  }
}

