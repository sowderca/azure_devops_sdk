part of azure_devops_sdk.api;

class TfvcShallowBranchRef {
  /* Path for the branch. */
  String path = null;
  TfvcShallowBranchRef();

  @override
  String toString() {
    return 'TfvcShallowBranchRef[path=$path, ]';
  }

  TfvcShallowBranchRef.fromJson(Map<String, dynamic> json) {
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

  static List<TfvcShallowBranchRef> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcShallowBranchRef>() : json.map((value) => TfvcShallowBranchRef.fromJson(value)).toList();
  }

  static Map<String, TfvcShallowBranchRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcShallowBranchRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcShallowBranchRef.fromJson(value));
    }
    return map;
  }
}

