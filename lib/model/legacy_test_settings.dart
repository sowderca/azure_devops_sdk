part of azure_devops_sdk.api;

class LegacyTestSettings {
  
  int areaId = null;
  
  String areaPath = null;
  
  String createdBy = null;
  
  String createdByName = null;
  
  DateTime createdDate = null;
  
  String description = null;
  
  int id = null;
  
  bool isAutomated = null;
  
  bool isPublic = null;
  
  DateTime lastUpdated = null;
  
  String lastUpdatedBy = null;
  
  String lastUpdatedByName = null;
  
  List<TestSettingsMachineRole> machineRoles = [];
  
  String name = null;
  
  int revision = null;
  
  String settings = null;
  
  String teamProjectUri = null;
  LegacyTestSettings();

  @override
  String toString() {
    return 'LegacyTestSettings[areaId=$areaId, areaPath=$areaPath, createdBy=$createdBy, createdByName=$createdByName, createdDate=$createdDate, description=$description, id=$id, isAutomated=$isAutomated, isPublic=$isPublic, lastUpdated=$lastUpdated, lastUpdatedBy=$lastUpdatedBy, lastUpdatedByName=$lastUpdatedByName, machineRoles=$machineRoles, name=$name, revision=$revision, settings=$settings, teamProjectUri=$teamProjectUri, ]';
  }

  LegacyTestSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['areaId'] == null) {
      areaId = null;
    } else {
          areaId = json['areaId'];
    }
    if (json['areaPath'] == null) {
      areaPath = null;
    } else {
          areaPath = json['areaPath'];
    }
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
          createdBy = json['createdBy'];
    }
    if (json['createdByName'] == null) {
      createdByName = null;
    } else {
          createdByName = json['createdByName'];
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isAutomated'] == null) {
      isAutomated = null;
    } else {
          isAutomated = json['isAutomated'];
    }
    if (json['isPublic'] == null) {
      isPublic = null;
    } else {
          isPublic = json['isPublic'];
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
    if (json['machineRoles'] == null) {
      machineRoles = null;
    } else {
      machineRoles = TestSettingsMachineRole.listFromJson(json['machineRoles']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['settings'] == null) {
      settings = null;
    } else {
          settings = json['settings'];
    }
    if (json['teamProjectUri'] == null) {
      teamProjectUri = null;
    } else {
          teamProjectUri = json['teamProjectUri'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (areaId != null)
      json['areaId'] = areaId;
    if (areaPath != null)
      json['areaPath'] = areaPath;
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdByName != null)
      json['createdByName'] = createdByName;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (isAutomated != null)
      json['isAutomated'] = isAutomated;
    if (isPublic != null)
      json['isPublic'] = isPublic;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedByName != null)
      json['lastUpdatedByName'] = lastUpdatedByName;
    if (machineRoles != null)
      json['machineRoles'] = machineRoles;
    if (name != null)
      json['name'] = name;
    if (revision != null)
      json['revision'] = revision;
    if (settings != null)
      json['settings'] = settings;
    if (teamProjectUri != null)
      json['teamProjectUri'] = teamProjectUri;
    return json;
  }

  static List<LegacyTestSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<LegacyTestSettings>() : json.map((value) => LegacyTestSettings.fromJson(value)).toList();
  }

  static Map<String, LegacyTestSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LegacyTestSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LegacyTestSettings.fromJson(value));
    }
    return map;
  }
}

