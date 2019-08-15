part of azure_devops_sdk.api;

class TfvcChangesetSearchCriteria {
  /* Alias or display name of user who made the changes */
  String author = null;
  /* Whether or not to follow renames for the given item being queried */
  bool followRenames = null;
  /* If provided, only include changesets created after this date (string) Think of a better name for this. */
  String fromDate = null;
  /* If provided, only include changesets after this changesetID */
  int fromId = null;
  /* Whether to include the _links field on the shallow references */
  bool includeLinks = null;
  /* Path of item to search under */
  String itemPath = null;
  
  List<TfvcMappingFilter> mappings = [];
  /* If provided, only include changesets created before this date (string) Think of a better name for this. */
  String toDate = null;
  /* If provided, a version descriptor for the latest change list to include */
  int toId = null;
  TfvcChangesetSearchCriteria();

  @override
  String toString() {
    return 'TfvcChangesetSearchCriteria[author=$author, followRenames=$followRenames, fromDate=$fromDate, fromId=$fromId, includeLinks=$includeLinks, itemPath=$itemPath, mappings=$mappings, toDate=$toDate, toId=$toId, ]';
  }

  TfvcChangesetSearchCriteria.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['author'] == null) {
      author = null;
    } else {
          author = json['author'];
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
    if (json['fromId'] == null) {
      fromId = null;
    } else {
          fromId = json['fromId'];
    }
    if (json['includeLinks'] == null) {
      includeLinks = null;
    } else {
          includeLinks = json['includeLinks'];
    }
    if (json['itemPath'] == null) {
      itemPath = null;
    } else {
          itemPath = json['itemPath'];
    }
    if (json['mappings'] == null) {
      mappings = null;
    } else {
      mappings = TfvcMappingFilter.listFromJson(json['mappings']);
    }
    if (json['toDate'] == null) {
      toDate = null;
    } else {
          toDate = json['toDate'];
    }
    if (json['toId'] == null) {
      toId = null;
    } else {
          toId = json['toId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (author != null)
      json['author'] = author;
    if (followRenames != null)
      json['followRenames'] = followRenames;
    if (fromDate != null)
      json['fromDate'] = fromDate;
    if (fromId != null)
      json['fromId'] = fromId;
    if (includeLinks != null)
      json['includeLinks'] = includeLinks;
    if (itemPath != null)
      json['itemPath'] = itemPath;
    if (mappings != null)
      json['mappings'] = mappings;
    if (toDate != null)
      json['toDate'] = toDate;
    if (toId != null)
      json['toId'] = toId;
    return json;
  }

  static List<TfvcChangesetSearchCriteria> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcChangesetSearchCriteria>() : json.map((value) => TfvcChangesetSearchCriteria.fromJson(value)).toList();
  }

  static Map<String, TfvcChangesetSearchCriteria> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcChangesetSearchCriteria>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcChangesetSearchCriteria.fromJson(value));
    }
    return map;
  }
}

