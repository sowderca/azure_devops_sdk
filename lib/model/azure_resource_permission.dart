part of azure_devops_sdk.api;

class AzureResourcePermission {
  
  bool provisioned = null;
  
  String resourceProvider = null;
  AzureResourcePermission();

  @override
  String toString() {
    return 'AzureResourcePermission[provisioned=$provisioned, resourceProvider=$resourceProvider, ]';
  }

  AzureResourcePermission.fromJson(Map<String, dynamic> json) {
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

  static List<AzureResourcePermission> listFromJson(List<dynamic> json) {
    return json == null ? List<AzureResourcePermission>() : json.map((value) => AzureResourcePermission.fromJson(value)).toList();
  }

  static Map<String, AzureResourcePermission> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AzureResourcePermission>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AzureResourcePermission.fromJson(value));
    }
    return map;
  }
}

