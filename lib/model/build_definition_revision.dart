part of azure_devops_sdk.api;

class BuildDefinitionRevision {
  
  IdentityRef changedBy = null;
  /* The date and time that the definition was changed. */
  DateTime changedDate = null;
  /* The change type (add, edit, delete). */
  String changeType = null;
  //enum changeTypeEnum {  add,  update,  delete,  };{
  /* The comment associated with the change. */
  String comment = null;
  /* A link to the definition at this revision. */
  String definitionUrl = null;
  /* The name of the definition. */
  String name = null;
  /* The revision number. */
  int revision = null;
  BuildDefinitionRevision();

  @override
  String toString() {
    return 'BuildDefinitionRevision[changedBy=$changedBy, changedDate=$changedDate, changeType=$changeType, comment=$comment, definitionUrl=$definitionUrl, name=$name, revision=$revision, ]';
  }

  BuildDefinitionRevision.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['definitionUrl'] == null) {
      definitionUrl = null;
    } else {
          definitionUrl = json['definitionUrl'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changedBy != null)
      json['changedBy'] = changedBy;
    if (changedDate != null)
      json['changedDate'] = changedDate == null ? null : changedDate.toUtc().toIso8601String();
    if (changeType != null)
      json['changeType'] = changeType;
    if (comment != null)
      json['comment'] = comment;
    if (definitionUrl != null)
      json['definitionUrl'] = definitionUrl;
    if (name != null)
      json['name'] = name;
    if (revision != null)
      json['revision'] = revision;
    return json;
  }

  static List<BuildDefinitionRevision> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildDefinitionRevision>() : json.map((value) => BuildDefinitionRevision.fromJson(value)).toList();
  }

  static Map<String, BuildDefinitionRevision> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildDefinitionRevision>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildDefinitionRevision.fromJson(value));
    }
    return map;
  }
}

