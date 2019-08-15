part of azure_devops_sdk.api;

class FeedBatchData {
  /*  */
  Object data = null;
  
  String operation = null;
  //enum operationEnum {  saveCachedPackages,  };{
  FeedBatchData();

  @override
  String toString() {
    return 'FeedBatchData[data=$data, operation=$operation, ]';
  }

  FeedBatchData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['data'] == null) {
      data = null;
    } else {
          data = json['data'];
    }
    if (json['operation'] == null) {
      operation = null;
    } else {
          operation = json['operation'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (operation != null)
      json['operation'] = operation;
    return json;
  }

  static List<FeedBatchData> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedBatchData>() : json.map((value) => FeedBatchData.fromJson(value)).toList();
  }

  static Map<String, FeedBatchData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedBatchData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedBatchData.fromJson(value));
    }
    return map;
  }
}

