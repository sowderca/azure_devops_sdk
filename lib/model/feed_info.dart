part of azure_devops_sdk.api;

class FeedInfo {
  /* Id of the collection. */
  String collectionId = null;
  /* Name of the collection. */
  String collectionName = null;
  /* Id of the feed. */
  String feedId = null;
  /* Name of the feed. */
  String feedName = null;
  /* Latest matched version of package in this Feed. */
  String latestMatchedVersion = null;
  /* Latest version of package in this Feed. */
  String latestVersion = null;
  /* Url of package in this Feed. */
  String packageUrl = null;
  /* List of views which contain the matched package. */
  List<String> views = [];
  FeedInfo();

  @override
  String toString() {
    return 'FeedInfo[collectionId=$collectionId, collectionName=$collectionName, feedId=$feedId, feedName=$feedName, latestMatchedVersion=$latestMatchedVersion, latestVersion=$latestVersion, packageUrl=$packageUrl, views=$views, ]';
  }

  FeedInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['collectionId'] == null) {
      collectionId = null;
    } else {
          collectionId = json['collectionId'];
    }
    if (json['collectionName'] == null) {
      collectionName = null;
    } else {
          collectionName = json['collectionName'];
    }
    if (json['feedId'] == null) {
      feedId = null;
    } else {
          feedId = json['feedId'];
    }
    if (json['feedName'] == null) {
      feedName = null;
    } else {
          feedName = json['feedName'];
    }
    if (json['latestMatchedVersion'] == null) {
      latestMatchedVersion = null;
    } else {
          latestMatchedVersion = json['latestMatchedVersion'];
    }
    if (json['latestVersion'] == null) {
      latestVersion = null;
    } else {
          latestVersion = json['latestVersion'];
    }
    if (json['packageUrl'] == null) {
      packageUrl = null;
    } else {
          packageUrl = json['packageUrl'];
    }
    if (json['views'] == null) {
      views = null;
    } else {
      views = (json['views'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (collectionId != null)
      json['collectionId'] = collectionId;
    if (collectionName != null)
      json['collectionName'] = collectionName;
    if (feedId != null)
      json['feedId'] = feedId;
    if (feedName != null)
      json['feedName'] = feedName;
    if (latestMatchedVersion != null)
      json['latestMatchedVersion'] = latestMatchedVersion;
    if (latestVersion != null)
      json['latestVersion'] = latestVersion;
    if (packageUrl != null)
      json['packageUrl'] = packageUrl;
    if (views != null)
      json['views'] = views;
    return json;
  }

  static List<FeedInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedInfo>() : json.map((value) => FeedInfo.fromJson(value)).toList();
  }

  static Map<String, FeedInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedInfo.fromJson(value));
    }
    return map;
  }
}

