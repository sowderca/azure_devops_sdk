part of azure_devops_sdk.api;

class AzureSpnOperationStatus {
  
  String state = null;
  
  String statusMessage = null;
  AzureSpnOperationStatus();

  @override
  String toString() {
    return 'AzureSpnOperationStatus[state=$state, statusMessage=$statusMessage, ]';
  }

  AzureSpnOperationStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['statusMessage'] == null) {
      statusMessage = null;
    } else {
          statusMessage = json['statusMessage'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (state != null)
      json['state'] = state;
    if (statusMessage != null)
      json['statusMessage'] = statusMessage;
    return json;
  }

  static List<AzureSpnOperationStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<AzureSpnOperationStatus>() : json.map((value) => AzureSpnOperationStatus.fromJson(value)).toList();
  }

  static Map<String, AzureSpnOperationStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AzureSpnOperationStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AzureSpnOperationStatus.fromJson(value));
    }
    return map;
  }
}

