part of azure_devops_sdk.api;

class Activity {
  
  String capacityPerDay = null;
  
  String name = null;
  Activity();

  @override
  String toString() {
    return 'Activity[capacityPerDay=$capacityPerDay, name=$name, ]';
  }

  Activity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['capacityPerDay'] == null) {
      capacityPerDay = null;
    } else {
          capacityPerDay = json['capacityPerDay'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (capacityPerDay != null)
      json['capacityPerDay'] = capacityPerDay;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<Activity> listFromJson(List<dynamic> json) {
    return json == null ? List<Activity>() : json.map((value) => Activity.fromJson(value)).toList();
  }

  static Map<String, Activity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Activity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Activity.fromJson(value));
    }
    return map;
  }
}

