part of azure_devops_sdk.api;

class AsyncRefOperationCommitLevelEventNotification {
  
  int operationId = null;
  AsyncRefOperationCommitLevelEventNotification();

  @override
  String toString() {
    return 'AsyncRefOperationCommitLevelEventNotification[operationId=$operationId, ]';
  }

  AsyncRefOperationCommitLevelEventNotification.fromJson(Map<String, dynamic> json) {
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

  static List<AsyncRefOperationCommitLevelEventNotification> listFromJson(List<dynamic> json) {
    return json == null ? List<AsyncRefOperationCommitLevelEventNotification>() : json.map((value) => AsyncRefOperationCommitLevelEventNotification.fromJson(value)).toList();
  }

  static Map<String, AsyncRefOperationCommitLevelEventNotification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AsyncRefOperationCommitLevelEventNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AsyncRefOperationCommitLevelEventNotification.fromJson(value));
    }
    return map;
  }
}

