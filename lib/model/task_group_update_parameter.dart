part of azure_devops_sdk.api;

class TaskGroupUpdateParameter {
  /* Sets author name of the task group. */
  String author = null;
  /* Sets category of the task group. */
  String category = null;
  /* Sets comment of the task group. */
  String comment = null;
  /* Sets description of the task group. */
  String description = null;
  /* Sets friendly name of the task group. */
  String friendlyName = null;
  /* Sets url icon of the task group. */
  String iconUrl = null;
  /* Sets the unique identifier of this field. */
  String id = null;
  /* Sets input for the task group. */
  List<TaskInputDefinition> inputs = [];
  /* Sets display name of the task group. */
  String instanceNameFormat = null;
  /* Sets name of the task group. */
  String name = null;
  /* Gets or sets parent task group Id. This is used while creating a draft task group. */
  String parentDefinitionId = null;
  /* Sets revision of the task group. */
  int revision = null;
  /* Sets RunsOn of the task group. Value can be 'Agent', 'Server' or 'DeploymentGroup'. */
  List<String> runsOn = [];
  /* Sets tasks for the task group. */
  List<TaskGroupStep> tasks = [];
  
  TaskVersion version = null;
  TaskGroupUpdateParameter();

  @override
  String toString() {
    return 'TaskGroupUpdateParameter[author=$author, category=$category, comment=$comment, description=$description, friendlyName=$friendlyName, iconUrl=$iconUrl, id=$id, inputs=$inputs, instanceNameFormat=$instanceNameFormat, name=$name, parentDefinitionId=$parentDefinitionId, revision=$revision, runsOn=$runsOn, tasks=$tasks, version=$version, ]';
  }

  TaskGroupUpdateParameter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['author'] == null) {
      author = null;
    } else {
          author = json['author'];
    }
    if (json['category'] == null) {
      category = null;
    } else {
          category = json['category'];
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['friendlyName'] == null) {
      friendlyName = null;
    } else {
          friendlyName = json['friendlyName'];
    }
    if (json['iconUrl'] == null) {
      iconUrl = null;
    } else {
          iconUrl = json['iconUrl'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['inputs'] == null) {
      inputs = null;
    } else {
      inputs = TaskInputDefinition.listFromJson(json['inputs']);
    }
    if (json['instanceNameFormat'] == null) {
      instanceNameFormat = null;
    } else {
          instanceNameFormat = json['instanceNameFormat'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['parentDefinitionId'] == null) {
      parentDefinitionId = null;
    } else {
          parentDefinitionId = json['parentDefinitionId'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['runsOn'] == null) {
      runsOn = null;
    } else {
      runsOn = (json['runsOn'] as List).cast<String>();
    }
    if (json['tasks'] == null) {
      tasks = null;
    } else {
      tasks = TaskGroupStep.listFromJson(json['tasks']);
    }
    if (json['version'] == null) {
      version = null;
    } else {
      version = TaskVersion.fromJson(json['version']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (author != null)
      json['author'] = author;
    if (category != null)
      json['category'] = category;
    if (comment != null)
      json['comment'] = comment;
    if (description != null)
      json['description'] = description;
    if (friendlyName != null)
      json['friendlyName'] = friendlyName;
    if (iconUrl != null)
      json['iconUrl'] = iconUrl;
    if (id != null)
      json['id'] = id;
    if (inputs != null)
      json['inputs'] = inputs;
    if (instanceNameFormat != null)
      json['instanceNameFormat'] = instanceNameFormat;
    if (name != null)
      json['name'] = name;
    if (parentDefinitionId != null)
      json['parentDefinitionId'] = parentDefinitionId;
    if (revision != null)
      json['revision'] = revision;
    if (runsOn != null)
      json['runsOn'] = runsOn;
    if (tasks != null)
      json['tasks'] = tasks;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<TaskGroupUpdateParameter> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskGroupUpdateParameter>() : json.map((value) => TaskGroupUpdateParameter.fromJson(value)).toList();
  }

  static Map<String, TaskGroupUpdateParameter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskGroupUpdateParameter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskGroupUpdateParameter.fromJson(value));
    }
    return map;
  }
}

