part of azure_devops_sdk.api;

class AuditLogQueryResult {
  /* The continuation token to pass to get the next set of results */
  String continuationToken = null;
  /* The list of audit log entries */
  List<DecoratedAuditLogEntry> decoratedAuditLogEntries = [];
  /* True when there are more matching results to be fetched, false otherwise. */
  bool hasMore = null;
  AuditLogQueryResult();

  @override
  String toString() {
    return 'AuditLogQueryResult[continuationToken=$continuationToken, decoratedAuditLogEntries=$decoratedAuditLogEntries, hasMore=$hasMore, ]';
  }

  AuditLogQueryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['continuationToken'] == null) {
      continuationToken = null;
    } else {
          continuationToken = json['continuationToken'];
    }
    if (json['decoratedAuditLogEntries'] == null) {
      decoratedAuditLogEntries = null;
    } else {
      decoratedAuditLogEntries = DecoratedAuditLogEntry.listFromJson(json['decoratedAuditLogEntries']);
    }
    if (json['hasMore'] == null) {
      hasMore = null;
    } else {
          hasMore = json['hasMore'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (continuationToken != null)
      json['continuationToken'] = continuationToken;
    if (decoratedAuditLogEntries != null)
      json['decoratedAuditLogEntries'] = decoratedAuditLogEntries;
    if (hasMore != null)
      json['hasMore'] = hasMore;
    return json;
  }

  static List<AuditLogQueryResult> listFromJson(List<dynamic> json) {
    return json == null ? List<AuditLogQueryResult>() : json.map((value) => AuditLogQueryResult.fromJson(value)).toList();
  }

  static Map<String, AuditLogQueryResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AuditLogQueryResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AuditLogQueryResult.fromJson(value));
    }
    return map;
  }
}

