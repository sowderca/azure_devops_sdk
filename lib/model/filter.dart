part of azure_devops_sdk.api;

class Filter {
  /* Id of the filter bucket. */
  String id = null;
  /* Name of the filter bucket. */
  String name = null;
  /* Count of matches in the filter bucket. */
  int resultCount = null;
  Filter();

  @override
  String toString() {
    return 'Filter[id=$id, name=$name, resultCount=$resultCount, ]';
  }

  Filter.fromJson(Map<String, dynamic> json) {
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
    if (json['resultCount'] == null) {
      resultCount = null;
    } else {
          resultCount = json['resultCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (resultCount != null)
      json['resultCount'] = resultCount;
    return json;
  }

  static List<Filter> listFromJson(List<dynamic> json) {
    return json == null ? List<Filter>() : json.map((value) => Filter.fromJson(value)).toList();
  }

  static Map<String, Filter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Filter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Filter.fromJson(value));
    }
    return map;
  }
}

