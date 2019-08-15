part of azure_devops_sdk.api;

class WikiPageViewStats {
  /* Wiki page view count. */
  int count = null;
  /* Wiki page last viewed time. */
  DateTime lastViewedTime = null;
  /* Wiki page path. */
  String path = null;
  WikiPageViewStats();

  @override
  String toString() {
    return 'WikiPageViewStats[count=$count, lastViewedTime=$lastViewedTime, path=$path, ]';
  }

  WikiPageViewStats.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['lastViewedTime'] == null) {
      lastViewedTime = null;
    } else {
      lastViewedTime = DateTime.parse(json['lastViewedTime']);
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (lastViewedTime != null)
      json['lastViewedTime'] = lastViewedTime == null ? null : lastViewedTime.toUtc().toIso8601String();
    if (path != null)
      json['path'] = path;
    return json;
  }

  static List<WikiPageViewStats> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiPageViewStats>() : json.map((value) => WikiPageViewStats.fromJson(value)).toList();
  }

  static Map<String, WikiPageViewStats> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiPageViewStats>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiPageViewStats.fromJson(value));
    }
    return map;
  }
}

