part of azure_devops_sdk.api;

class InputFilter {
  /* Groups of input filter expressions. This filter matches a set of inputs if any (one or more) of the groups evaluates to true. */
  List<InputFilterCondition> conditions = [];
  InputFilter();

  @override
  String toString() {
    return 'InputFilter[conditions=$conditions, ]';
  }

  InputFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['conditions'] == null) {
      conditions = null;
    } else {
      conditions = InputFilterCondition.listFromJson(json['conditions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (conditions != null)
      json['conditions'] = conditions;
    return json;
  }

  static List<InputFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<InputFilter>() : json.map((value) => InputFilter.fromJson(value)).toList();
  }

  static Map<String, InputFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InputFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InputFilter.fromJson(value));
    }
    return map;
  }
}

