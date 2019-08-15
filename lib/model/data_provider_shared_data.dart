part of azure_devops_sdk.api;

class DataProviderSharedData {
  DataProviderSharedData();

  @override
  String toString() {
    return 'DataProviderSharedData[]';
  }

  DataProviderSharedData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    return json;
  }

  static List<DataProviderSharedData> listFromJson(List<dynamic> json) {
    return json == null ? List<DataProviderSharedData>() : json.map((value) => DataProviderSharedData.fromJson(value)).toList();
  }

  static Map<String, DataProviderSharedData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DataProviderSharedData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DataProviderSharedData.fromJson(value));
    }
    return map;
  }
}

