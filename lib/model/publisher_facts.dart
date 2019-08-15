part of azure_devops_sdk.api;

class PublisherFacts {
  
  String displayName = null;
  
  String flags = null;
  //enum flagsEnum {  unChanged,  none,  disabled,  verified,  certified,  serviceFlags,  };{
  
  String publisherId = null;
  
  String publisherName = null;
  PublisherFacts();

  @override
  String toString() {
    return 'PublisherFacts[displayName=$displayName, flags=$flags, publisherId=$publisherId, publisherName=$publisherName, ]';
  }

  PublisherFacts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['flags'] == null) {
      flags = null;
    } else {
          flags = json['flags'];
    }
    if (json['publisherId'] == null) {
      publisherId = null;
    } else {
          publisherId = json['publisherId'];
    }
    if (json['publisherName'] == null) {
      publisherName = null;
    } else {
          publisherName = json['publisherName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (flags != null)
      json['flags'] = flags;
    if (publisherId != null)
      json['publisherId'] = publisherId;
    if (publisherName != null)
      json['publisherName'] = publisherName;
    return json;
  }

  static List<PublisherFacts> listFromJson(List<dynamic> json) {
    return json == null ? List<PublisherFacts>() : json.map((value) => PublisherFacts.fromJson(value)).toList();
  }

  static Map<String, PublisherFacts> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PublisherFacts>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PublisherFacts.fromJson(value));
    }
    return map;
  }
}

