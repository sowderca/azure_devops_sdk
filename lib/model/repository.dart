part of azure_devops_sdk.api;

class Repository {
  /* Id of the repository. */
  String id = null;
  /* Name of the repository. */
  String name = null;
  /* Version control type of the result file. */
  String type = null;
  //enum typeEnum {  git,  tfvc,  custom,  };{
  Repository();

  @override
  String toString() {
    return 'Repository[id=$id, name=$name, type=$type, ]';
  }

  Repository.fromJson(Map<String, dynamic> json) {
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
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<Repository> listFromJson(List<dynamic> json) {
    return json == null ? List<Repository>() : json.map((value) => Repository.fromJson(value)).toList();
  }

  static Map<String, Repository> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Repository>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Repository.fromJson(value));
    }
    return map;
  }
}

