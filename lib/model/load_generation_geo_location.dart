part of azure_devops_sdk.api;

class LoadGenerationGeoLocation {
  
  String location = null;
  
  int percentage = null;
  LoadGenerationGeoLocation();

  @override
  String toString() {
    return 'LoadGenerationGeoLocation[location=$location, percentage=$percentage, ]';
  }

  LoadGenerationGeoLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['location'] == null) {
      location = null;
    } else {
          location = json['location'];
    }
    if (json['percentage'] == null) {
      percentage = null;
    } else {
          percentage = json['percentage'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (location != null)
      json['location'] = location;
    if (percentage != null)
      json['percentage'] = percentage;
    return json;
  }

  static List<LoadGenerationGeoLocation> listFromJson(List<dynamic> json) {
    return json == null ? List<LoadGenerationGeoLocation>() : json.map((value) => LoadGenerationGeoLocation.fromJson(value)).toList();
  }

  static Map<String, LoadGenerationGeoLocation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoadGenerationGeoLocation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoadGenerationGeoLocation.fromJson(value));
    }
    return map;
  }
}

