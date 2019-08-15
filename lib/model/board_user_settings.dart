part of azure_devops_sdk.api;

class BoardUserSettings {
  
  bool autoRefreshState = null;
  BoardUserSettings();

  @override
  String toString() {
    return 'BoardUserSettings[autoRefreshState=$autoRefreshState, ]';
  }

  BoardUserSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['autoRefreshState'] == null) {
      autoRefreshState = null;
    } else {
          autoRefreshState = json['autoRefreshState'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (autoRefreshState != null)
      json['autoRefreshState'] = autoRefreshState;
    return json;
  }

  static List<BoardUserSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<BoardUserSettings>() : json.map((value) => BoardUserSettings.fromJson(value)).toList();
  }

  static Map<String, BoardUserSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoardUserSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoardUserSettings.fromJson(value));
    }
    return map;
  }
}

