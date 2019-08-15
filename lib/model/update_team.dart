part of azure_devops_sdk.api;

class UpdateTeam {
  /* New description for the team. */
  String description = null;
  /* New name for the team. */
  String name = null;
  UpdateTeam();

  @override
  String toString() {
    return 'UpdateTeam[description=$description, name=$name, ]';
  }

  UpdateTeam.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<UpdateTeam> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateTeam>() : json.map((value) => UpdateTeam.fromJson(value)).toList();
  }

  static Map<String, UpdateTeam> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateTeam>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateTeam.fromJson(value));
    }
    return map;
  }
}

