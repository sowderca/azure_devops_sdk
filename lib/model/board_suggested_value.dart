part of azure_devops_sdk.api;

class BoardSuggestedValue {
  
  String name = null;
  BoardSuggestedValue();

  @override
  String toString() {
    return 'BoardSuggestedValue[name=$name, ]';
  }

  BoardSuggestedValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<BoardSuggestedValue> listFromJson(List<dynamic> json) {
    return json == null ? List<BoardSuggestedValue>() : json.map((value) => BoardSuggestedValue.fromJson(value)).toList();
  }

  static Map<String, BoardSuggestedValue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoardSuggestedValue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoardSuggestedValue.fromJson(value));
    }
    return map;
  }
}

