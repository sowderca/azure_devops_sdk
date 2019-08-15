part of azure_devops_sdk.api;

class SourceTestplanResponse {
  /* ID of the test plan. */
  int id = null;
  /* Name of the test plan. */
  String name = null;
  SourceTestplanResponse();

  @override
  String toString() {
    return 'SourceTestplanResponse[id=$id, name=$name, ]';
  }

  SourceTestplanResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<SourceTestplanResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<SourceTestplanResponse>() : json.map((value) => SourceTestplanResponse.fromJson(value)).toList();
  }

  static Map<String, SourceTestplanResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SourceTestplanResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SourceTestplanResponse.fromJson(value));
    }
    return map;
  }
}

