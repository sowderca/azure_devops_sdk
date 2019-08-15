part of azure_devops_sdk.api;

class AsyncRefOperationCompletedNotification {
  
  int operationId = null;
  AsyncRefOperationCompletedNotification();

  @override
  String toString() {
    return 'AsyncRefOperationCompletedNotification[operationId=$operationId, ]';
  }

  AsyncRefOperationCompletedNotification.fromJson(Map<String, dynamic> json) {
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

  static List<AsyncRefOperationCompletedNotification> listFromJson(List<dynamic> json) {
    return json == null ? List<AsyncRefOperationCompletedNotification>() : json.map((value) => AsyncRefOperationCompletedNotification.fromJson(value)).toList();
  }

  static Map<String, AsyncRefOperationCompletedNotification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AsyncRefOperationCompletedNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AsyncRefOperationCompletedNotification.fromJson(value));
    }
    return map;
  }
}

