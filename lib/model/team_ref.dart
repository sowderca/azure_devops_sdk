part of azure_devops_sdk.api;

class TeamRef {
  /* Team ID */
  String id = null;
  /* Team Name */
  String name = null;
  TeamRef();

  @override
  String toString() {
    return 'TeamRef[id=$id, name=$name, ]';
  }

  TeamRef.fromJson(Map<String, dynamic> json) {
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

  static List<TeamRef> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamRef>() : json.map((value) => TeamRef.fromJson(value)).toList();
  }

  static Map<String, TeamRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamRef.fromJson(value));
    }
    return map;
  }
}

