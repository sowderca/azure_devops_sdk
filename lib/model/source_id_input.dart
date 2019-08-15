part of azure_devops_sdk.api;

class SourceIdInput {
  /* ID of source. */
  String id = null;
  /* Name of the source. */
  String name = null;
  SourceIdInput();

  @override
  String toString() {
    return 'SourceIdInput[id=$id, name=$name, ]';
  }

  SourceIdInput.fromJson(Map<String, dynamic> json) {
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

  static List<SourceIdInput> listFromJson(List<dynamic> json) {
    return json == null ? List<SourceIdInput>() : json.map((value) => SourceIdInput.fromJson(value)).toList();
  }

  static Map<String, SourceIdInput> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SourceIdInput>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SourceIdInput.fromJson(value));
    }
    return map;
  }
}

