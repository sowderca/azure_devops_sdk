part of azure_devops_sdk.api;

class AsyncRefOperationTimeoutNotification {
  
  int operationId = null;
  AsyncRefOperationTimeoutNotification();

  @override
  String toString() {
    return 'AsyncRefOperationTimeoutNotification[operationId=$operationId, ]';
  }

  AsyncRefOperationTimeoutNotification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['operationId'] == null) {
      operationId = null;
    } else {
          operationId = json['operationId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (operationId != null)
      json['operationId'] = operationId;
    return json;
  }

  static List<AsyncRefOperationTimeoutNotification> listFromJson(List<dynamic> json) {
    return json == null ? List<AsyncRefOperationTimeoutNotification>() : json.map((value) => AsyncRefOperationTimeoutNotification.fromJson(value)).toList();
  }

  static Map<String, AsyncRefOperationTimeoutNotification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AsyncRefOperationTimeoutNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AsyncRefOperationTimeoutNotification.fromJson(value));
    }
    return map;
  }
}

