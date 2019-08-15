part of azure_devops_sdk.api;

class UpstreamSource {
  /* UTC date that this upstream was deleted. */
  DateTime deletedDate = null;
  /* Locator for connecting to the upstream source in a user friendly format, that may potentially change over time */
  String displayLocation = null;
  /* Identity of the upstream source. */
  String id = null;
  /* For an internal upstream type, track the Azure DevOps organization that contains it. */
  String internalUpstreamCollectionId = null;
  /* For an internal upstream type, track the feed id being referenced. */
  String internalUpstreamFeedId = null;
  /* For an internal upstream type, track the view of the feed being referenced. */
  String internalUpstreamViewId = null;
  /* Consistent locator for connecting to the upstream source. */
  String location = null;
  /* Display name. */
  String name = null;
  /* Package type associated with the upstream source. */
  String protocol = null;
  /* Source type, such as Public or Internal. */
  String upstreamSourceType = null;
  //enum upstreamSourceTypeEnum {  public,  internal,  };{
  UpstreamSource();

  @override
  String toString() {
    return 'UpstreamSource[deletedDate=$deletedDate, displayLocation=$displayLocation, id=$id, internalUpstreamCollectionId=$internalUpstreamCollectionId, internalUpstreamFeedId=$internalUpstreamFeedId, internalUpstreamViewId=$internalUpstreamViewId, location=$location, name=$name, protocol=$protocol, upstreamSourceType=$upstreamSourceType, ]';
  }

  UpstreamSource.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deletedDate'] == null) {
      deletedDate = null;
    } else {
      deletedDate = DateTime.parse(json['deletedDate']);
    }
    if (json['displayLocation'] == null) {
      displayLocation = null;
    } else {
          displayLocation = json['displayLocation'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['internalUpstreamCollectionId'] == null) {
      internalUpstreamCollectionId = null;
    } else {
          internalUpstreamCollectionId = json['internalUpstreamCollectionId'];
    }
    if (json['internalUpstreamFeedId'] == null) {
      internalUpstreamFeedId = null;
    } else {
          internalUpstreamFeedId = json['internalUpstreamFeedId'];
    }
    if (json['internalUpstreamViewId'] == null) {
      internalUpstreamViewId = null;
    } else {
          internalUpstreamViewId = json['internalUpstreamViewId'];
    }
    if (json['location'] == null) {
      location = null;
    } else {
          location = json['location'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['protocol'] == null) {
      protocol = null;
    } else {
          protocol = json['protocol'];
    }
    if (json['upstreamSourceType'] == null) {
      upstreamSourceType = null;
    } else {
          upstreamSourceType = json['upstreamSourceType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deletedDate != null)
      json['deletedDate'] = deletedDate == null ? null : deletedDate.toUtc().toIso8601String();
    if (displayLocation != null)
      json['displayLocation'] = displayLocation;
    if (id != null)
      json['id'] = id;
    if (internalUpstreamCollectionId != null)
      json['internalUpstreamCollectionId'] = internalUpstreamCollectionId;
    if (internalUpstreamFeedId != null)
      json['internalUpstreamFeedId'] = internalUpstreamFeedId;
    if (internalUpstreamViewId != null)
      json['internalUpstreamViewId'] = internalUpstreamViewId;
    if (location != null)
      json['location'] = location;
    if (name != null)
      json['name'] = name;
    if (protocol != null)
      json['protocol'] = protocol;
    if (upstreamSourceType != null)
      json['upstreamSourceType'] = upstreamSourceType;
    return json;
  }

  static List<UpstreamSource> listFromJson(List<dynamic> json) {
    return json == null ? List<UpstreamSource>() : json.map((value) => UpstreamSource.fromJson(value)).toList();
  }

  static Map<String, UpstreamSource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpstreamSource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpstreamSource.fromJson(value));
    }
    return map;
  }
}

