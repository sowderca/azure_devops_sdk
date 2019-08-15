part of azure_devops_sdk.api;

class ChangeList {
  
  bool allChangesIncluded = null;
  
  Map<String, int> changeCounts = {};
  
  List<Change> changes = [];
  
  String comment = null;
  
  bool commentTruncated = null;
  
  DateTime creationDate = null;
  
  List<CheckinNote> notes = [];
  
  String owner = null;
  
  String ownerDisplayName = null;
  
  String ownerId = null;
  
  DateTime sortDate = null;
  
  String version = null;
  ChangeList();

  @override
  String toString() {
    return 'ChangeList[allChangesIncluded=$allChangesIncluded, changeCounts=$changeCounts, changes=$changes, comment=$comment, commentTruncated=$commentTruncated, creationDate=$creationDate, notes=$notes, owner=$owner, ownerDisplayName=$ownerDisplayName, ownerId=$ownerId, sortDate=$sortDate, version=$version, ]';
  }

  ChangeList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['allChangesIncluded'] == null) {
      allChangesIncluded = null;
    } else {
          allChangesIncluded = json['allChangesIncluded'];
    }
    if (json['changeCounts'] == null) {
      changeCounts = null;
    } else {
          changeCounts = (json['changeCounts'] as Map).cast<String, int>();
    }
    if (json['changes'] == null) {
      changes = null;
    } else {
      changes = Change.listFromJson(json['changes']);
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['commentTruncated'] == null) {
      commentTruncated = null;
    } else {
          commentTruncated = json['commentTruncated'];
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['notes'] == null) {
      notes = null;
    } else {
      notes = CheckinNote.listFromJson(json['notes']);
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
          owner = json['owner'];
    }
    if (json['ownerDisplayName'] == null) {
      ownerDisplayName = null;
    } else {
          ownerDisplayName = json['ownerDisplayName'];
    }
    if (json['ownerId'] == null) {
      ownerId = null;
    } else {
          ownerId = json['ownerId'];
    }
    if (json['sortDate'] == null) {
      sortDate = null;
    } else {
      sortDate = DateTime.parse(json['sortDate']);
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (allChangesIncluded != null)
      json['allChangesIncluded'] = allChangesIncluded;
    if (changeCounts != null)
      json['changeCounts'] = changeCounts;
    if (changes != null)
      json['changes'] = changes;
    if (comment != null)
      json['comment'] = comment;
    if (commentTruncated != null)
      json['commentTruncated'] = commentTruncated;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (notes != null)
      json['notes'] = notes;
    if (owner != null)
      json['owner'] = owner;
    if (ownerDisplayName != null)
      json['ownerDisplayName'] = ownerDisplayName;
    if (ownerId != null)
      json['ownerId'] = ownerId;
    if (sortDate != null)
      json['sortDate'] = sortDate == null ? null : sortDate.toUtc().toIso8601String();
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<ChangeList> listFromJson(List<dynamic> json) {
    return json == null ? List<ChangeList>() : json.map((value) => ChangeList.fromJson(value)).toList();
  }

  static Map<String, ChangeList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ChangeList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ChangeList.fromJson(value));
    }
    return map;
  }
}

