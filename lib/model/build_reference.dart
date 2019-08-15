part of azure_devops_sdk.api;

class BuildReference {
  
  ReferenceLinks links = null;
  /* The build number. */
  String buildNumber = null;
  /* Indicates whether the build has been deleted. */
  bool deleted = null;
  /* The time that the build was completed. */
  DateTime finishTime = null;
  /* The ID of the build. */
  int id = null;
  /* The time that the build was queued. */
  DateTime queueTime = null;
  
  IdentityRef requestedFor = null;
  /* The build result. */
  String result = null;
  //enum resultEnum {  none,  succeeded,  partiallySucceeded,  failed,  canceled,  };{
  /* The time that the build was started. */
  DateTime startTime = null;
  /* The build status. */
  String status = null;
  //enum statusEnum {  none,  inProgress,  completed,  cancelling,  postponed,  notStarted,  all,  };{
  BuildReference();

  @override
  String toString() {
    return 'BuildReference[links=$links, buildNumber=$buildNumber, deleted=$deleted, finishTime=$finishTime, id=$id, queueTime=$queueTime, requestedFor=$requestedFor, result=$result, startTime=$startTime, status=$status, ]';
  }

  BuildReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['buildNumber'] == null) {
      buildNumber = null;
    } else {
          buildNumber = json['buildNumber'];
    }
    if (json['deleted'] == null) {
      deleted = null;
    } else {
          deleted = json['deleted'];
    }
    if (json['finishTime'] == null) {
      finishTime = null;
    } else {
      finishTime = DateTime.parse(json['finishTime']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['queueTime'] == null) {
      queueTime = null;
    } else {
      queueTime = DateTime.parse(json['queueTime']);
    }
    if (json['requestedFor'] == null) {
      requestedFor = null;
    } else {
      requestedFor = IdentityRef.fromJson(json['requestedFor']);
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
    }
    if (json['startTime'] == null) {
      startTime = null;
    } else {
      startTime = DateTime.parse(json['startTime']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (buildNumber != null)
      json['buildNumber'] = buildNumber;
    if (deleted != null)
      json['deleted'] = deleted;
    if (finishTime != null)
      json['finishTime'] = finishTime == null ? null : finishTime.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (queueTime != null)
      json['queueTime'] = queueTime == null ? null : queueTime.toUtc().toIso8601String();
    if (requestedFor != null)
      json['requestedFor'] = requestedFor;
    if (result != null)
      json['result'] = result;
    if (startTime != null)
      json['startTime'] = startTime == null ? null : startTime.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<BuildReference> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildReference>() : json.map((value) => BuildReference.fromJson(value)).toList();
  }

  static Map<String, BuildReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildReference.fromJson(value));
    }
    return map;
  }
}

