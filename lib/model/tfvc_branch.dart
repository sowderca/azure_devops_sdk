part of azure_devops_sdk.api;

class TfvcBranch {
  /* Path for the branch. */
  String path = null;
  TfvcBranch();

  @override
  String toString() {
    return 'TfvcBranch[path=$path, ]';
  }

  TfvcBranch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (path != null)
      json['path'] = path;
    return json;
  }

  static List<TfvcBranch> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcBranch>() : json.map((value) => TfvcBranch.fromJson(value)).toList();
  }

  static Map<String, TfvcBranch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcBranch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcBranch.fromJson(value));
    }
    return map;
  }
}

