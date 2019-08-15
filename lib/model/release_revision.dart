part of azure_devops_sdk.api;

class ReleaseRevision {
  
  IdentityRef changedBy = null;
  /* Change date of the revision. */
  DateTime changedDate = null;
  /* Change details of the revision. */
  String changeDetails = null;
  /* Change details of the revision. Typically ChangeDetails values are Add and Update. */
  String changeType = null;
  /* Comment of the revision. */
  String comment = null;
  /* Release ID of which this revision belongs. */
  int definitionSnapshotRevision = null;
  /* Gets or sets the release ID of which this revision belongs. */
  int releaseId = null;
  ReleaseRevision();

  @override
  String toString() {
    return 'ReleaseRevision[changedBy=$changedBy, changedDate=$changedDate, changeDetails=$changeDetails, changeType=$changeType, comment=$comment, definitionSnapshotRevision=$definitionSnapshotRevision, releaseId=$releaseId, ]';
  }

  ReleaseRevision.fromJson(Map<String, dynamic> json) {
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
    if (json['changeDetails'] == null) {
      changeDetails = null;
    } else {
          changeDetails = json['changeDetails'];
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
    if (json['definitionSnapshotRevision'] == null) {
      definitionSnapshotRevision = null;
    } else {
          definitionSnapshotRevision = json['definitionSnapshotRevision'];
    }
    if (json['releaseId'] == null) {
      releaseId = null;
    } else {
          releaseId = json['releaseId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changedBy != null)
      json['changedBy'] = changedBy;
    if (changedDate != null)
      json['changedDate'] = changedDate == null ? null : changedDate.toUtc().toIso8601String();
    if (changeDetails != null)
      json['changeDetails'] = changeDetails;
    if (changeType != null)
      json['changeType'] = changeType;
    if (comment != null)
      json['comment'] = comment;
    if (definitionSnapshotRevision != null)
      json['definitionSnapshotRevision'] = definitionSnapshotRevision;
    if (releaseId != null)
      json['releaseId'] = releaseId;
    return json;
  }

  static List<ReleaseRevision> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseRevision>() : json.map((value) => ReleaseRevision.fromJson(value)).toList();
  }

  static Map<String, ReleaseRevision> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseRevision>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseRevision.fromJson(value));
    }
    return map;
  }
}

