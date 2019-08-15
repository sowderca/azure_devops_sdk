part of azure_devops_sdk.api;

class ProvisioningResult {
  /* Details about of the provisioning import events. */
  List<String> provisioningImportEvents = [];
  ProvisioningResult();

  @override
  String toString() {
    return 'ProvisioningResult[provisioningImportEvents=$provisioningImportEvents, ]';
  }

  ProvisioningResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['provisioningImportEvents'] == null) {
      provisioningImportEvents = null;
    } else {
      provisioningImportEvents = (json['provisioningImportEvents'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (provisioningImportEvents != null)
      json['provisioningImportEvents'] = provisioningImportEvents;
    return json;
  }

  static List<ProvisioningResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ProvisioningResult>() : json.map((value) => ProvisioningResult.fromJson(value)).toList();
  }

  static Map<String, ProvisioningResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProvisioningResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProvisioningResult.fromJson(value));
    }
    return map;
  }
}

