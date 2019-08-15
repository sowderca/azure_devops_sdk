part of azure_devops_sdk.api;

class LastResultDetails {
  /* CompletedDate of LastResult. */
  DateTime dateCompleted = null;
  /* Duration of LastResult. */
  int duration = null;
  
  IdentityRef runBy = null;
  LastResultDetails();

  @override
  String toString() {
    return 'LastResultDetails[dateCompleted=$dateCompleted, duration=$duration, runBy=$runBy, ]';
  }

  LastResultDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dateCompleted'] == null) {
      dateCompleted = null;
    } else {
      dateCompleted = DateTime.parse(json['dateCompleted']);
    }
    if (json['duration'] == null) {
      duration = null;
    } else {
          duration = json['duration'];
    }
    if (json['runBy'] == null) {
      runBy = null;
    } else {
      runBy = IdentityRef.fromJson(json['runBy']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dateCompleted != null)
      json['dateCompleted'] = dateCompleted == null ? null : dateCompleted.toUtc().toIso8601String();
    if (duration != null)
      json['duration'] = duration;
    if (runBy != null)
      json['runBy'] = runBy;
    return json;
  }

  static List<LastResultDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<LastResultDetails>() : json.map((value) => LastResultDetails.fromJson(value)).toList();
  }

  static Map<String, LastResultDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LastResultDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LastResultDetails.fromJson(value));
    }
    return map;
  }
}

