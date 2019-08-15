part of azure_devops_sdk.api;

class Change {
  
  IdentityRef author = null;
  /* The location of a user-friendly representation of the resource. */
  String displayUri = null;
  /* The identifier for the change. For a commit, this would be the SHA1. For a TFVC changeset, this would be the changeset ID. */
  String id = null;
  /* The location of the full representation of the resource. */
  String location = null;
  /* The description of the change. This might be a commit message or changeset description. */
  String message = null;
  /* Indicates whether the message was truncated. */
  bool messageTruncated = null;
  /* The person or process that pushed the change. */
  String pusher = null;
  /* The timestamp for the change. */
  DateTime timestamp = null;
  /* The type of change. \"commit\", \"changeset\", etc. */
  String type = null;
  Change();

  @override
  String toString() {
    return 'Change[author=$author, displayUri=$displayUri, id=$id, location=$location, message=$message, messageTruncated=$messageTruncated, pusher=$pusher, timestamp=$timestamp, type=$type, ]';
  }

  Change.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['author'] == null) {
      author = null;
    } else {
      author = IdentityRef.fromJson(json['author']);
    }
    if (json['displayUri'] == null) {
      displayUri = null;
    } else {
          displayUri = json['displayUri'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['location'] == null) {
      location = null;
    } else {
          location = json['location'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['messageTruncated'] == null) {
      messageTruncated = null;
    } else {
          messageTruncated = json['messageTruncated'];
    }
    if (json['pusher'] == null) {
      pusher = null;
    } else {
          pusher = json['pusher'];
    }
    if (json['timestamp'] == null) {
      timestamp = null;
    } else {
      timestamp = DateTime.parse(json['timestamp']);
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (author != null)
      json['author'] = author;
    if (displayUri != null)
      json['displayUri'] = displayUri;
    if (id != null)
      json['id'] = id;
    if (location != null)
      json['location'] = location;
    if (message != null)
      json['message'] = message;
    if (messageTruncated != null)
      json['messageTruncated'] = messageTruncated;
    if (pusher != null)
      json['pusher'] = pusher;
    if (timestamp != null)
      json['timestamp'] = timestamp == null ? null : timestamp.toUtc().toIso8601String();
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<Change> listFromJson(List<dynamic> json) {
    return json == null ? List<Change>() : json.map((value) => Change.fromJson(value)).toList();
  }

  static Map<String, Change> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Change>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Change.fromJson(value));
    }
    return map;
  }
}

