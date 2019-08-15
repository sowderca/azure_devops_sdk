part of azure_devops_sdk.api;

class Publisher {
  
  ReferenceLinks links = null;
  /* Gets this publisher's localized description. */
  String description = null;
  /* Gets this publisher's identifier. */
  String id = null;
  /* Publisher-specific inputs */
  List<InputDescriptor> inputDescriptors = [];
  /* Gets this publisher's localized name. */
  String name = null;
  /* The service instance type of the first party publisher. */
  String serviceInstanceType = null;
  /* Gets this publisher's supported event types. */
  List<EventTypeDescriptor> supportedEvents = [];
  /* The url for this resource */
  String url = null;
  Publisher();

  @override
  String toString() {
    return 'Publisher[links=$links, description=$description, id=$id, inputDescriptors=$inputDescriptors, name=$name, serviceInstanceType=$serviceInstanceType, supportedEvents=$supportedEvents, url=$url, ]';
  }

  Publisher.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
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
    if (json['serviceInstanceType'] == null) {
      serviceInstanceType = null;
    } else {
          serviceInstanceType = json['serviceInstanceType'];
    }
    if (json['supportedEvents'] == null) {
      supportedEvents = null;
    } else {
      supportedEvents = EventTypeDescriptor.listFromJson(json['supportedEvents']);
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
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (inputDescriptors != null)
      json['inputDescriptors'] = inputDescriptors;
    if (name != null)
      json['name'] = name;
    if (serviceInstanceType != null)
      json['serviceInstanceType'] = serviceInstanceType;
    if (supportedEvents != null)
      json['supportedEvents'] = supportedEvents;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Publisher> listFromJson(List<dynamic> json) {
    return json == null ? List<Publisher>() : json.map((value) => Publisher.fromJson(value)).toList();
  }

  static Map<String, Publisher> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Publisher>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Publisher.fromJson(value));
    }
    return map;
  }
}

