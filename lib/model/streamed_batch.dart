part of azure_devops_sdk.api;

class StreamedBatch {
  /* ContinuationToken acts as a waterMark. Used while querying large results. */
  String continuationToken = null;
  /* Returns 'true' if it's last batch, 'false' otherwise. */
  bool isLastBatch = null;
  /* The next link for the work item. */
  String nextLink = null;
  /* Values such as rel, sourceId, TargetId, ChangedDate, isActive. */
  List<String> values = [];
  StreamedBatch();

  @override
  String toString() {
    return 'StreamedBatch[continuationToken=$continuationToken, isLastBatch=$isLastBatch, nextLink=$nextLink, values=$values, ]';
  }

  StreamedBatch.fromJson(Map<String, dynamic> json) {
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

  static List<StreamedBatch> listFromJson(List<dynamic> json) {
    return json == null ? List<StreamedBatch>() : json.map((value) => StreamedBatch.fromJson(value)).toList();
  }

  static Map<String, StreamedBatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, StreamedBatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = StreamedBatch.fromJson(value));
    }
    return map;
  }
}

