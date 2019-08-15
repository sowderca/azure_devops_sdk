part of azure_devops_sdk.api;

class ApplicationType {
  /* Helper link url */
  String actionUriLink = null;
  /* The link that points to aut results site */
  String autPortalLink = null;
  /* true if application results collection is enabled for this tenant */
  bool isEnabled = null;
  /* the max no. of application components allowed for collection per run */
  int maxComponentsAllowedForCollection = null;
  /* The max no. of counters that can be collected per aut */
  int maxCountersAllowed = null;
  /* Application Type */
  String type = null;
  ApplicationType();

  @override
  String toString() {
    return 'ApplicationType[actionUriLink=$actionUriLink, autPortalLink=$autPortalLink, isEnabled=$isEnabled, maxComponentsAllowedForCollection=$maxComponentsAllowedForCollection, maxCountersAllowed=$maxCountersAllowed, type=$type, ]';
  }

  ApplicationType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionUriLink'] == null) {
      actionUriLink = null;
    } else {
          actionUriLink = json['actionUriLink'];
    }
    if (json['autPortalLink'] == null) {
      autPortalLink = null;
    } else {
          autPortalLink = json['autPortalLink'];
    }
    if (json['isEnabled'] == null) {
      isEnabled = null;
    } else {
          isEnabled = json['isEnabled'];
    }
    if (json['maxComponentsAllowedForCollection'] == null) {
      maxComponentsAllowedForCollection = null;
    } else {
          maxComponentsAllowedForCollection = json['maxComponentsAllowedForCollection'];
    }
    if (json['maxCountersAllowed'] == null) {
      maxCountersAllowed = null;
    } else {
          maxCountersAllowed = json['maxCountersAllowed'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actionUriLink != null)
      json['actionUriLink'] = actionUriLink;
    if (autPortalLink != null)
      json['autPortalLink'] = autPortalLink;
    if (isEnabled != null)
      json['isEnabled'] = isEnabled;
    if (maxComponentsAllowedForCollection != null)
      json['maxComponentsAllowedForCollection'] = maxComponentsAllowedForCollection;
    if (maxCountersAllowed != null)
      json['maxCountersAllowed'] = maxCountersAllowed;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<ApplicationType> listFromJson(List<dynamic> json) {
    return json == null ? List<ApplicationType>() : json.map((value) => ApplicationType.fromJson(value)).toList();
  }

  static Map<String, ApplicationType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApplicationType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApplicationType.fromJson(value));
    }
    return map;
  }
}

