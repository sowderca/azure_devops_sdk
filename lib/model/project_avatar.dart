part of azure_devops_sdk.api;

class ProjectAvatar {
  /* The avatar image represented as a byte array. */
  List<String> image = [];
  ProjectAvatar();

  @override
  String toString() {
    return 'ProjectAvatar[image=$image, ]';
  }

  ProjectAvatar.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['image'] == null) {
      image = null;
    } else {
      image = (json['image'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (image != null)
      json['image'] = image;
    return json;
  }

  static List<ProjectAvatar> listFromJson(List<dynamic> json) {
    return json == null ? List<ProjectAvatar>() : json.map((value) => ProjectAvatar.fromJson(value)).toList();
  }

  static Map<String, ProjectAvatar> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProjectAvatar>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProjectAvatar.fromJson(value));
    }
    return map;
  }
}

