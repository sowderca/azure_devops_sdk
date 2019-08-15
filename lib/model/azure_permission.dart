part of azure_devops_sdk.api;

class AzurePermission {
  
  bool provisioned = null;
  
  String resourceProvider = null;
  AzurePermission();

  @override
  String toString() {
    return 'AzurePermission[provisioned=$provisioned, resourceProvider=$resourceProvider, ]';
  }

  AzurePermission.fromJson(Map<String, dynamic> json) {
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

  static List<AzurePermission> listFromJson(List<dynamic> json) {
    return json == null ? List<AzurePermission>() : json.map((value) => AzurePermission.fromJson(value)).toList();
  }

  static Map<String, AzurePermission> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AzurePermission>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AzurePermission.fromJson(value));
    }
    return map;
  }
}

