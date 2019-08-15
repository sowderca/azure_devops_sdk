part of azure_devops_sdk.api;

class Wiql {
  /* The text of the WIQL query */
  String query = null;
  Wiql();

  @override
  String toString() {
    return 'Wiql[query=$query, ]';
  }

  Wiql.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['query'] == null) {
      query = null;
    } else {
          query = json['query'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (query != null)
      json['query'] = query;
    return json;
  }

  static List<Wiql> listFromJson(List<dynamic> json) {
    return json == null ? List<Wiql>() : json.map((value) => Wiql.fromJson(value)).toList();
  }

  static Map<String, Wiql> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Wiql>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Wiql.fromJson(value));
    }
    return map;
  }
}

