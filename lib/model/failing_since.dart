part of azure_devops_sdk.api;

class FailingSince {
  
  BuildReference build = null;
  /* Time since failing. */
  DateTime date = null;
  
  ReleaseReference release = null;
  FailingSince();

  @override
  String toString() {
    return 'FailingSince[build=$build, date=$date, release=$release, ]';
  }

  FailingSince.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['build'] == null) {
      build = null;
    } else {
      build = BuildReference.fromJson(json['build']);
    }
    if (json['date'] == null) {
      date = null;
    } else {
      date = DateTime.parse(json['date']);
    }
    if (json['release'] == null) {
      release = null;
    } else {
      release = ReleaseReference.fromJson(json['release']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (build != null)
      json['build'] = build;
    if (date != null)
      json['date'] = date == null ? null : date.toUtc().toIso8601String();
    if (release != null)
      json['release'] = release;
    return json;
  }

  static List<FailingSince> listFromJson(List<dynamic> json) {
    return json == null ? List<FailingSince>() : json.map((value) => FailingSince.fromJson(value)).toList();
  }

  static Map<String, FailingSince> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FailingSince>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FailingSince.fromJson(value));
    }
    return map;
  }
}

