part of azure_devops_sdk.api;

class WikiPage {
  /* Content of the wiki page. */
  String content = null;
  WikiPage();

  @override
  String toString() {
    return 'WikiPage[content=$content, ]';
  }

  WikiPage.fromJson(Map<String, dynamic> json) {
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

  static List<WikiPage> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiPage>() : json.map((value) => WikiPage.fromJson(value)).toList();
  }

  static Map<String, WikiPage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiPage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiPage.fromJson(value));
    }
    return map;
  }
}

