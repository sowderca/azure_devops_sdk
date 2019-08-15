part of azure_devops_sdk.api;

class BuildEvent {
  
  List<String> data = [];
  
  String identifier = null;
  BuildEvent();

  @override
  String toString() {
    return 'BuildEvent[data=$data, identifier=$identifier, ]';
  }

  BuildEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['data'] == null) {
      data = null;
    } else {
      data = (json['data'] as List).cast<String>();
    }
    if (json['identifier'] == null) {
      identifier = null;
    } else {
          identifier = json['identifier'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (identifier != null)
      json['identifier'] = identifier;
    return json;
  }

  static List<BuildEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildEvent>() : json.map((value) => BuildEvent.fromJson(value)).toList();
  }

  static Map<String, BuildEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildEvent.fromJson(value));
    }
    return map;
  }
}

