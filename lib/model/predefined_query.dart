part of azure_devops_sdk.api;

class PredefinedQuery {
  /* Whether or not the query returned the complete set of data or if the data was truncated. */
  bool hasMore = null;
  /* Id of the query */
  String id = null;
  /* Localized name of the query */
  String name = null;
  /* The results of the query.  This will be a set of WorkItem objects with only the 'id' set.  The client is responsible for paging in the data as needed. */
  List<WorkItem> results = [];
  /* REST API Url to use to retrieve results for this query */
  String url = null;
  /* Url to use to display a page in the browser with the results of this query */
  String webUrl = null;
  PredefinedQuery();

  @override
  String toString() {
    return 'PredefinedQuery[hasMore=$hasMore, id=$id, name=$name, results=$results, url=$url, webUrl=$webUrl, ]';
  }

  PredefinedQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['hasMore'] == null) {
      hasMore = null;
    } else {
          hasMore = json['hasMore'];
    }
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
    if (json['results'] == null) {
      results = null;
    } else {
      results = WorkItem.listFromJson(json['results']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['webUrl'] == null) {
      webUrl = null;
    } else {
          webUrl = json['webUrl'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (hasMore != null)
      json['hasMore'] = hasMore;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (results != null)
      json['results'] = results;
    if (url != null)
      json['url'] = url;
    if (webUrl != null)
      json['webUrl'] = webUrl;
    return json;
  }

  static List<PredefinedQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<PredefinedQuery>() : json.map((value) => PredefinedQuery.fromJson(value)).toList();
  }

  static Map<String, PredefinedQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PredefinedQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PredefinedQuery.fromJson(value));
    }
    return map;
  }
}

