part of azure_devops_sdk.api;

class TfvcShelveset {
  
  ReferenceLinks links = null;
  
  String comment = null;
  
  bool commentTruncated = null;
  
  DateTime createdDate = null;
  
  String id = null;
  
  String name = null;
  
  IdentityRef owner = null;
  
  String url = null;
  TfvcShelveset();

  @override
  String toString() {
    return 'TfvcShelveset[links=$links, comment=$comment, commentTruncated=$commentTruncated, createdDate=$createdDate, id=$id, name=$name, owner=$owner, url=$url, ]';
  }

  TfvcShelveset.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
      owner = IdentityRef.fromJson(json['owner']);
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
    if (comment != null)
      json['comment'] = comment;
    if (commentTruncated != null)
      json['commentTruncated'] = commentTruncated;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (owner != null)
      json['owner'] = owner;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TfvcShelveset> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcShelveset>() : json.map((value) => TfvcShelveset.fromJson(value)).toList();
  }

  static Map<String, TfvcShelveset> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcShelveset>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcShelveset.fromJson(value));
    }
    return map;
  }
}

