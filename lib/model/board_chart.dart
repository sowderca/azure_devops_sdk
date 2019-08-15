part of azure_devops_sdk.api;

class BoardChart {
  /* Name of the resource */
  String name = null;
  /* Full http link to the resource */
  String url = null;
  BoardChart();

  @override
  String toString() {
    return 'BoardChart[name=$name, url=$url, ]';
  }

  BoardChart.fromJson(Map<String, dynamic> json) {
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

  static List<BoardChart> listFromJson(List<dynamic> json) {
    return json == null ? List<BoardChart>() : json.map((value) => BoardChart.fromJson(value)).toList();
  }

  static Map<String, BoardChart> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoardChart>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoardChart.fromJson(value));
    }
    return map;
  }
}

