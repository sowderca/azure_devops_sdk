part of azure_devops_sdk.api;

class AzureRoleAssignmentPermission {
  
  bool provisioned = null;
  
  String resourceProvider = null;
  AzureRoleAssignmentPermission();

  @override
  String toString() {
    return 'AzureRoleAssignmentPermission[provisioned=$provisioned, resourceProvider=$resourceProvider, ]';
  }

  AzureRoleAssignmentPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['provisioned'] == null) {
      provisioned = null;
    } else {
          provisioned = json['provisioned'];
    }
    if (json['resourceProvider'] == null) {
      resourceProvider = null;
    } else {
          resourceProvider = json['resourceProvider'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (provisioned != null)
      json['provisioned'] = provisioned;
    if (resourceProvider != null)
      json['resourceProvider'] = resourceProvider;
    return json;
  }

  static List<AzureRoleAssignmentPermission> listFromJson(List<dynamic> json) {
    return json == null ? List<AzureRoleAssignmentPermission>() : json.map((value) => AzureRoleAssignmentPermission.fromJson(value)).toList();
  }

  static Map<String, AzureRoleAssignmentPermission> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AzureRoleAssignmentPermission>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AzureRoleAssignmentPermission.fromJson(value));
    }
    return map;
  }
}

