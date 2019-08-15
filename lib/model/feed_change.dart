part of azure_devops_sdk.api;

class FeedChange {
  /* The type of operation. */
  String changeType = null;
  //enum changeTypeEnum {  addOrUpdate,  delete,  };{
  
  Feed feed = null;
  /* A token that identifies the next change in the log of changes. */
  int feedContinuationToken = null;
  /* A token that identifies the latest package change for this feed.  This can be used to quickly determine if there have been any changes to packages in a specific feed. */
  int latestPackageContinuationToken = null;
  FeedChange();

  @override
  String toString() {
    return 'FeedChange[changeType=$changeType, feed=$feed, feedContinuationToken=$feedContinuationToken, latestPackageContinuationToken=$latestPackageContinuationToken, ]';
  }

  FeedChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changeType'] == null) {
      changeType = null;
    } else {
          changeType = json['changeType'];
    }
    if (json['feed'] == null) {
      feed = null;
    } else {
      feed = Feed.fromJson(json['feed']);
    }
    if (json['feedContinuationToken'] == null) {
      feedContinuationToken = null;
    } else {
          feedContinuationToken = json['feedContinuationToken'];
    }
    if (json['latestPackageContinuationToken'] == null) {
      latestPackageContinuationToken = null;
    } else {
          latestPackageContinuationToken = json['latestPackageContinuationToken'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changeType != null)
      json['changeType'] = changeType;
    if (feed != null)
      json['feed'] = feed;
    if (feedContinuationToken != null)
      json['feedContinuationToken'] = feedContinuationToken;
    if (latestPackageContinuationToken != null)
      json['latestPackageContinuationToken'] = latestPackageContinuationToken;
    return json;
  }

  static List<FeedChange> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedChange>() : json.map((value) => FeedChange.fromJson(value)).toList();
  }

  static Map<String, FeedChange> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedChange>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedChange.fromJson(value));
    }
    return map;
  }
}

