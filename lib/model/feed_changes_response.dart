part of azure_devops_sdk.api;

class FeedChangesResponse {
  
  ReferenceLinks links = null;
  /* The number of changes in this set. */
  int count = null;
  /* A container that encapsulates the state of the feed after a create, update, or delete. */
  List<FeedChange> feedChanges = [];
  /* When iterating through the log of changes this value indicates the value that should be used for the next continuation token. */
  int nextFeedContinuationToken = null;
  FeedChangesResponse();

  @override
  String toString() {
    return 'FeedChangesResponse[links=$links, count=$count, feedChanges=$feedChanges, nextFeedContinuationToken=$nextFeedContinuationToken, ]';
  }

  FeedChangesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['feedChanges'] == null) {
      feedChanges = null;
    } else {
      feedChanges = FeedChange.listFromJson(json['feedChanges']);
    }
    if (json['nextFeedContinuationToken'] == null) {
      nextFeedContinuationToken = null;
    } else {
          nextFeedContinuationToken = json['nextFeedContinuationToken'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (count != null)
      json['count'] = count;
    if (feedChanges != null)
      json['feedChanges'] = feedChanges;
    if (nextFeedContinuationToken != null)
      json['nextFeedContinuationToken'] = nextFeedContinuationToken;
    return json;
  }

  static List<FeedChangesResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedChangesResponse>() : json.map((value) => FeedChangesResponse.fromJson(value)).toList();
  }

  static Map<String, FeedChangesResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedChangesResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedChangesResponse.fromJson(value));
    }
    return map;
  }
}

