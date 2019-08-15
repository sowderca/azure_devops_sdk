part of azure_devops_sdk.api;

class ProjectInfo {
  /* The abbreviated name of the project. */
  String abbreviation = null;
  /* The description of the project. */
  String description = null;
  /* The id of the project. */
  String id = null;
  /* The time that this project was last updated. */
  DateTime lastUpdateTime = null;
  /* The name of the project. */
  String name = null;
  /* A set of name-value pairs storing additional property data related to the project. */
  List<ProjectProperty> properties = [];
  /* The current revision of the project. */
  int revision = null;
  /* The current state of the project. */
  String state = null;
  //enum stateEnum {  deleting,  new,  wellFormed,  createPending,  all,  unchanged,  deleted,  };{
  /* A Uri that can be used to refer to this project. */
  String uri = null;
  /* The version number of the project. */
  int version = null;
  /* Indicates whom the project is visible to. */
  String visibility = null;
  //enum visibilityEnum {  private,  public,  };{
  ProjectInfo();

  @override
  String toString() {
    return 'ProjectInfo[abbreviation=$abbreviation, description=$description, id=$id, lastUpdateTime=$lastUpdateTime, name=$name, properties=$properties, revision=$revision, state=$state, uri=$uri, version=$version, visibility=$visibility, ]';
  }

  ProjectInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['abbreviation'] == null) {
      abbreviation = null;
    } else {
          abbreviation = json['abbreviation'];
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
    if (json['lastUpdateTime'] == null) {
      lastUpdateTime = null;
    } else {
      lastUpdateTime = DateTime.parse(json['lastUpdateTime']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = ProjectProperty.listFromJson(json['properties']);
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
    if (json['uri'] == null) {
      uri = null;
    } else {
          uri = json['uri'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
    if (json['visibility'] == null) {
      visibility = null;
    } else {
          visibility = json['visibility'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (abbreviation != null)
      json['abbreviation'] = abbreviation;
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (lastUpdateTime != null)
      json['lastUpdateTime'] = lastUpdateTime == null ? null : lastUpdateTime.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (properties != null)
      json['properties'] = properties;
    if (revision != null)
      json['revision'] = revision;
    if (state != null)
      json['state'] = state;
    if (uri != null)
      json['uri'] = uri;
    if (version != null)
      json['version'] = version;
    if (visibility != null)
      json['visibility'] = visibility;
    return json;
  }

  static List<ProjectInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<ProjectInfo>() : json.map((value) => ProjectInfo.fromJson(value)).toList();
  }

  static Map<String, ProjectInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProjectInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProjectInfo.fromJson(value));
    }
    return map;
  }
}

