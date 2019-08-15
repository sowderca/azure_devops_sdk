part of azure_devops_sdk.api;

class ResourceContainer {
  /* Gets or sets the container's base URL, i.e. the URL of the host (collection, application, or deployment) containing the container resource. */
  String baseUrl = null;
  /* Gets or sets the container's specific Id. */
  String id = null;
  /* Gets or sets the container's name. */
  String name = null;
  /* Gets or sets the container's REST API URL. */
  String url = null;
  ResourceContainer();

  @override
  String toString() {
    return 'ResourceContainer[baseUrl=$baseUrl, id=$id, name=$name, url=$url, ]';
  }

  ResourceContainer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['baseUrl'] == null) {
      baseUrl = null;
    } else {
          baseUrl = json['baseUrl'];
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
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (baseUrl != null)
      json['baseUrl'] = baseUrl;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ResourceContainer> listFromJson(List<dynamic> json) {
    return json == null ? List<ResourceContainer>() : json.map((value) => ResourceContainer.fromJson(value)).toList();
  }

  static Map<String, ResourceContainer> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourceContainer>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResourceContainer.fromJson(value));
    }
    return map;
  }
}

