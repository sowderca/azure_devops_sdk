part of azure_devops_sdk.api;

class Request {
  /* The ID of user who created this item. Optional. */
  String createdBy = null;
  /* The date time when this item is created. Optional. */
  DateTime createdDate = null;
  /* An identifier for this item. Optional. */
  String id = null;
  /* An opaque ETag used to synchronize with the version stored at server end. Optional. */
  String storageETag = null;
  /* A URI which can be used to retrieve this item in its raw format. Optional. Note this is distinguished from other URIs that are present in a derived resource. */
  String url = null;
  Request();

  @override
  String toString() {
    return 'Request[createdBy=$createdBy, createdDate=$createdDate, id=$id, storageETag=$storageETag, url=$url, ]';
  }

  Request.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
          createdBy = json['createdBy'];
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
    if (json['storageETag'] == null) {
      storageETag = null;
    } else {
          storageETag = json['storageETag'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (storageETag != null)
      json['storageETag'] = storageETag;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Request> listFromJson(List<dynamic> json) {
    return json == null ? List<Request>() : json.map((value) => Request.fromJson(value)).toList();
  }

  static Map<String, Request> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Request>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Request.fromJson(value));
    }
    return map;
  }
}
