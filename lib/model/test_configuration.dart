part of azure_devops_sdk.api;

class TestConfiguration {
  
  ShallowReference area = null;
  /* Description of the configuration */
  String description = null;
  /* Id of the configuration */
  int id = null;
  /* Is the configuration a default for the test plans */
  bool isDefault = null;
  
  IdentityRef lastUpdatedBy = null;
  /* Last Updated Data */
  DateTime lastUpdatedDate = null;
  /* Name of the configuration */
  String name = null;
  
  ShallowReference project = null;
  /* Revision of the the configuration */
  int revision = null;
  /* State of the configuration */
  String state = null;
  //enum stateEnum {  active,  inactive,  };{
  /* Url of Configuration Resource */
  String url = null;
  /* Dictionary of Test Variable, Selected Value */
  List<NameValuePair> values = [];
  TestConfiguration();

  @override
  String toString() {
    return 'TestConfiguration[area=$area, description=$description, id=$id, isDefault=$isDefault, lastUpdatedBy=$lastUpdatedBy, lastUpdatedDate=$lastUpdatedDate, name=$name, project=$project, revision=$revision, state=$state, url=$url, values=$values, ]';
  }

  TestConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['area'] == null) {
      area = null;
    } else {
      area = ShallowReference.fromJson(json['area']);
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
    if (json['isDefault'] == null) {
      isDefault = null;
    } else {
          isDefault = json['isDefault'];
    }
    if (json['lastUpdatedBy'] == null) {
      lastUpdatedBy = null;
    } else {
      lastUpdatedBy = IdentityRef.fromJson(json['lastUpdatedBy']);
    }
    if (json['lastUpdatedDate'] == null) {
      lastUpdatedDate = null;
    } else {
      lastUpdatedDate = DateTime.parse(json['lastUpdatedDate']);
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
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['values'] == null) {
      values = null;
    } else {
      values = NameValuePair.listFromJson(json['values']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (area != null)
      json['area'] = area;
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (isDefault != null)
      json['isDefault'] = isDefault;
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedDate != null)
      json['lastUpdatedDate'] = lastUpdatedDate == null ? null : lastUpdatedDate.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (project != null)
      json['project'] = project;
    if (revision != null)
      json['revision'] = revision;
    if (state != null)
      json['state'] = state;
    if (url != null)
      json['url'] = url;
    if (values != null)
      json['values'] = values;
    return json;
  }

  static List<TestConfiguration> listFromJson(List<dynamic> json) {
    return json == null ? List<TestConfiguration>() : json.map((value) => TestConfiguration.fromJson(value)).toList();
  }

  static Map<String, TestConfiguration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestConfiguration.fromJson(value));
    }
    return map;
  }
}

