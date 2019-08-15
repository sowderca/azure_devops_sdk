part of azure_devops_sdk.api;

class ReportingWorkItemRevisionsFilter {
  /* A list of fields to return in work item revisions. Omit this parameter to get all reportable fields. */
  List<String> fields = [];
  /* Include deleted work item in the result. */
  bool includeDeleted = null;
  /* Return an identity reference instead of a string value for identity fields. */
  bool includeIdentityRef = null;
  /* Include only the latest version of a work item, skipping over all previous revisions of the work item. */
  bool includeLatestOnly = null;
  /* Include tag reference instead of string value for System.Tags field */
  bool includeTagRef = null;
  /* A list of types to filter the results to specific work item types. Omit this parameter to get work item revisions of all work item types. */
  List<String> types = [];
  ReportingWorkItemRevisionsFilter();

  @override
  String toString() {
    return 'ReportingWorkItemRevisionsFilter[fields=$fields, includeDeleted=$includeDeleted, includeIdentityRef=$includeIdentityRef, includeLatestOnly=$includeLatestOnly, includeTagRef=$includeTagRef, types=$types, ]';
  }

  ReportingWorkItemRevisionsFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fields'] == null) {
      fields = null;
    } else {
      fields = (json['fields'] as List).cast<String>();
    }
    if (json['includeDeleted'] == null) {
      includeDeleted = null;
    } else {
          includeDeleted = json['includeDeleted'];
    }
    if (json['includeIdentityRef'] == null) {
      includeIdentityRef = null;
    } else {
          includeIdentityRef = json['includeIdentityRef'];
    }
    if (json['includeLatestOnly'] == null) {
      includeLatestOnly = null;
    } else {
          includeLatestOnly = json['includeLatestOnly'];
    }
    if (json['includeTagRef'] == null) {
      includeTagRef = null;
    } else {
          includeTagRef = json['includeTagRef'];
    }
    if (json['types'] == null) {
      types = null;
    } else {
      types = (json['types'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fields != null)
      json['fields'] = fields;
    if (includeDeleted != null)
      json['includeDeleted'] = includeDeleted;
    if (includeIdentityRef != null)
      json['includeIdentityRef'] = includeIdentityRef;
    if (includeLatestOnly != null)
      json['includeLatestOnly'] = includeLatestOnly;
    if (includeTagRef != null)
      json['includeTagRef'] = includeTagRef;
    if (types != null)
      json['types'] = types;
    return json;
  }

  static List<ReportingWorkItemRevisionsFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<ReportingWorkItemRevisionsFilter>() : json.map((value) => ReportingWorkItemRevisionsFilter.fromJson(value)).toList();
  }

  static Map<String, ReportingWorkItemRevisionsFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportingWorkItemRevisionsFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReportingWorkItemRevisionsFilter.fromJson(value));
    }
    return map;
  }
}

