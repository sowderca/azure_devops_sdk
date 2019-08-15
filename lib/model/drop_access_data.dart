part of azure_devops_sdk.api;

class DropAccessData {
  
  String dropContainerUrl = null;
  /* The SaSkey to use for the drop. */
  String sasKey = null;
  DropAccessData();

  @override
  String toString() {
    return 'DropAccessData[dropContainerUrl=$dropContainerUrl, sasKey=$sasKey, ]';
  }

  DropAccessData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dropContainerUrl'] == null) {
      dropContainerUrl = null;
    } else {
          dropContainerUrl = json['dropContainerUrl'];
    }
    if (json['sasKey'] == null) {
      sasKey = null;
    } else {
          sasKey = json['sasKey'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dropContainerUrl != null)
      json['dropContainerUrl'] = dropContainerUrl;
    if (sasKey != null)
      json['sasKey'] = sasKey;
    return json;
  }

  static List<DropAccessData> listFromJson(List<dynamic> json) {
    return json == null ? List<DropAccessData>() : json.map((value) => DropAccessData.fromJson(value)).toList();
  }

  static Map<String, DropAccessData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DropAccessData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DropAccessData.fromJson(value));
    }
    return map;
  }
}

