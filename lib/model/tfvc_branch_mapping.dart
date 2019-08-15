part of azure_devops_sdk.api;

class TfvcBranchMapping {
  /* Depth of the branch. */
  String depth = null;
  /* Server item for the branch. */
  String serverItem = null;
  /* Type of the branch. */
  String type = null;
  TfvcBranchMapping();

  @override
  String toString() {
    return 'TfvcBranchMapping[depth=$depth, serverItem=$serverItem, type=$type, ]';
  }

  TfvcBranchMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['depth'] == null) {
      depth = null;
    } else {
          depth = json['depth'];
    }
    if (json['serverItem'] == null) {
      serverItem = null;
    } else {
          serverItem = json['serverItem'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (depth != null)
      json['depth'] = depth;
    if (serverItem != null)
      json['serverItem'] = serverItem;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<TfvcBranchMapping> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcBranchMapping>() : json.map((value) => TfvcBranchMapping.fromJson(value)).toList();
  }

  static Map<String, TfvcBranchMapping> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcBranchMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcBranchMapping.fromJson(value));
    }
    return map;
  }
}

