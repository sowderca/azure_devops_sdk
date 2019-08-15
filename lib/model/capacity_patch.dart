part of azure_devops_sdk.api;

class CapacityPatch {
  
  List<Activity> activities = [];
  
  List<DateRange> daysOff = [];
  CapacityPatch();

  @override
  String toString() {
    return 'CapacityPatch[activities=$activities, daysOff=$daysOff, ]';
  }

  CapacityPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['activities'] == null) {
      activities = null;
    } else {
      activities = Activity.listFromJson(json['activities']);
    }
    if (json['daysOff'] == null) {
      daysOff = null;
    } else {
      daysOff = DateRange.listFromJson(json['daysOff']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (activities != null)
      json['activities'] = activities;
    if (daysOff != null)
      json['daysOff'] = daysOff;
    return json;
  }

  static List<CapacityPatch> listFromJson(List<dynamic> json) {
    return json == null ? List<CapacityPatch>() : json.map((value) => CapacityPatch.fromJson(value)).toList();
  }

  static Map<String, CapacityPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CapacityPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CapacityPatch.fromJson(value));
    }
    return map;
  }
}

