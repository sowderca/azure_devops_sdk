part of azure_devops_sdk.api;

class PagedGraphGroups {
  /* This will be non-null if there is another page of data. There will never be more than one continuation token returned by a request. */
  List<String> continuationToken = [];
  /* The enumerable list of groups found within a page. */
  List<GraphGroup> graphGroups = [];
  PagedGraphGroups();

  @override
  String toString() {
    return 'PagedGraphGroups[continuationToken=$continuationToken, graphGroups=$graphGroups, ]';
  }

  PagedGraphGroups.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['continuationToken'] == null) {
      continuationToken = null;
    } else {
      continuationToken = (json['continuationToken'] as List).cast<String>();
    }
    if (json['graphGroups'] == null) {
      graphGroups = null;
    } else {
      graphGroups = GraphGroup.listFromJson(json['graphGroups']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (continuationToken != null)
      json['continuationToken'] = continuationToken;
    if (graphGroups != null)
      json['graphGroups'] = graphGroups;
    return json;
  }

  static List<PagedGraphGroups> listFromJson(List<dynamic> json) {
    return json == null ? List<PagedGraphGroups>() : json.map((value) => PagedGraphGroups.fromJson(value)).toList();
  }

  static Map<String, PagedGraphGroups> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PagedGraphGroups>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PagedGraphGroups.fromJson(value));
    }
    return map;
  }
}

