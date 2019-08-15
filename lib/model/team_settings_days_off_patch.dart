part of azure_devops_sdk.api;

class TeamSettingsDaysOffPatch {
  
  List<DateRange> daysOff = [];
  TeamSettingsDaysOffPatch();

  @override
  String toString() {
    return 'TeamSettingsDaysOffPatch[daysOff=$daysOff, ]';
  }

  TeamSettingsDaysOffPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['daysOff'] == null) {
      daysOff = null;
    } else {
      daysOff = DateRange.listFromJson(json['daysOff']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (daysOff != null)
      json['daysOff'] = daysOff;
    return json;
  }

  static List<TeamSettingsDaysOffPatch> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamSettingsDaysOffPatch>() : json.map((value) => TeamSettingsDaysOffPatch.fromJson(value)).toList();
  }

  static Map<String, TeamSettingsDaysOffPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamSettingsDaysOffPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamSettingsDaysOffPatch.fromJson(value));
    }
    return map;
  }
}

