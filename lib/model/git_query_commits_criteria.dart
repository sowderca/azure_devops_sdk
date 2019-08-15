part of azure_devops_sdk.api;

class GitQueryCommitsCriteria {
  /* Number of entries to skip */
  int $skip = null;
  /* Maximum number of entries to retrieve */
  int $top = null;
  /* Alias or display name of the author */
  String author = null;
  
  GitVersionDescriptor compareVersion = null;
  /* Only applies when an itemPath is specified. This determines whether to exclude delete entries of the specified path. */
  bool excludeDeletes = null;
  /* If provided, a lower bound for filtering commits alphabetically */
  String fromCommitId = null;
  /* If provided, only include history entries created after this date (string) */
  String fromDate = null;
  /* What Git history mode should be used. This only applies to the search criteria when Ids = null and an itemPath is specified. */
  String historyMode = null;
  //enum historyModeEnum {  simplifiedHistory,  firstParent,  fullHistory,  fullHistorySimplifyMerges,  };{
  /* If provided, specifies the exact commit ids of the commits to fetch. May not be combined with other parameters. */
  List<String> ids = [];
  /* Whether to include the _links field on the shallow references */
  bool includeLinks = null;
  /* Whether to include the push information */
  bool includePushData = null;
  /* Whether to include the image Url for committers and authors */
  bool includeUserImageUrl = null;
  /* Whether to include linked work items */
  bool includeWorkItems = null;
  /* Path of item to search under */
  String itemPath = null;
  
  GitVersionDescriptor itemVersion = null;
  /* If provided, an upper bound for filtering commits alphabetically */
  String toCommitId = null;
  /* If provided, only include history entries created before this date (string) */
  String toDate = null;
  /* Alias or display name of the committer */
  String user = null;
  GitQueryCommitsCriteria();

  @override
  String toString() {
    return 'GitQueryCommitsCriteria[$skip=$$skip, $top=$$top, author=$author, compareVersion=$compareVersion, excludeDeletes=$excludeDeletes, fromCommitId=$fromCommitId, fromDate=$fromDate, historyMode=$historyMode, ids=$ids, includeLinks=$includeLinks, includePushData=$includePushData, includeUserImageUrl=$includeUserImageUrl, includeWorkItems=$includeWorkItems, itemPath=$itemPath, itemVersion=$itemVersion, toCommitId=$toCommitId, toDate=$toDate, user=$user, ]';
  }

  GitQueryCommitsCriteria.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['$skip'] == null) {
      $skip = null;
    } else {
          $skip = json['$skip'];
    }
    if (json['$top'] == null) {
      $top = null;
    } else {
          $top = json['$top'];
    }
    if (json['author'] == null) {
      author = null;
    } else {
          author = json['author'];
    }
    if (json['compareVersion'] == null) {
      compareVersion = null;
    } else {
      compareVersion = GitVersionDescriptor.fromJson(json['compareVersion']);
    }
    if (json['excludeDeletes'] == null) {
      excludeDeletes = null;
    } else {
          excludeDeletes = json['excludeDeletes'];
    }
    if (json['fromCommitId'] == null) {
      fromCommitId = null;
    } else {
          fromCommitId = json['fromCommitId'];
    }
    if (json['fromDate'] == null) {
      fromDate = null;
    } else {
          fromDate = json['fromDate'];
    }
    if (json['historyMode'] == null) {
      historyMode = null;
    } else {
          historyMode = json['historyMode'];
    }
    if (json['ids'] == null) {
      ids = null;
    } else {
      ids = (json['ids'] as List).cast<String>();
    }
    if (json['includeLinks'] == null) {
      includeLinks = null;
    } else {
          includeLinks = json['includeLinks'];
    }
    if (json['includePushData'] == null) {
      includePushData = null;
    } else {
          includePushData = json['includePushData'];
    }
    if (json['includeUserImageUrl'] == null) {
      includeUserImageUrl = null;
    } else {
          includeUserImageUrl = json['includeUserImageUrl'];
    }
    if (json['includeWorkItems'] == null) {
      includeWorkItems = null;
    } else {
          includeWorkItems = json['includeWorkItems'];
    }
    if (json['itemPath'] == null) {
      itemPath = null;
    } else {
          itemPath = json['itemPath'];
    }
    if (json['itemVersion'] == null) {
      itemVersion = null;
    } else {
      itemVersion = GitVersionDescriptor.fromJson(json['itemVersion']);
    }
    if (json['toCommitId'] == null) {
      toCommitId = null;
    } else {
          toCommitId = json['toCommitId'];
    }
    if (json['toDate'] == null) {
      toDate = null;
    } else {
          toDate = json['toDate'];
    }
    if (json['user'] == null) {
      user = null;
    } else {
          user = json['user'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if ($skip != null)
      json['$skip'] = $skip;
    if ($top != null)
      json['$top'] = $top;
    if (author != null)
      json['author'] = author;
    if (compareVersion != null)
      json['compareVersion'] = compareVersion;
    if (excludeDeletes != null)
      json['excludeDeletes'] = excludeDeletes;
    if (fromCommitId != null)
      json['fromCommitId'] = fromCommitId;
    if (fromDate != null)
      json['fromDate'] = fromDate;
    if (historyMode != null)
      json['historyMode'] = historyMode;
    if (ids != null)
      json['ids'] = ids;
    if (includeLinks != null)
      json['includeLinks'] = includeLinks;
    if (includePushData != null)
      json['includePushData'] = includePushData;
    if (includeUserImageUrl != null)
      json['includeUserImageUrl'] = includeUserImageUrl;
    if (includeWorkItems != null)
      json['includeWorkItems'] = includeWorkItems;
    if (itemPath != null)
      json['itemPath'] = itemPath;
    if (itemVersion != null)
      json['itemVersion'] = itemVersion;
    if (toCommitId != null)
      json['toCommitId'] = toCommitId;
    if (toDate != null)
      json['toDate'] = toDate;
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<GitQueryCommitsCriteria> listFromJson(List<dynamic> json) {
    return json == null ? List<GitQueryCommitsCriteria>() : json.map((value) => GitQueryCommitsCriteria.fromJson(value)).toList();
  }

  static Map<String, GitQueryCommitsCriteria> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitQueryCommitsCriteria>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitQueryCommitsCriteria.fromJson(value));
    }
    return map;
  }
}

