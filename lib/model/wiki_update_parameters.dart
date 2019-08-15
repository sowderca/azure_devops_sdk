part of azure_devops_sdk.api;

class WikiUpdateParameters {
  /* Name for wiki. */
  String name = null;
  /* Versions of the wiki. */
  List<GitVersionDescriptor> versions = [];
  WikiUpdateParameters();

  @override
  String toString() {
    return 'WikiUpdateParameters[name=$name, versions=$versions, ]';
  }

  WikiUpdateParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['versions'] == null) {
      versions = null;
    } else {
      versions = GitVersionDescriptor.listFromJson(json['versions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (versions != null)
      json['versions'] = versions;
    return json;
  }

  static List<WikiUpdateParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiUpdateParameters>() : json.map((value) => WikiUpdateParameters.fromJson(value)).toList();
  }

  static Map<String, WikiUpdateParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiUpdateParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiUpdateParameters.fromJson(value));
    }
    return map;
  }
}

