part of azure_devops_sdk.api;

class UpdatedProperties {
  
  int id = null;
  
  DateTime lastUpdated = null;
  
  String lastUpdatedBy = null;
  
  String lastUpdatedByName = null;
  
  int revision = null;
  UpdatedProperties();

  @override
  String toString() {
    return 'UpdatedProperties[id=$id, lastUpdated=$lastUpdated, lastUpdatedBy=$lastUpdatedBy, lastUpdatedByName=$lastUpdatedByName, revision=$revision, ]';
  }

  UpdatedProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['lastUpdated'] == null) {
      lastUpdated = null;
    } else {
      lastUpdated = DateTime.parse(json['lastUpdated']);
    }
    if (json['lastUpdatedBy'] == null) {
      lastUpdatedBy = null;
    } else {
          lastUpdatedBy = json['lastUpdatedBy'];
    }
    if (json['lastUpdatedByName'] == null) {
      lastUpdatedByName = null;
    } else {
          lastUpdatedByName = json['lastUpdatedByName'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedByName != null)
      json['lastUpdatedByName'] = lastUpdatedByName;
    if (revision != null)
      json['revision'] = revision;
    return json;
  }

  static List<UpdatedProperties> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdatedProperties>() : json.map((value) => UpdatedProperties.fromJson(value)).toList();
  }

  static Map<String, UpdatedProperties> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdatedProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdatedProperties.fromJson(value));
    }
    return map;
  }
}

