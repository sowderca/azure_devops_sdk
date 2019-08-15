part of azure_devops_sdk.api;

class AzureManagementGroup {
  /* Display name of azure management group */
  String displayName = null;
  /* Id of azure management group */
  String id = null;
  /* Azure management group name */
  String name = null;
  /* Id of tenant from which azure management group belogs */
  String tenantId = null;
  AzureManagementGroup();

  @override
  String toString() {
    return 'AzureManagementGroup[displayName=$displayName, id=$id, name=$name, tenantId=$tenantId, ]';
  }

  AzureManagementGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['tenantId'] == null) {
      tenantId = null;
    } else {
          tenantId = json['tenantId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (tenantId != null)
      json['tenantId'] = tenantId;
    return json;
  }

  static List<AzureManagementGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<AzureManagementGroup>() : json.map((value) => AzureManagementGroup.fromJson(value)).toList();
  }

  static Map<String, AzureManagementGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AzureManagementGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AzureManagementGroup.fromJson(value));
    }
    return map;
  }
}

