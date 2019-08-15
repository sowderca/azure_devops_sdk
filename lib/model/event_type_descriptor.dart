part of azure_devops_sdk.api;

class EventTypeDescriptor {
  /* A localized description of the event type */
  String description = null;
  /* A unique id for the event type */
  String id = null;
  /* Event-specific inputs */
  List<InputDescriptor> inputDescriptors = [];
  /* A localized friendly name for the event type */
  String name = null;
  /* A unique id for the publisher of this event type */
  String publisherId = null;
  /* Supported versions for the event's resource payloads. */
  List<String> supportedResourceVersions = [];
  /* The url for this resource */
  String url = null;
  EventTypeDescriptor();

  @override
  String toString() {
    return 'EventTypeDescriptor[description=$description, id=$id, inputDescriptors=$inputDescriptors, name=$name, publisherId=$publisherId, supportedResourceVersions=$supportedResourceVersions, url=$url, ]';
  }

  EventTypeDescriptor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['inputDescriptors'] == null) {
      inputDescriptors = null;
    } else {
      inputDescriptors = InputDescriptor.listFromJson(json['inputDescriptors']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['publisherId'] == null) {
      publisherId = null;
    } else {
          publisherId = json['publisherId'];
    }
    if (json['supportedResourceVersions'] == null) {
      supportedResourceVersions = null;
    } else {
      supportedResourceVersions = (json['supportedResourceVersions'] as List).cast<String>();
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (inputDescriptors != null)
      json['inputDescriptors'] = inputDescriptors;
    if (name != null)
      json['name'] = name;
    if (publisherId != null)
      json['publisherId'] = publisherId;
    if (supportedResourceVersions != null)
      json['supportedResourceVersions'] = supportedResourceVersions;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<EventTypeDescriptor> listFromJson(List<dynamic> json) {
    return json == null ? List<EventTypeDescriptor>() : json.map((value) => EventTypeDescriptor.fromJson(value)).toList();
  }

  static Map<String, EventTypeDescriptor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EventTypeDescriptor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventTypeDescriptor.fromJson(value));
    }
    return map;
  }
}

