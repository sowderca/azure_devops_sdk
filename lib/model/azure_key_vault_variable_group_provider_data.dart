part of azure_devops_sdk.api;

class AzureKeyVaultVariableGroupProviderData {
  AzureKeyVaultVariableGroupProviderData();

  @override
  String toString() {
    return 'AzureKeyVaultVariableGroupProviderData[]';
  }

  AzureKeyVaultVariableGroupProviderData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    return json;
  }

  static List<AzureKeyVaultVariableGroupProviderData> listFromJson(List<dynamic> json) {
    return json == null ? List<AzureKeyVaultVariableGroupProviderData>() : json.map((value) => AzureKeyVaultVariableGroupProviderData.fromJson(value)).toList();
  }

  static Map<String, AzureKeyVaultVariableGroupProviderData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AzureKeyVaultVariableGroupProviderData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AzureKeyVaultVariableGroupProviderData.fromJson(value));
    }
    return map;
  }
}

