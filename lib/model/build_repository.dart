part of azure_devops_sdk.api;

class BuildRepository {
  /* Indicates whether to checkout submodules. */
  bool checkoutSubmodules = null;
  /* Indicates whether to clean the target folder when getting code from the repository. */
  String clean = null;
  /* The name of the default branch. */
  String defaultBranch = null;
  /* The ID of the repository. */
  String id = null;
  /* The friendly name of the repository. */
  String name = null;
  
  Map<String, String> properties = {};
  /* The root folder. */
  String rootFolder = null;
  /* The type of the repository. */
  String type = null;
  /* The URL of the repository. */
  String url = null;
  BuildRepository();

  @override
  String toString() {
    return 'BuildRepository[checkoutSubmodules=$checkoutSubmodules, clean=$clean, defaultBranch=$defaultBranch, id=$id, name=$name, properties=$properties, rootFolder=$rootFolder, type=$type, url=$url, ]';
  }

  BuildRepository.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['checkoutSubmodules'] == null) {
      checkoutSubmodules = null;
    } else {
          checkoutSubmodules = json['checkoutSubmodules'];
    }
    if (json['clean'] == null) {
      clean = null;
    } else {
          clean = json['clean'];
    }
    if (json['defaultBranch'] == null) {
      defaultBranch = null;
    } else {
          defaultBranch = json['defaultBranch'];
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
    if (json['rootFolder'] == null) {
      rootFolder = null;
    } else {
          rootFolder = json['rootFolder'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (checkoutSubmodules != null)
      json['checkoutSubmodules'] = checkoutSubmodules;
    if (clean != null)
      json['clean'] = clean;
    if (defaultBranch != null)
      json['defaultBranch'] = defaultBranch;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (properties != null)
      json['properties'] = properties;
    if (rootFolder != null)
      json['rootFolder'] = rootFolder;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<BuildRepository> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildRepository>() : json.map((value) => BuildRepository.fromJson(value)).toList();
  }

  static Map<String, BuildRepository> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildRepository>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildRepository.fromJson(value));
    }
    return map;
  }
}

