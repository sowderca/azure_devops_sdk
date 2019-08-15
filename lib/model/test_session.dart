part of azure_devops_sdk.api;

class TestSession {
  
  ShallowReference area = null;
  /* Comments in the test session */
  String comment = null;
  /* Duration of the session */
  DateTime endDate = null;
  /* Id of the test session */
  int id = null;
  
  IdentityRef lastUpdatedBy = null;
  /* Last updated date */
  DateTime lastUpdatedDate = null;
  
  IdentityRef owner = null;
  
  ShallowReference project = null;
  
  PropertyBag propertyBag = null;
  /* Revision of the test session */
  int revision = null;
  /* Source of the test session */
  String source = null;
  //enum sourceEnum {  unknown,  xtDesktop,  feedbackDesktop,  xtWeb,  feedbackWeb,  xtDesktop2,  sessionInsightsForAll,  };{
  /* Start date */
  DateTime startDate = null;
  /* State of the test session */
  String state = null;
  //enum stateEnum {  unspecified,  notStarted,  inProgress,  paused,  completed,  declined,  };{
  /* Title of the test session */
  String title = null;
  /* Url of Test Session Resource */
  String url = null;
  TestSession();

  @override
  String toString() {
    return 'TestSession[area=$area, comment=$comment, endDate=$endDate, id=$id, lastUpdatedBy=$lastUpdatedBy, lastUpdatedDate=$lastUpdatedDate, owner=$owner, project=$project, propertyBag=$propertyBag, revision=$revision, source=$source, startDate=$startDate, state=$state, title=$title, url=$url, ]';
  }

  TestSession.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['area'] == null) {
      area = null;
    } else {
      area = ShallowReference.fromJson(json['area']);
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['endDate'] == null) {
      endDate = null;
    } else {
      endDate = DateTime.parse(json['endDate']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
    if (json['owner'] == null) {
      owner = null;
    } else {
      owner = IdentityRef.fromJson(json['owner']);
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ShallowReference.fromJson(json['project']);
    }
    if (json['propertyBag'] == null) {
      propertyBag = null;
    } else {
      propertyBag = PropertyBag.fromJson(json['propertyBag']);
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['source'] == null) {
      source = null;
    } else {
          source = json['source'];
    }
    if (json['startDate'] == null) {
      startDate = null;
    } else {
      startDate = DateTime.parse(json['startDate']);
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (area != null)
      json['area'] = area;
    if (comment != null)
      json['comment'] = comment;
    if (endDate != null)
      json['endDate'] = endDate == null ? null : endDate.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedDate != null)
      json['lastUpdatedDate'] = lastUpdatedDate == null ? null : lastUpdatedDate.toUtc().toIso8601String();
    if (owner != null)
      json['owner'] = owner;
    if (project != null)
      json['project'] = project;
    if (propertyBag != null)
      json['propertyBag'] = propertyBag;
    if (revision != null)
      json['revision'] = revision;
    if (source != null)
      json['source'] = source;
    if (startDate != null)
      json['startDate'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (state != null)
      json['state'] = state;
    if (title != null)
      json['title'] = title;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestSession> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSession>() : json.map((value) => TestSession.fromJson(value)).toList();
  }

  static Map<String, TestSession> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSession>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSession.fromJson(value));
    }
    return map;
  }
}

