part of azure_devops_sdk.api;

class TestVariable {
  /* Description of the test variable */
  String description = null;
  /* Id of the test variable */
  int id = null;
  /* Name of the test variable */
  String name = null;
  
  ShallowReference project = null;
  /* Revision */
  int revision = null;
  /* Url of the test variable */
  String url = null;
  /* List of allowed values */
  List<String> values = [];
  TestVariable();

  @override
  String toString() {
    return 'TestVariable[description=$description, id=$id, name=$name, project=$project, revision=$revision, url=$url, values=$values, ]';
  }

  TestVariable.fromJson(Map<String, dynamic> json) {
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
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ShallowReference.fromJson(json['project']);
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['values'] == null) {
      values = null;
    } else {
      values = (json['values'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (project != null)
      json['project'] = project;
    if (revision != null)
      json['revision'] = revision;
    if (url != null)
      json['url'] = url;
    if (values != null)
      json['values'] = values;
    return json;
  }

  static List<TestVariable> listFromJson(List<dynamic> json) {
    return json == null ? List<TestVariable>() : json.map((value) => TestVariable.fromJson(value)).toList();
  }

  static Map<String, TestVariable> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestVariable>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestVariable.fromJson(value));
    }
    return map;
  }
}

