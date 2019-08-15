part of azure_devops_sdk.api;

class BatchListData {
  BatchListData();

  @override
  String toString() {
    return 'BatchListData[]';
  }

  BatchListData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    return json;
  }

  static List<BatchListData> listFromJson(List<dynamic> json) {
    return json == null ? List<BatchListData>() : json.map((value) => BatchListData.fromJson(value)).toList();
  }

  static Map<String, BatchListData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BatchListData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BatchListData.fromJson(value));
    }
    return map;
  }
}

