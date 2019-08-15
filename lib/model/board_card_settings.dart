part of azure_devops_sdk.api;

class BoardCardSettings {
  
  Map<String, List<FieldSetting>> cards = {};
  BoardCardSettings();

  @override
  String toString() {
    return 'BoardCardSettings[cards=$cards, ]';
  }

  BoardCardSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cards'] == null) {
      cards = null;
    } else {
      cards = List.mapFromJson(json['cards']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cards != null)
      json['cards'] = cards;
    return json;
  }

  static List<BoardCardSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<BoardCardSettings>() : json.map((value) => BoardCardSettings.fromJson(value)).toList();
  }

  static Map<String, BoardCardSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoardCardSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoardCardSettings.fromJson(value));
    }
    return map;
  }
}

