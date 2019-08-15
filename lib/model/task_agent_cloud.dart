part of azure_devops_sdk.api;

class TaskAgentCloud {
  /* Gets or sets a AcquireAgentEndpoint using which a request can be made to acquire new agent */
  String acquireAgentEndpoint = null;
  
  int acquisitionTimeout = null;
  
  int agentCloudId = null;
  
  String getAccountParallelismEndpoint = null;
  
  String getAgentDefinitionEndpoint = null;
  
  String getAgentRequestStatusEndpoint = null;
  
  String id = null;
  /* Signifies that this Agent Cloud is internal and should not be user-manageable */
  bool internal = null;
  
  int maxParallelism = null;
  
  String name = null;
  
  String releaseAgentEndpoint = null;
  
  String sharedSecret = null;
  /* Gets or sets the type of the endpoint. */
  String type = null;
  TaskAgentCloud();

  @override
  String toString() {
    return 'TaskAgentCloud[acquireAgentEndpoint=$acquireAgentEndpoint, acquisitionTimeout=$acquisitionTimeout, agentCloudId=$agentCloudId, getAccountParallelismEndpoint=$getAccountParallelismEndpoint, getAgentDefinitionEndpoint=$getAgentDefinitionEndpoint, getAgentRequestStatusEndpoint=$getAgentRequestStatusEndpoint, id=$id, internal=$internal, maxParallelism=$maxParallelism, name=$name, releaseAgentEndpoint=$releaseAgentEndpoint, sharedSecret=$sharedSecret, type=$type, ]';
  }

  TaskAgentCloud.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['acquireAgentEndpoint'] == null) {
      acquireAgentEndpoint = null;
    } else {
          acquireAgentEndpoint = json['acquireAgentEndpoint'];
    }
    if (json['acquisitionTimeout'] == null) {
      acquisitionTimeout = null;
    } else {
          acquisitionTimeout = json['acquisitionTimeout'];
    }
    if (json['agentCloudId'] == null) {
      agentCloudId = null;
    } else {
          agentCloudId = json['agentCloudId'];
    }
    if (json['getAccountParallelismEndpoint'] == null) {
      getAccountParallelismEndpoint = null;
    } else {
          getAccountParallelismEndpoint = json['getAccountParallelismEndpoint'];
    }
    if (json['getAgentDefinitionEndpoint'] == null) {
      getAgentDefinitionEndpoint = null;
    } else {
          getAgentDefinitionEndpoint = json['getAgentDefinitionEndpoint'];
    }
    if (json['getAgentRequestStatusEndpoint'] == null) {
      getAgentRequestStatusEndpoint = null;
    } else {
          getAgentRequestStatusEndpoint = json['getAgentRequestStatusEndpoint'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['internal'] == null) {
      internal = null;
    } else {
          internal = json['internal'];
    }
    if (json['maxParallelism'] == null) {
      maxParallelism = null;
    } else {
          maxParallelism = json['maxParallelism'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['releaseAgentEndpoint'] == null) {
      releaseAgentEndpoint = null;
    } else {
          releaseAgentEndpoint = json['releaseAgentEndpoint'];
    }
    if (json['sharedSecret'] == null) {
      sharedSecret = null;
    } else {
          sharedSecret = json['sharedSecret'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (acquireAgentEndpoint != null)
      json['acquireAgentEndpoint'] = acquireAgentEndpoint;
    if (acquisitionTimeout != null)
      json['acquisitionTimeout'] = acquisitionTimeout;
    if (agentCloudId != null)
      json['agentCloudId'] = agentCloudId;
    if (getAccountParallelismEndpoint != null)
      json['getAccountParallelismEndpoint'] = getAccountParallelismEndpoint;
    if (getAgentDefinitionEndpoint != null)
      json['getAgentDefinitionEndpoint'] = getAgentDefinitionEndpoint;
    if (getAgentRequestStatusEndpoint != null)
      json['getAgentRequestStatusEndpoint'] = getAgentRequestStatusEndpoint;
    if (id != null)
      json['id'] = id;
    if (internal != null)
      json['internal'] = internal;
    if (maxParallelism != null)
      json['maxParallelism'] = maxParallelism;
    if (name != null)
      json['name'] = name;
    if (releaseAgentEndpoint != null)
      json['releaseAgentEndpoint'] = releaseAgentEndpoint;
    if (sharedSecret != null)
      json['sharedSecret'] = sharedSecret;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<TaskAgentCloud> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentCloud>() : json.map((value) => TaskAgentCloud.fromJson(value)).toList();
  }

  static Map<String, TaskAgentCloud> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentCloud>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentCloud.fromJson(value));
    }
    return map;
  }
}

