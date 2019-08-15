part of azure_devops_sdk.api;

class BatchDeprecateData {
  BatchDeprecateData();

  @override
  String toString() {
    return 'BatchDeprecateData[]';
  }

  BatchDeprecateData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    return json;
  }

  static List<BatchDeprecateData> listFromJson(List<dynamic> json) {
    return json == null ? List<BatchDeprecateData>() : json.map((value) => BatchDeprecateData.fromJson(value)).toList();
  }

  static Map<String, BatchDeprecateData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BatchDeprecateData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BatchDeprecateData.fromJson(value));
    }
    return map;
  }
}

