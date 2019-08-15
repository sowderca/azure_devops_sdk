part of azure_devops_sdk.api;

class UpstreamSourceInfo {
  /* Locator for connecting to the upstream source in a user friendly format, that may potentially change over time */
  String displayLocation = null;
  /* Identity of the upstream source. */
  String id = null;
  /* Locator for connecting to the upstream source */
  String location = null;
  /* Display name. */
  String name = null;
  /* Source type, such as Public or Internal. */
  String sourceType = null;
  //enum sourceTypeEnum {  public,  internal,  };{
  UpstreamSourceInfo();

  @override
  String toString() {
    return 'UpstreamSourceInfo[displayLocation=$displayLocation, id=$id, location=$location, name=$name, sourceType=$sourceType, ]';
  }

  UpstreamSourceInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['sourceType'] == null) {
      sourceType = null;
    } else {
          sourceType = json['sourceType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayLocation != null)
      json['displayLocation'] = displayLocation;
    if (id != null)
      json['id'] = id;
    if (location != null)
      json['location'] = location;
    if (name != null)
      json['name'] = name;
    if (sourceType != null)
      json['sourceType'] = sourceType;
    return json;
  }

  static List<UpstreamSourceInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<UpstreamSourceInfo>() : json.map((value) => UpstreamSourceInfo.fromJson(value)).toList();
  }

  static Map<String, UpstreamSourceInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpstreamSourceInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpstreamSourceInfo.fromJson(value));
    }
    return map;
  }
}

