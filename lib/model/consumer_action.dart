part of azure_devops_sdk.api;

class ConsumerAction {
  
  ReferenceLinks links = null;
  /* Gets or sets the flag indicating if resource version can be overridden when creating or editing a subscription. */
  bool allowResourceVersionOverride = null;
  /* Gets or sets the identifier of the consumer to which this action belongs. */
  String consumerId = null;
  /* Gets or sets this action's localized description. */
  String description = null;
  /* Gets or sets this action's identifier. */
  String id = null;
  /* Gets or sets this action's input descriptors. */
  List<InputDescriptor> inputDescriptors = [];
  /* Gets or sets this action's localized name. */
  String name = null;
  /* Gets or sets this action's supported event identifiers. */
  List<String> supportedEventTypes = [];
  /* Gets or sets this action's supported resource versions. */
  Map<String, List<String>> supportedResourceVersions = {};
  /* The url for this resource */
  String url = null;
  ConsumerAction();

  @override
  String toString() {
    return 'ConsumerAction[links=$links, allowResourceVersionOverride=$allowResourceVersionOverride, consumerId=$consumerId, description=$description, id=$id, inputDescriptors=$inputDescriptors, name=$name, supportedEventTypes=$supportedEventTypes, supportedResourceVersions=$supportedResourceVersions, url=$url, ]';
  }

  ConsumerAction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['allowResourceVersionOverride'] == null) {
      allowResourceVersionOverride = null;
    } else {
          allowResourceVersionOverride = json['allowResourceVersionOverride'];
    }
    if (json['consumerId'] == null) {
      consumerId = null;
    } else {
          consumerId = json['consumerId'];
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
    if (json['supportedEventTypes'] == null) {
      supportedEventTypes = null;
    } else {
      supportedEventTypes = (json['supportedEventTypes'] as List).cast<String>();
    }
    if (json['supportedResourceVersions'] == null) {
      supportedResourceVersions = null;
    } else {
      supportedResourceVersions = List.mapFromJson(json['supportedResourceVersions']);
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
    if (allowResourceVersionOverride != null)
      json['allowResourceVersionOverride'] = allowResourceVersionOverride;
    if (consumerId != null)
      json['consumerId'] = consumerId;
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (inputDescriptors != null)
      json['inputDescriptors'] = inputDescriptors;
    if (name != null)
      json['name'] = name;
    if (supportedEventTypes != null)
      json['supportedEventTypes'] = supportedEventTypes;
    if (supportedResourceVersions != null)
      json['supportedResourceVersions'] = supportedResourceVersions;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ConsumerAction> listFromJson(List<dynamic> json) {
    return json == null ? List<ConsumerAction>() : json.map((value) => ConsumerAction.fromJson(value)).toList();
  }

  static Map<String, ConsumerAction> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ConsumerAction>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ConsumerAction.fromJson(value));
    }
    return map;
  }
}

