part of azure_devops_sdk.api;

class JsonPatchDocument {
  JsonPatchDocument();

  @override
  String toString() {
    return 'JsonPatchDocument[]';
  }

  JsonPatchDocument.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    return json;
  }

  static List<JsonPatchDocument> listFromJson(List<dynamic> json) {
    return json == null ? List<JsonPatchDocument>() : json.map((value) => JsonPatchDocument.fromJson(value)).toList();
  }

  static Map<String, JsonPatchDocument> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JsonPatchDocument>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JsonPatchDocument.fromJson(value));
    }
    return map;
  }
}

