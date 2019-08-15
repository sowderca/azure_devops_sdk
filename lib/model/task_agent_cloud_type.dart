part of azure_devops_sdk.api;

class TaskAgentCloudType {
  /* Gets or sets the display name of agent cloud type. */
  String displayName = null;
  /* Gets or sets the input descriptors */
  List<InputDescriptor> inputDescriptors = [];
  /* Gets or sets the name of agent cloud type. */
  String name = null;
  TaskAgentCloudType();

  @override
  String toString() {
    return 'TaskAgentCloudType[displayName=$displayName, inputDescriptors=$inputDescriptors, name=$name, ]';
  }

  TaskAgentCloudType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (inputDescriptors != null)
      json['inputDescriptors'] = inputDescriptors;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<TaskAgentCloudType> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentCloudType>() : json.map((value) => TaskAgentCloudType.fromJson(value)).toList();
  }

  static Map<String, TaskAgentCloudType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentCloudType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentCloudType.fromJson(value));
    }
    return map;
  }
}

