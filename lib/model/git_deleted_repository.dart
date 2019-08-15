part of azure_devops_sdk.api;

class GitDeletedRepository {
  
  DateTime createdDate = null;
  
  IdentityRef deletedBy = null;
  
  DateTime deletedDate = null;
  
  String id = null;
  
  String name = null;
  
  TeamProjectReference project = null;
  GitDeletedRepository();

  @override
  String toString() {
    return 'GitDeletedRepository[createdDate=$createdDate, deletedBy=$deletedBy, deletedDate=$deletedDate, id=$id, name=$name, project=$project, ]';
  }

  GitDeletedRepository.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['deletedBy'] == null) {
      deletedBy = null;
    } else {
      deletedBy = IdentityRef.fromJson(json['deletedBy']);
    }
    if (json['deletedDate'] == null) {
      deletedDate = null;
    } else {
      deletedDate = DateTime.parse(json['deletedDate']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = TeamProjectReference.fromJson(json['project']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (deletedBy != null)
      json['deletedBy'] = deletedBy;
    if (deletedDate != null)
      json['deletedDate'] = deletedDate == null ? null : deletedDate.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (project != null)
      json['project'] = project;
    return json;
  }

  static List<GitDeletedRepository> listFromJson(List<dynamic> json) {
    return json == null ? List<GitDeletedRepository>() : json.map((value) => GitDeletedRepository.fromJson(value)).toList();
  }

  static Map<String, GitDeletedRepository> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitDeletedRepository>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitDeletedRepository.fromJson(value));
    }
    return map;
  }
}

