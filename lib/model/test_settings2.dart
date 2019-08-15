part of azure_devops_sdk.api;

class TestSettings2 {
  /* Area path required to create test settings */
  String areaPath = null;
  
  IdentityRef createdBy = null;
  
  DateTime createdDate = null;
  /* Description of the test settings. Used in create test settings. */
  String description = null;
  /* Indicates if the tests settings is public or private.Used in create test settings. */
  bool isPublic = null;
  
  IdentityRef lastUpdatedBy = null;
  
  DateTime lastUpdatedDate = null;
  /* Xml string of machine roles. Used in create test settings. */
  String machineRoles = null;
  /* Test settings content. */
  String testSettingsContent = null;
  /* Test settings id. */
  int testSettingsId = null;
  /* Test settings name. */
  String testSettingsName = null;
  TestSettings2();

  @override
  String toString() {
    return 'TestSettings2[areaPath=$areaPath, createdBy=$createdBy, createdDate=$createdDate, description=$description, isPublic=$isPublic, lastUpdatedBy=$lastUpdatedBy, lastUpdatedDate=$lastUpdatedDate, machineRoles=$machineRoles, testSettingsContent=$testSettingsContent, testSettingsId=$testSettingsId, testSettingsName=$testSettingsName, ]';
  }

  TestSettings2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['areaPath'] == null) {
      areaPath = null;
    } else {
          areaPath = json['areaPath'];
    }
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = IdentityRef.fromJson(json['createdBy']);
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
    if (json['isPublic'] == null) {
      isPublic = null;
    } else {
          isPublic = json['isPublic'];
    }
    if (json['lastUpdatedBy'] == null) {
      lastUpdatedBy = null;
    } else {
      lastUpdatedBy = IdentityRef.fromJson(json['lastUpdatedBy']);
    }
    if (json['lastUpdatedDate'] == null) {
      lastUpdatedDate = null;
    } else {
      lastUpdatedDate = DateTime.parse(json['lastUpdatedDate']);
    }
    if (json['machineRoles'] == null) {
      machineRoles = null;
    } else {
          machineRoles = json['machineRoles'];
    }
    if (json['testSettingsContent'] == null) {
      testSettingsContent = null;
    } else {
          testSettingsContent = json['testSettingsContent'];
    }
    if (json['testSettingsId'] == null) {
      testSettingsId = null;
    } else {
          testSettingsId = json['testSettingsId'];
    }
    if (json['testSettingsName'] == null) {
      testSettingsName = null;
    } else {
          testSettingsName = json['testSettingsName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (areaPath != null)
      json['areaPath'] = areaPath;
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (description != null)
      json['description'] = description;
    if (isPublic != null)
      json['isPublic'] = isPublic;
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedDate != null)
      json['lastUpdatedDate'] = lastUpdatedDate == null ? null : lastUpdatedDate.toUtc().toIso8601String();
    if (machineRoles != null)
      json['machineRoles'] = machineRoles;
    if (testSettingsContent != null)
      json['testSettingsContent'] = testSettingsContent;
    if (testSettingsId != null)
      json['testSettingsId'] = testSettingsId;
    if (testSettingsName != null)
      json['testSettingsName'] = testSettingsName;
    return json;
  }

  static List<TestSettings2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSettings2>() : json.map((value) => TestSettings2.fromJson(value)).toList();
  }

  static Map<String, TestSettings2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSettings2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSettings2.fromJson(value));
    }
    return map;
  }
}

