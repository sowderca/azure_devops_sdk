part of azure_devops_sdk.api;

class FilterGroup {
  
  int end = null;
  
  int level = null;
  
  int start = null;
  FilterGroup();

  @override
  String toString() {
    return 'FilterGroup[end=$end, level=$level, start=$start, ]';
  }

  FilterGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['end'] == null) {
      end = null;
    } else {
          end = json['end'];
    }
    if (json['level'] == null) {
      level = null;
    } else {
          level = json['level'];
    }
    if (json['start'] == null) {
      start = null;
    } else {
          start = json['start'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (end != null)
      json['end'] = end;
    if (level != null)
      json['level'] = level;
    if (start != null)
      json['start'] = start;
    return json;
  }

  static List<FilterGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<FilterGroup>() : json.map((value) => FilterGroup.fromJson(value)).toList();
  }

  static Map<String, FilterGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FilterGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FilterGroup.fromJson(value));
    }
    return map;
  }
}

