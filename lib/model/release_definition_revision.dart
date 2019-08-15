part of azure_devops_sdk.api;

class ReleaseDefinitionRevision {
  /* Gets api-version for revision object. */
  String apiVersion = null;
  
  IdentityRef changedBy = null;
  /* Gets date on which ReleaseDefinition changed. */
  DateTime changedDate = null;
  /* Gets type of change. */
  String changeType = null;
  //enum changeTypeEnum {  add,  update,  delete,  undelete,  };{
  /* Gets comments for revision. */
  String comment = null;
  /* Get id of the definition. */
  int definitionId = null;
  /* Gets definition URL. */
  String definitionUrl = null;
  /* Get revision number of the definition. */
  int revision = null;
  ReleaseDefinitionRevision();

  @override
  String toString() {
    return 'ReleaseDefinitionRevision[apiVersion=$apiVersion, changedBy=$changedBy, changedDate=$changedDate, changeType=$changeType, comment=$comment, definitionId=$definitionId, definitionUrl=$definitionUrl, revision=$revision, ]';
  }

  ReleaseDefinitionRevision.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['apiVersion'] == null) {
      apiVersion = null;
    } else {
          apiVersion = json['apiVersion'];
    }
    if (json['changedBy'] == null) {
      changedBy = null;
    } else {
      changedBy = IdentityRef.fromJson(json['changedBy']);
    }
    if (json['changedDate'] == null) {
      changedDate = null;
    } else {
      changedDate = DateTime.parse(json['changedDate']);
    }
    if (json['changeType'] == null) {
      changeType = null;
    } else {
          changeType = json['changeType'];
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['definitionId'] == null) {
      definitionId = null;
    } else {
          definitionId = json['definitionId'];
    }
    if (json['definitionUrl'] == null) {
      definitionUrl = null;
    } else {
          definitionUrl = json['definitionUrl'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (apiVersion != null)
      json['apiVersion'] = apiVersion;
    if (changedBy != null)
      json['changedBy'] = changedBy;
    if (changedDate != null)
      json['changedDate'] = changedDate == null ? null : changedDate.toUtc().toIso8601String();
    if (changeType != null)
      json['changeType'] = changeType;
    if (comment != null)
      json['comment'] = comment;
    if (definitionId != null)
      json['definitionId'] = definitionId;
    if (definitionUrl != null)
      json['definitionUrl'] = definitionUrl;
    if (revision != null)
      json['revision'] = revision;
    return json;
  }

  static List<ReleaseDefinitionRevision> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionRevision>() : json.map((value) => ReleaseDefinitionRevision.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionRevision> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionRevision>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionRevision.fromJson(value));
    }
    return map;
  }
}

