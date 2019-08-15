part of azure_devops_sdk.api;

class TaskGroup {
  
  TaskExecution agentExecution = null;
  
  String author = null;
  
  String category = null;
  
  bool contentsUploaded = null;
  
  String contributionIdentifier = null;
  
  String contributionVersion = null;
  
  List<DataSourceBinding> dataSourceBindings = [];
  
  String definitionType = null;
  
  List<Demand> demands = [];
  
  bool deprecated = null;
  
  String description = null;
  
  bool disabled = null;
  
  Map<String, JObject> execution = {};
  
  String friendlyName = null;
  
  List<TaskGroupDefinition> groups = [];
  
  String helpMarkDown = null;
  
  String helpUrl = null;
  
  String hostType = null;
  
  String iconUrl = null;
  
  String id = null;
  
  List<TaskInputDefinition> inputs = [];
  
  String instanceNameFormat = null;
  
  String minimumAgentVersion = null;
  
  String name = null;
  
  List<TaskOutputVariable> outputVariables = [];
  
  String packageLocation = null;
  
  String packageType = null;
  
  Map<String, JObject> postJobExecution = {};
  
  Map<String, JObject> preJobExecution = {};
  
  bool preview = null;
  
  String releaseNotes = null;
  
  List<String> runsOn = [];
  
  List<String> satisfies = [];
  
  bool serverOwned = null;
  
  bool showEnvironmentVariables = null;
  
  List<TaskSourceDefinition> sourceDefinitions = [];
  
  String sourceLocation = null;
  
  TaskVersion version = null;
  
  List<String> visibility = [];
  TaskGroup();

  @override
  String toString() {
    return 'TaskGroup[agentExecution=$agentExecution, author=$author, category=$category, contentsUploaded=$contentsUploaded, contributionIdentifier=$contributionIdentifier, contributionVersion=$contributionVersion, dataSourceBindings=$dataSourceBindings, definitionType=$definitionType, demands=$demands, deprecated=$deprecated, description=$description, disabled=$disabled, execution=$execution, friendlyName=$friendlyName, groups=$groups, helpMarkDown=$helpMarkDown, helpUrl=$helpUrl, hostType=$hostType, iconUrl=$iconUrl, id=$id, inputs=$inputs, instanceNameFormat=$instanceNameFormat, minimumAgentVersion=$minimumAgentVersion, name=$name, outputVariables=$outputVariables, packageLocation=$packageLocation, packageType=$packageType, postJobExecution=$postJobExecution, preJobExecution=$preJobExecution, preview=$preview, releaseNotes=$releaseNotes, runsOn=$runsOn, satisfies=$satisfies, serverOwned=$serverOwned, showEnvironmentVariables=$showEnvironmentVariables, sourceDefinitions=$sourceDefinitions, sourceLocation=$sourceLocation, version=$version, visibility=$visibility, ]';
  }

  TaskGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agentExecution'] == null) {
      agentExecution = null;
    } else {
      agentExecution = TaskExecution.fromJson(json['agentExecution']);
    }
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
    if (json['contentsUploaded'] == null) {
      contentsUploaded = null;
    } else {
          contentsUploaded = json['contentsUploaded'];
    }
    if (json['contributionIdentifier'] == null) {
      contributionIdentifier = null;
    } else {
          contributionIdentifier = json['contributionIdentifier'];
    }
    if (json['contributionVersion'] == null) {
      contributionVersion = null;
    } else {
          contributionVersion = json['contributionVersion'];
    }
    if (json['dataSourceBindings'] == null) {
      dataSourceBindings = null;
    } else {
      dataSourceBindings = DataSourceBinding.listFromJson(json['dataSourceBindings']);
    }
    if (json['definitionType'] == null) {
      definitionType = null;
    } else {
          definitionType = json['definitionType'];
    }
    if (json['demands'] == null) {
      demands = null;
    } else {
      demands = Demand.listFromJson(json['demands']);
    }
    if (json['deprecated'] == null) {
      deprecated = null;
    } else {
          deprecated = json['deprecated'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['disabled'] == null) {
      disabled = null;
    } else {
          disabled = json['disabled'];
    }
    if (json['execution'] == null) {
      execution = null;
    } else {
      execution = JObject.mapFromJson(json['execution']);
    }
    if (json['friendlyName'] == null) {
      friendlyName = null;
    } else {
          friendlyName = json['friendlyName'];
    }
    if (json['groups'] == null) {
      groups = null;
    } else {
      groups = TaskGroupDefinition.listFromJson(json['groups']);
    }
    if (json['helpMarkDown'] == null) {
      helpMarkDown = null;
    } else {
          helpMarkDown = json['helpMarkDown'];
    }
    if (json['helpUrl'] == null) {
      helpUrl = null;
    } else {
          helpUrl = json['helpUrl'];
    }
    if (json['hostType'] == null) {
      hostType = null;
    } else {
          hostType = json['hostType'];
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
    if (json['minimumAgentVersion'] == null) {
      minimumAgentVersion = null;
    } else {
          minimumAgentVersion = json['minimumAgentVersion'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['outputVariables'] == null) {
      outputVariables = null;
    } else {
      outputVariables = TaskOutputVariable.listFromJson(json['outputVariables']);
    }
    if (json['packageLocation'] == null) {
      packageLocation = null;
    } else {
          packageLocation = json['packageLocation'];
    }
    if (json['packageType'] == null) {
      packageType = null;
    } else {
          packageType = json['packageType'];
    }
    if (json['postJobExecution'] == null) {
      postJobExecution = null;
    } else {
      postJobExecution = JObject.mapFromJson(json['postJobExecution']);
    }
    if (json['preJobExecution'] == null) {
      preJobExecution = null;
    } else {
      preJobExecution = JObject.mapFromJson(json['preJobExecution']);
    }
    if (json['preview'] == null) {
      preview = null;
    } else {
          preview = json['preview'];
    }
    if (json['releaseNotes'] == null) {
      releaseNotes = null;
    } else {
          releaseNotes = json['releaseNotes'];
    }
    if (json['runsOn'] == null) {
      runsOn = null;
    } else {
      runsOn = (json['runsOn'] as List).cast<String>();
    }
    if (json['satisfies'] == null) {
      satisfies = null;
    } else {
      satisfies = (json['satisfies'] as List).cast<String>();
    }
    if (json['serverOwned'] == null) {
      serverOwned = null;
    } else {
          serverOwned = json['serverOwned'];
    }
    if (json['showEnvironmentVariables'] == null) {
      showEnvironmentVariables = null;
    } else {
          showEnvironmentVariables = json['showEnvironmentVariables'];
    }
    if (json['sourceDefinitions'] == null) {
      sourceDefinitions = null;
    } else {
      sourceDefinitions = TaskSourceDefinition.listFromJson(json['sourceDefinitions']);
    }
    if (json['sourceLocation'] == null) {
      sourceLocation = null;
    } else {
          sourceLocation = json['sourceLocation'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
      version = TaskVersion.fromJson(json['version']);
    }
    if (json['visibility'] == null) {
      visibility = null;
    } else {
      visibility = (json['visibility'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agentExecution != null)
      json['agentExecution'] = agentExecution;
    if (author != null)
      json['author'] = author;
    if (category != null)
      json['category'] = category;
    if (contentsUploaded != null)
      json['contentsUploaded'] = contentsUploaded;
    if (contributionIdentifier != null)
      json['contributionIdentifier'] = contributionIdentifier;
    if (contributionVersion != null)
      json['contributionVersion'] = contributionVersion;
    if (dataSourceBindings != null)
      json['dataSourceBindings'] = dataSourceBindings;
    if (definitionType != null)
      json['definitionType'] = definitionType;
    if (demands != null)
      json['demands'] = demands;
    if (deprecated != null)
      json['deprecated'] = deprecated;
    if (description != null)
      json['description'] = description;
    if (disabled != null)
      json['disabled'] = disabled;
    if (execution != null)
      json['execution'] = execution;
    if (friendlyName != null)
      json['friendlyName'] = friendlyName;
    if (groups != null)
      json['groups'] = groups;
    if (helpMarkDown != null)
      json['helpMarkDown'] = helpMarkDown;
    if (helpUrl != null)
      json['helpUrl'] = helpUrl;
    if (hostType != null)
      json['hostType'] = hostType;
    if (iconUrl != null)
      json['iconUrl'] = iconUrl;
    if (id != null)
      json['id'] = id;
    if (inputs != null)
      json['inputs'] = inputs;
    if (instanceNameFormat != null)
      json['instanceNameFormat'] = instanceNameFormat;
    if (minimumAgentVersion != null)
      json['minimumAgentVersion'] = minimumAgentVersion;
    if (name != null)
      json['name'] = name;
    if (outputVariables != null)
      json['outputVariables'] = outputVariables;
    if (packageLocation != null)
      json['packageLocation'] = packageLocation;
    if (packageType != null)
      json['packageType'] = packageType;
    if (postJobExecution != null)
      json['postJobExecution'] = postJobExecution;
    if (preJobExecution != null)
      json['preJobExecution'] = preJobExecution;
    if (preview != null)
      json['preview'] = preview;
    if (releaseNotes != null)
      json['releaseNotes'] = releaseNotes;
    if (runsOn != null)
      json['runsOn'] = runsOn;
    if (satisfies != null)
      json['satisfies'] = satisfies;
    if (serverOwned != null)
      json['serverOwned'] = serverOwned;
    if (showEnvironmentVariables != null)
      json['showEnvironmentVariables'] = showEnvironmentVariables;
    if (sourceDefinitions != null)
      json['sourceDefinitions'] = sourceDefinitions;
    if (sourceLocation != null)
      json['sourceLocation'] = sourceLocation;
    if (version != null)
      json['version'] = version;
    if (visibility != null)
      json['visibility'] = visibility;
    return json;
  }

  static List<TaskGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskGroup>() : json.map((value) => TaskGroup.fromJson(value)).toList();
  }

  static Map<String, TaskGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskGroup.fromJson(value));
    }
    return map;
  }
}

