part of azure_devops_sdk.api;

class HelpLink {
  /* Gets or sets the help text. */
  String text = null;
  /* Gets or sets the public url of the help documentation. */
  String url = null;
  HelpLink();

  @override
  String toString() {
    return 'HelpLink[text=$text, url=$url, ]';
  }

  HelpLink.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['text'] == null) {
      text = null;
    } else {
          text = json['text'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (text != null)
      json['text'] = text;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<HelpLink> listFromJson(List<dynamic> json) {
    return json == null ? List<HelpLink>() : json.map((value) => HelpLink.fromJson(value)).toList();
  }

  static Map<String, HelpLink> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, HelpLink>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HelpLink.fromJson(value));
    }
    return map;
  }
}

