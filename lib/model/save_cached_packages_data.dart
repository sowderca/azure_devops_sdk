part of azure_devops_sdk.api;

class SaveCachedPackagesData {
  SaveCachedPackagesData();

  @override
  String toString() {
    return 'SaveCachedPackagesData[]';
  }

  SaveCachedPackagesData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    return json;
  }

  static List<SaveCachedPackagesData> listFromJson(List<dynamic> json) {
    return json == null ? List<SaveCachedPackagesData>() : json.map((value) => SaveCachedPackagesData.fromJson(value)).toList();
  }

  static Map<String, SaveCachedPackagesData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SaveCachedPackagesData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SaveCachedPackagesData.fromJson(value));
    }
    return map;
  }
}

