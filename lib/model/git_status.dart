part of azure_devops_sdk.api;

class GitStatus {
  
  ReferenceLinks links = null;
  
  GitStatusContext context = null;
  
  IdentityRef createdBy = null;
  /* Creation date and time of the status. */
  DateTime creationDate = null;
  /* Status description. Typically describes current state of the status. */
  String description = null;
  /* Status identifier. */
  int id = null;
  /* State of the status. */
  String state = null;
  //enum stateEnum {  notSet,  pending,  succeeded,  failed,  error,  notApplicable,  };{
  /* URL with status details. */
  String targetUrl = null;
  /* Last update date and time of the status. */
  DateTime updatedDate = null;
  GitStatus();

  @override
  String toString() {
    return 'GitStatus[links=$links, context=$context, createdBy=$createdBy, creationDate=$creationDate, description=$description, id=$id, state=$state, targetUrl=$targetUrl, updatedDate=$updatedDate, ]';
  }

  GitStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['context'] == null) {
      context = null;
    } else {
      context = GitStatusContext.fromJson(json['context']);
    }
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = IdentityRef.fromJson(json['createdBy']);
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
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
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['targetUrl'] == null) {
      targetUrl = null;
    } else {
          targetUrl = json['targetUrl'];
    }
    if (json['updatedDate'] == null) {
      updatedDate = null;
    } else {
      updatedDate = DateTime.parse(json['updatedDate']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (context != null)
      json['context'] = context;
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (state != null)
      json['state'] = state;
    if (targetUrl != null)
      json['targetUrl'] = targetUrl;
    if (updatedDate != null)
      json['updatedDate'] = updatedDate == null ? null : updatedDate.toUtc().toIso8601String();
    return json;
  }

  static List<GitStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<GitStatus>() : json.map((value) => GitStatus.fromJson(value)).toList();
  }

  static Map<String, GitStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitStatus.fromJson(value));
    }
    return map;
  }
}

