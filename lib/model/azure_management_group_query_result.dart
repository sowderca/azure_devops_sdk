part of azure_devops_sdk.api;

class AzureManagementGroupQueryResult {
  /* Error message in case of an exception */
  String errorMessage = null;
  /* List of azure management groups */
  List<AzureManagementGroup> value = [];
  AzureManagementGroupQueryResult();

  @override
  String toString() {
    return 'AzureManagementGroupQueryResult[errorMessage=$errorMessage, value=$value, ]';
  }

  AzureManagementGroupQueryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['errorMessage'] == null) {
      errorMessage = null;
    } else {
          errorMessage = json['errorMessage'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
      value = AzureManagementGroup.listFromJson(json['value']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<AzureManagementGroupQueryResult> listFromJson(List<dynamic> json) {
    return json == null ? List<AzureManagementGroupQueryResult>() : json.map((value) => AzureManagementGroupQueryResult.fromJson(value)).toList();
  }

  static Map<String, AzureManagementGroupQueryResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AzureManagementGroupQueryResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AzureManagementGroupQueryResult.fromJson(value));
    }
    return map;
  }
}

