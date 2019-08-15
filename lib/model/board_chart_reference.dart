part of azure_devops_sdk.api;

class BoardChartReference {
  /* Name of the resource */
  String name = null;
  /* Full http link to the resource */
  String url = null;
  BoardChartReference();

  @override
  String toString() {
    return 'BoardChartReference[name=$name, url=$url, ]';
  }

  BoardChartReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<BoardChartReference> listFromJson(List<dynamic> json) {
    return json == null ? List<BoardChartReference>() : json.map((value) => BoardChartReference.fromJson(value)).toList();
  }

  static Map<String, BoardChartReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoardChartReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoardChartReference.fromJson(value));
    }
    return map;
  }
}

