part of azure_devops_sdk.api;

class TagFilter {
  /* Gets or sets the tag filter pattern. */
  String pattern = null;
  TagFilter();

  @override
  String toString() {
    return 'TagFilter[pattern=$pattern, ]';
  }

  TagFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pattern'] == null) {
      pattern = null;
    } else {
          pattern = json['pattern'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pattern != null)
      json['pattern'] = pattern;
    return json;
  }

  static List<TagFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<TagFilter>() : json.map((value) => TagFilter.fromJson(value)).toList();
  }

  static Map<String, TagFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TagFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TagFilter.fromJson(value));
    }
    return map;
  }
}

