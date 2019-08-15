part of azure_devops_sdk.api;

class BoardCardRuleSettings {
  
  ReferenceLinks links = null;
  
  Map<String, List<Rule>> rules = {};
  
  String url = null;
  BoardCardRuleSettings();

  @override
  String toString() {
    return 'BoardCardRuleSettings[links=$links, rules=$rules, url=$url, ]';
  }

  BoardCardRuleSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['rules'] == null) {
      rules = null;
    } else {
      rules = List.mapFromJson(json['rules']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (rules != null)
      json['rules'] = rules;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<BoardCardRuleSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<BoardCardRuleSettings>() : json.map((value) => BoardCardRuleSettings.fromJson(value)).toList();
  }

  static Map<String, BoardCardRuleSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoardCardRuleSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoardCardRuleSettings.fromJson(value));
    }
    return map;
  }
}

