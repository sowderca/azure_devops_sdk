part of azure_devops_sdk.api;

class AgentGroupAccessData {
  /* Type Specific details */
  String details = null;
  /* Access string */
  String storageConnectionString = null;
  /* Endpoint for the service */
  String storageEndPoint = null;
  /* Identifier for the storage (eg. table name) */
  String storageName = null;
  /* Type of the store (table, queue, blob) */
  String storageType = null;
  AgentGroupAccessData();

  @override
  String toString() {
    return 'AgentGroupAccessData[details=$details, storageConnectionString=$storageConnectionString, storageEndPoint=$storageEndPoint, storageName=$storageName, storageType=$storageType, ]';
  }

  AgentGroupAccessData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['details'] == null) {
      details = null;
    } else {
          details = json['details'];
    }
    if (json['storageConnectionString'] == null) {
      storageConnectionString = null;
    } else {
          storageConnectionString = json['storageConnectionString'];
    }
    if (json['storageEndPoint'] == null) {
      storageEndPoint = null;
    } else {
          storageEndPoint = json['storageEndPoint'];
    }
    if (json['storageName'] == null) {
      storageName = null;
    } else {
          storageName = json['storageName'];
    }
    if (json['storageType'] == null) {
      storageType = null;
    } else {
          storageType = json['storageType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (details != null)
      json['details'] = details;
    if (storageConnectionString != null)
      json['storageConnectionString'] = storageConnectionString;
    if (storageEndPoint != null)
      json['storageEndPoint'] = storageEndPoint;
    if (storageName != null)
      json['storageName'] = storageName;
    if (storageType != null)
      json['storageType'] = storageType;
    return json;
  }

  static List<AgentGroupAccessData> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentGroupAccessData>() : json.map((value) => AgentGroupAccessData.fromJson(value)).toList();
  }

  static Map<String, AgentGroupAccessData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentGroupAccessData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentGroupAccessData.fromJson(value));
    }
    return map;
  }
}

