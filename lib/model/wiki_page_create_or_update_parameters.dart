part of azure_devops_sdk.api;

class WikiPageCreateOrUpdateParameters {
  /* Content of the wiki page. */
  String content = null;
  WikiPageCreateOrUpdateParameters();

  @override
  String toString() {
    return 'WikiPageCreateOrUpdateParameters[content=$content, ]';
  }

  WikiPageCreateOrUpdateParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['content'] == null) {
      content = null;
    } else {
          content = json['content'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    return json;
  }

  static List<WikiPageCreateOrUpdateParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiPageCreateOrUpdateParameters>() : json.map((value) => WikiPageCreateOrUpdateParameters.fromJson(value)).toList();
  }

  static Map<String, WikiPageCreateOrUpdateParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiPageCreateOrUpdateParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiPageCreateOrUpdateParameters.fromJson(value));
    }
    return map;
  }
}

