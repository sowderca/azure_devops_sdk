part of azure_devops_sdk.api;

class TfvcBranchRef {
  /* Path for the branch. */
  String path = null;
  TfvcBranchRef();

  @override
  String toString() {
    return 'TfvcBranchRef[path=$path, ]';
  }

  TfvcBranchRef.fromJson(Map<String, dynamic> json) {
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

  static List<TfvcBranchRef> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcBranchRef>() : json.map((value) => TfvcBranchRef.fromJson(value)).toList();
  }

  static Map<String, TfvcBranchRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcBranchRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcBranchRef.fromJson(value));
    }
    return map;
  }
}

