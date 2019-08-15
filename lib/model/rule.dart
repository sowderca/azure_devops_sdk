part of azure_devops_sdk.api;

class Rule {
  
  List<FilterClause> clauses = [];
  
  String filter = null;
  
  String isEnabled = null;
  
  String name = null;
  
  Attribute settings = null;
  Rule();

  @override
  String toString() {
    return 'Rule[clauses=$clauses, filter=$filter, isEnabled=$isEnabled, name=$name, settings=$settings, ]';
  }

  Rule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['clauses'] == null) {
      clauses = null;
    } else {
      clauses = FilterClause.listFromJson(json['clauses']);
    }
    if (json['filter'] == null) {
      filter = null;
    } else {
          filter = json['filter'];
    }
    if (json['isEnabled'] == null) {
      isEnabled = null;
    } else {
          isEnabled = json['isEnabled'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['settings'] == null) {
      settings = null;
    } else {
      settings = Attribute.fromJson(json['settings']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (clauses != null)
      json['clauses'] = clauses;
    if (filter != null)
      json['filter'] = filter;
    if (isEnabled != null)
      json['isEnabled'] = isEnabled;
    if (name != null)
      json['name'] = name;
    if (settings != null)
      json['settings'] = settings;
    return json;
  }

  static List<Rule> listFromJson(List<dynamic> json) {
    return json == null ? List<Rule>() : json.map((value) => Rule.fromJson(value)).toList();
  }

  static Map<String, Rule> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Rule>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Rule.fromJson(value));
    }
    return map;
  }
}

