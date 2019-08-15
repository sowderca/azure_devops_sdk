part of azure_devops_sdk.api;

class Coverage2 {
  
  int coverageId = null;
  
  DateTime dateCreated = null;
  
  DateTime dateModified = null;
  
  String lastError = null;
  
  String state = null;
  Coverage2();

  @override
  String toString() {
    return 'Coverage2[coverageId=$coverageId, dateCreated=$dateCreated, dateModified=$dateModified, lastError=$lastError, state=$state, ]';
  }

  Coverage2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['coverageId'] == null) {
      coverageId = null;
    } else {
          coverageId = json['coverageId'];
    }
    if (json['dateCreated'] == null) {
      dateCreated = null;
    } else {
      dateCreated = DateTime.parse(json['dateCreated']);
    }
    if (json['dateModified'] == null) {
      dateModified = null;
    } else {
      dateModified = DateTime.parse(json['dateModified']);
    }
    if (json['lastError'] == null) {
      lastError = null;
    } else {
          lastError = json['lastError'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (coverageId != null)
      json['coverageId'] = coverageId;
    if (dateCreated != null)
      json['dateCreated'] = dateCreated == null ? null : dateCreated.toUtc().toIso8601String();
    if (dateModified != null)
      json['dateModified'] = dateModified == null ? null : dateModified.toUtc().toIso8601String();
    if (lastError != null)
      json['lastError'] = lastError;
    if (state != null)
      json['state'] = state;
    return json;
  }

  static List<Coverage2> listFromJson(List<dynamic> json) {
    return json == null ? List<Coverage2>() : json.map((value) => Coverage2.fromJson(value)).toList();
  }

  static Map<String, Coverage2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Coverage2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Coverage2.fromJson(value));
    }
    return map;
  }
}

