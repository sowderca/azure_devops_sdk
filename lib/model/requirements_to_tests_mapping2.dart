part of azure_devops_sdk.api;

class RequirementsToTestsMapping2 {
  
  String createdBy = null;
  
  DateTime creationDate = null;
  
  String deletedBy = null;
  
  DateTime deletionDate = null;
  
  bool isMigratedToWIT = null;
  
  String projectId = null;
  
  int testMetadataId = null;
  
  int workItemId = null;
  RequirementsToTestsMapping2();

  @override
  String toString() {
    return 'RequirementsToTestsMapping2[createdBy=$createdBy, creationDate=$creationDate, deletedBy=$deletedBy, deletionDate=$deletionDate, isMigratedToWIT=$isMigratedToWIT, projectId=$projectId, testMetadataId=$testMetadataId, workItemId=$workItemId, ]';
  }

  RequirementsToTestsMapping2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
          createdBy = json['createdBy'];
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['deletedBy'] == null) {
      deletedBy = null;
    } else {
          deletedBy = json['deletedBy'];
    }
    if (json['deletionDate'] == null) {
      deletionDate = null;
    } else {
      deletionDate = DateTime.parse(json['deletionDate']);
    }
    if (json['isMigratedToWIT'] == null) {
      isMigratedToWIT = null;
    } else {
          isMigratedToWIT = json['isMigratedToWIT'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['testMetadataId'] == null) {
      testMetadataId = null;
    } else {
          testMetadataId = json['testMetadataId'];
    }
    if (json['workItemId'] == null) {
      workItemId = null;
    } else {
          workItemId = json['workItemId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (deletedBy != null)
      json['deletedBy'] = deletedBy;
    if (deletionDate != null)
      json['deletionDate'] = deletionDate == null ? null : deletionDate.toUtc().toIso8601String();
    if (isMigratedToWIT != null)
      json['isMigratedToWIT'] = isMigratedToWIT;
    if (projectId != null)
      json['projectId'] = projectId;
    if (testMetadataId != null)
      json['testMetadataId'] = testMetadataId;
    if (workItemId != null)
      json['workItemId'] = workItemId;
    return json;
  }

  static List<RequirementsToTestsMapping2> listFromJson(List<dynamic> json) {
    return json == null ? List<RequirementsToTestsMapping2>() : json.map((value) => RequirementsToTestsMapping2.fromJson(value)).toList();
  }

  static Map<String, RequirementsToTestsMapping2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequirementsToTestsMapping2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequirementsToTestsMapping2.fromJson(value));
    }
    return map;
  }
}

