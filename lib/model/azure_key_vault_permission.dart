part of azure_devops_sdk.api;

class AzureKeyVaultPermission {
  
  bool provisioned = null;
  
  String resourceProvider = null;
  AzureKeyVaultPermission();

  @override
  String toString() {
    return 'AzureKeyVaultPermission[provisioned=$provisioned, resourceProvider=$resourceProvider, ]';
  }

  AzureKeyVaultPermission.fromJson(Map<String, dynamic> json) {
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

  static List<AzureKeyVaultPermission> listFromJson(List<dynamic> json) {
    return json == null ? List<AzureKeyVaultPermission>() : json.map((value) => AzureKeyVaultPermission.fromJson(value)).toList();
  }

  static Map<String, AzureKeyVaultPermission> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AzureKeyVaultPermission>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AzureKeyVaultPermission.fromJson(value));
    }
    return map;
  }
}

