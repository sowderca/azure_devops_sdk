part of azure_devops_sdk.api;

class FeedRetentionPolicy {
  /* This attribute is deprecated and is not honoured by retention */
  int ageLimitInDays = null;
  /* Maximum versions to preserve per package and package type. */
  int countLimit = null;
  /* Number of days to preserve a package version after its latest download. */
  int daysToKeepRecentlyDownloadedPackages = null;
  FeedRetentionPolicy();

  @override
  String toString() {
    return 'FeedRetentionPolicy[ageLimitInDays=$ageLimitInDays, countLimit=$countLimit, daysToKeepRecentlyDownloadedPackages=$daysToKeepRecentlyDownloadedPackages, ]';
  }

  FeedRetentionPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ageLimitInDays'] == null) {
      ageLimitInDays = null;
    } else {
          ageLimitInDays = json['ageLimitInDays'];
    }
    if (json['countLimit'] == null) {
      countLimit = null;
    } else {
          countLimit = json['countLimit'];
    }
    if (json['daysToKeepRecentlyDownloadedPackages'] == null) {
      daysToKeepRecentlyDownloadedPackages = null;
    } else {
          daysToKeepRecentlyDownloadedPackages = json['daysToKeepRecentlyDownloadedPackages'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ageLimitInDays != null)
      json['ageLimitInDays'] = ageLimitInDays;
    if (countLimit != null)
      json['countLimit'] = countLimit;
    if (daysToKeepRecentlyDownloadedPackages != null)
      json['daysToKeepRecentlyDownloadedPackages'] = daysToKeepRecentlyDownloadedPackages;
    return json;
  }

  static List<FeedRetentionPolicy> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedRetentionPolicy>() : json.map((value) => FeedRetentionPolicy.fromJson(value)).toList();
  }

  static Map<String, FeedRetentionPolicy> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedRetentionPolicy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedRetentionPolicy.fromJson(value));
    }
    return map;
  }
}

