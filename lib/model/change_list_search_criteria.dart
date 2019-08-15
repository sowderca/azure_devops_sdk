part of azure_devops_sdk.api;

class ChangeListSearchCriteria {
  /* If provided, a version descriptor to compare against base */
  String compareVersion = null;
  /* If true, don't include delete history entries */
  bool excludeDeletes = null;
  /* Whether or not to follow renames for the given item being queried */
  bool followRenames = null;
  /* If provided, only include history entries created after this date (string) */
  String fromDate = null;
  /* If provided, a version descriptor for the earliest change list to include */
  String fromVersion = null;
  /* Path of item to search under. If the itemPaths memebr is used then it will take precedence over this. */
  String itemPath = null;
  /* List of item paths to search under. If this member is used then itemPath will be ignored. */
  List<String> itemPaths = [];
  /* Version of the items to search */
  String itemVersion = null;
  /* Number of results to skip (used when clicking more...) */
  int skip = null;
  /* If provided, only include history entries created before this date (string) */
  String toDate = null;
  /* If provided, the maximum number of history entries to return */
  int top = null;
  /* If provided, a version descriptor for the latest change list to include */
  String toVersion = null;
  /* Alias or display name of user who made the changes */
  String user = null;
  ChangeListSearchCriteria();

  @override
  String toString() {
    return 'ChangeListSearchCriteria[compareVersion=$compareVersion, excludeDeletes=$excludeDeletes, followRenames=$followRenames, fromDate=$fromDate, fromVersion=$fromVersion, itemPath=$itemPath, itemPaths=$itemPaths, itemVersion=$itemVersion, skip=$skip, toDate=$toDate, top=$top, toVersion=$toVersion, user=$user, ]';
  }

  ChangeListSearchCriteria.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['compareVersion'] == null) {
      compareVersion = null;
    } else {
          compareVersion = json['compareVersion'];
    }
    if (json['excludeDeletes'] == null) {
      excludeDeletes = null;
    } else {
          excludeDeletes = json['excludeDeletes'];
    }
    if (json['followRenames'] == null) {
      followRenames = null;
    } else {
          followRenames = json['followRenames'];
    }
    if (json['fromDate'] == null) {
      fromDate = null;
    } else {
          fromDate = json['fromDate'];
    }
    if (json['fromVersion'] == null) {
      fromVersion = null;
    } else {
          fromVersion = json['fromVersion'];
    }
    if (json['itemPath'] == null) {
      itemPath = null;
    } else {
          itemPath = json['itemPath'];
    }
    if (json['itemPaths'] == null) {
      itemPaths = null;
    } else {
      itemPaths = (json['itemPaths'] as List).cast<String>();
    }
    if (json['itemVersion'] == null) {
      itemVersion = null;
    } else {
          itemVersion = json['itemVersion'];
    }
    if (json['skip'] == null) {
      skip = null;
    } else {
          skip = json['skip'];
    }
    if (json['toDate'] == null) {
      toDate = null;
    } else {
          toDate = json['toDate'];
    }
    if (json['top'] == null) {
      top = null;
    } else {
          top = json['top'];
    }
    if (json['toVersion'] == null) {
      toVersion = null;
    } else {
          toVersion = json['toVersion'];
    }
    if (json['user'] == null) {
      user = null;
    } else {
          user = json['user'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (compareVersion != null)
      json['compareVersion'] = compareVersion;
    if (excludeDeletes != null)
      json['excludeDeletes'] = excludeDeletes;
    if (followRenames != null)
      json['followRenames'] = followRenames;
    if (fromDate != null)
      json['fromDate'] = fromDate;
    if (fromVersion != null)
      json['fromVersion'] = fromVersion;
    if (itemPath != null)
      json['itemPath'] = itemPath;
    if (itemPaths != null)
      json['itemPaths'] = itemPaths;
    if (itemVersion != null)
      json['itemVersion'] = itemVersion;
    if (skip != null)
      json['skip'] = skip;
    if (toDate != null)
      json['toDate'] = toDate;
    if (top != null)
      json['top'] = top;
    if (toVersion != null)
      json['toVersion'] = toVersion;
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<ChangeListSearchCriteria> listFromJson(List<dynamic> json) {
    return json == null ? List<ChangeListSearchCriteria>() : json.map((value) => ChangeListSearchCriteria.fromJson(value)).toList();
  }

  static Map<String, ChangeListSearchCriteria> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ChangeListSearchCriteria>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ChangeListSearchCriteria.fromJson(value));
    }
    return map;
  }
}

