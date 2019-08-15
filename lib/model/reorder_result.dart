part of azure_devops_sdk.api;

class ReorderResult {
  /* The ID of the work item that was reordered. */
  int id = null;
  /* The updated order value of the work item that was reordered. */
  double order = null;
  ReorderResult();

  @override
  String toString() {
    return 'ReorderResult[id=$id, order=$order, ]';
  }

  ReorderResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['order'] == null) {
      order = null;
    } else {
          order = json['order'].toDouble();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (order != null)
      json['order'] = order;
    return json;
  }

  static List<ReorderResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ReorderResult>() : json.map((value) => ReorderResult.fromJson(value)).toList();
  }

  static Map<String, ReorderResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReorderResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReorderResult.fromJson(value));
    }
    return map;
  }
}

