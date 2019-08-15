part of azure_devops_sdk.api;

class ManualIntervention {
  
  IdentityRef approver = null;
  /* Gets or sets comments for approval. */
  String comments = null;
  /* Gets date on which it got created. */
  DateTime createdOn = null;
  /* Gets the unique identifier for manual intervention. */
  int id = null;
  /* Gets or sets instructions for approval. */
  String instructions = null;
  /* Gets date on which it got modified. */
  DateTime modifiedOn = null;
  /* Gets or sets the name. */
  String name = null;
  
  ReleaseShallowReference release = null;
  
  ReleaseDefinitionShallowReference releaseDefinition = null;
  
  ReleaseEnvironmentShallowReference releaseEnvironment = null;
  /* Gets or sets the status of the manual intervention. */
  String status = null;
  //enum statusEnum {  unknown,  pending,  rejected,  approved,  canceled,  };{
  /* Get task instance identifier. */
  String taskInstanceId = null;
  /* Gets url to access the manual intervention. */
  String url = null;
  ManualIntervention();

  @override
  String toString() {
    return 'ManualIntervention[approver=$approver, comments=$comments, createdOn=$createdOn, id=$id, instructions=$instructions, modifiedOn=$modifiedOn, name=$name, release=$release, releaseDefinition=$releaseDefinition, releaseEnvironment=$releaseEnvironment, status=$status, taskInstanceId=$taskInstanceId, url=$url, ]';
  }

  ManualIntervention.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['approver'] == null) {
      approver = null;
    } else {
      approver = IdentityRef.fromJson(json['approver']);
    }
    if (json['comments'] == null) {
      comments = null;
    } else {
          comments = json['comments'];
    }
    if (json['createdOn'] == null) {
      createdOn = null;
    } else {
      createdOn = DateTime.parse(json['createdOn']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['instructions'] == null) {
      instructions = null;
    } else {
          instructions = json['instructions'];
    }
    if (json['modifiedOn'] == null) {
      modifiedOn = null;
    } else {
      modifiedOn = DateTime.parse(json['modifiedOn']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['release'] == null) {
      release = null;
    } else {
      release = ReleaseShallowReference.fromJson(json['release']);
    }
    if (json['releaseDefinition'] == null) {
      releaseDefinition = null;
    } else {
      releaseDefinition = ReleaseDefinitionShallowReference.fromJson(json['releaseDefinition']);
    }
    if (json['releaseEnvironment'] == null) {
      releaseEnvironment = null;
    } else {
      releaseEnvironment = ReleaseEnvironmentShallowReference.fromJson(json['releaseEnvironment']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['taskInstanceId'] == null) {
      taskInstanceId = null;
    } else {
          taskInstanceId = json['taskInstanceId'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (approver != null)
      json['approver'] = approver;
    if (comments != null)
      json['comments'] = comments;
    if (createdOn != null)
      json['createdOn'] = createdOn == null ? null : createdOn.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (instructions != null)
      json['instructions'] = instructions;
    if (modifiedOn != null)
      json['modifiedOn'] = modifiedOn == null ? null : modifiedOn.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (release != null)
      json['release'] = release;
    if (releaseDefinition != null)
      json['releaseDefinition'] = releaseDefinition;
    if (releaseEnvironment != null)
      json['releaseEnvironment'] = releaseEnvironment;
    if (status != null)
      json['status'] = status;
    if (taskInstanceId != null)
      json['taskInstanceId'] = taskInstanceId;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ManualIntervention> listFromJson(List<dynamic> json) {
    return json == null ? List<ManualIntervention>() : json.map((value) => ManualIntervention.fromJson(value)).toList();
  }

  static Map<String, ManualIntervention> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ManualIntervention>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ManualIntervention.fromJson(value));
    }
    return map;
  }
}

