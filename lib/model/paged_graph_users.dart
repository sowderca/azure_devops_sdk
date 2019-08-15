part of azure_devops_sdk.api;

class PagedGraphUsers {
  /* This will be non-null if there is another page of data. There will never be more than one continuation token returned by a request. */
  List<String> continuationToken = [];
  /* The enumerable set of users found within a page. */
  List<GraphUser> graphUsers = [];
  PagedGraphUsers();

  @override
  String toString() {
    return 'PagedGraphUsers[continuationToken=$continuationToken, graphUsers=$graphUsers, ]';
  }

  PagedGraphUsers.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['continuationToken'] == null) {
      continuationToken = null;
    } else {
      continuationToken = (json['continuationToken'] as List).cast<String>();
    }
    if (json['graphUsers'] == null) {
      graphUsers = null;
    } else {
      graphUsers = GraphUser.listFromJson(json['graphUsers']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (continuationToken != null)
      json['continuationToken'] = continuationToken;
    if (graphUsers != null)
      json['graphUsers'] = graphUsers;
    return json;
  }

  static List<PagedGraphUsers> listFromJson(List<dynamic> json) {
    return json == null ? List<PagedGraphUsers>() : json.map((value) => PagedGraphUsers.fromJson(value)).toList();
  }

  static Map<String, PagedGraphUsers> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PagedGraphUsers>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PagedGraphUsers.fromJson(value));
    }
    return map;
  }
}

