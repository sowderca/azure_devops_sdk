part of azure_devops_sdk.api;

class RepositoryWebhook {
  /* The friendly name of the repository. */
  String name = null;
  
  List<Object> types = [];
  /* The URL of the repository. */
  String url = null;
  RepositoryWebhook();

  @override
  String toString() {
    return 'RepositoryWebhook[name=$name, types=$types, url=$url, ]';
  }

  RepositoryWebhook.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['types'] == null) {
      types = null;
    } else {
      types = Object.listFromJson(json['types']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (types != null)
      json['types'] = types;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<RepositoryWebhook> listFromJson(List<dynamic> json) {
    return json == null ? List<RepositoryWebhook>() : json.map((value) => RepositoryWebhook.fromJson(value)).toList();
  }

  static Map<String, RepositoryWebhook> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RepositoryWebhook>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RepositoryWebhook.fromJson(value));
    }
    return map;
  }
}

