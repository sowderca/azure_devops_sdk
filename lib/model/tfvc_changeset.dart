part of azure_devops_sdk.api;

class TfvcChangeset {
  
  ReferenceLinks links = null;
  
  IdentityRef author = null;
  /* Id of the changeset. */
  int changesetId = null;
  
  IdentityRef checkedInBy = null;
  /* Comment for the changeset. */
  String comment = null;
  /* Was the Comment result truncated? */
  bool commentTruncated = null;
  /* Creation date of the changeset. */
  DateTime createdDate = null;
  /* URL to retrieve the item. */
  String url = null;
  TfvcChangeset();

  @override
  String toString() {
    return 'TfvcChangeset[links=$links, author=$author, changesetId=$changesetId, checkedInBy=$checkedInBy, comment=$comment, commentTruncated=$commentTruncated, createdDate=$createdDate, url=$url, ]';
  }

  TfvcChangeset.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['author'] == null) {
      author = null;
    } else {
      author = IdentityRef.fromJson(json['author']);
    }
    if (json['changesetId'] == null) {
      changesetId = null;
    } else {
          changesetId = json['changesetId'];
    }
    if (json['checkedInBy'] == null) {
      checkedInBy = null;
    } else {
      checkedInBy = IdentityRef.fromJson(json['checkedInBy']);
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['commentTruncated'] == null) {
      commentTruncated = null;
    } else {
          commentTruncated = json['commentTruncated'];
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (author != null)
      json['author'] = author;
    if (changesetId != null)
      json['changesetId'] = changesetId;
    if (checkedInBy != null)
      json['checkedInBy'] = checkedInBy;
    if (comment != null)
      json['comment'] = comment;
    if (commentTruncated != null)
      json['commentTruncated'] = commentTruncated;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TfvcChangeset> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcChangeset>() : json.map((value) => TfvcChangeset.fromJson(value)).toList();
  }

  static Map<String, TfvcChangeset> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcChangeset>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcChangeset.fromJson(value));
    }
    return map;
  }
}

