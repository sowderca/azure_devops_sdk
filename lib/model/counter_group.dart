part of azure_devops_sdk.api;

class CounterGroup {
  
  String groupName = null;
  
  String url = null;
  CounterGroup();

  @override
  String toString() {
    return 'CounterGroup[groupName=$groupName, url=$url, ]';
  }

  CounterGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['groupName'] == null) {
      groupName = null;
    } else {
          groupName = json['groupName'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (groupName != null)
      json['groupName'] = groupName;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<CounterGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<CounterGroup>() : json.map((value) => CounterGroup.fromJson(value)).toList();
  }

  static Map<String, CounterGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CounterGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CounterGroup.fromJson(value));
    }
    return map;
  }
}

