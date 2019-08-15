part of azure_devops_sdk.api;

class SourceRepository {
  /* The name of the default branch. */
  String defaultBranch = null;
  /* The full name of the repository. */
  String fullName = null;
  /* The ID of the repository. */
  String id = null;
  /* The friendly name of the repository. */
  String name = null;
  
  Map<String, String> properties = {};
  /* The name of the source provider the repository is from. */
  String sourceProviderName = null;
  /* The URL of the repository. */
  String url = null;
  SourceRepository();

  @override
  String toString() {
    return 'SourceRepository[defaultBranch=$defaultBranch, fullName=$fullName, id=$id, name=$name, properties=$properties, sourceProviderName=$sourceProviderName, url=$url, ]';
  }

  SourceRepository.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['defaultBranch'] == null) {
      defaultBranch = null;
    } else {
          defaultBranch = json['defaultBranch'];
    }
    if (json['fullName'] == null) {
      fullName = null;
    } else {
          fullName = json['fullName'];
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
    if (json['properties'] == null) {
      properties = null;
    } else {
          properties = (json['properties'] as Map).cast<String, String>();
    }
    if (json['sourceProviderName'] == null) {
      sourceProviderName = null;
    } else {
          sourceProviderName = json['sourceProviderName'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (defaultBranch != null)
      json['defaultBranch'] = defaultBranch;
    if (fullName != null)
      json['fullName'] = fullName;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (properties != null)
      json['properties'] = properties;
    if (sourceProviderName != null)
      json['sourceProviderName'] = sourceProviderName;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<SourceRepository> listFromJson(List<dynamic> json) {
    return json == null ? List<SourceRepository>() : json.map((value) => SourceRepository.fromJson(value)).toList();
  }

  static Map<String, SourceRepository> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SourceRepository>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SourceRepository.fromJson(value));
    }
    return map;
  }
}

