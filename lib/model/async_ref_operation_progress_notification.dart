part of azure_devops_sdk.api;

class AsyncRefOperationProgressNotification {
  
  int operationId = null;
  AsyncRefOperationProgressNotification();

  @override
  String toString() {
    return 'AsyncRefOperationProgressNotification[operationId=$operationId, ]';
  }

  AsyncRefOperationProgressNotification.fromJson(Map<String, dynamic> json) {
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

  static List<AsyncRefOperationProgressNotification> listFromJson(List<dynamic> json) {
    return json == null ? List<AsyncRefOperationProgressNotification>() : json.map((value) => AsyncRefOperationProgressNotification.fromJson(value)).toList();
  }

  static Map<String, AsyncRefOperationProgressNotification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AsyncRefOperationProgressNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AsyncRefOperationProgressNotification.fromJson(value));
    }
    return map;
  }
}

