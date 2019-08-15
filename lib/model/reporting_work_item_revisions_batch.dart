part of azure_devops_sdk.api;

class ReportingWorkItemRevisionsBatch {
  /* ContinuationToken acts as a waterMark. Used while querying large results. */
  String continuationToken = null;
  /* Returns 'true' if it's last batch, 'false' otherwise. */
  bool isLastBatch = null;
  /* The next link for the work item. */
  String nextLink = null;
  /* Values such as rel, sourceId, TargetId, ChangedDate, isActive. */
  List<String> values = [];
  ReportingWorkItemRevisionsBatch();

  @override
  String toString() {
    return 'ReportingWorkItemRevisionsBatch[continuationToken=$continuationToken, isLastBatch=$isLastBatch, nextLink=$nextLink, values=$values, ]';
  }

  ReportingWorkItemRevisionsBatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['continuationToken'] == null) {
      continuationToken = null;
    } else {
          continuationToken = json['continuationToken'];
    }
    if (json['isLastBatch'] == null) {
      isLastBatch = null;
    } else {
          isLastBatch = json['isLastBatch'];
    }
    if (json['nextLink'] == null) {
      nextLink = null;
    } else {
          nextLink = json['nextLink'];
    }
    if (json['values'] == null) {
      values = null;
    } else {
      values = (json['values'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (continuationToken != null)
      json['continuationToken'] = continuationToken;
    if (isLastBatch != null)
      json['isLastBatch'] = isLastBatch;
    if (nextLink != null)
      json['nextLink'] = nextLink;
    if (values != null)
      json['values'] = values;
    return json;
  }

  static List<ReportingWorkItemRevisionsBatch> listFromJson(List<dynamic> json) {
    return json == null ? List<ReportingWorkItemRevisionsBatch>() : json.map((value) => ReportingWorkItemRevisionsBatch.fromJson(value)).toList();
  }

  static Map<String, ReportingWorkItemRevisionsBatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportingWorkItemRevisionsBatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReportingWorkItemRevisionsBatch.fromJson(value));
    }
    return map;
  }
}

