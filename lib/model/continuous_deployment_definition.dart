part of azure_devops_sdk.api;

class ContinuousDeploymentDefinition {
  
  WebApiConnectedServiceRef connectedService = null;
  
  XamlDefinitionReference definition = null;
  
  String gitBranch = null;
  
  String hostedServiceName = null;
  
  TeamProjectReference project = null;
  
  String repositoryId = null;
  
  String storageAccountName = null;
  
  String subscriptionId = null;
  
  String website = null;
  
  String webspace = null;
  ContinuousDeploymentDefinition();

  @override
  String toString() {
    return 'ContinuousDeploymentDefinition[connectedService=$connectedService, definition=$definition, gitBranch=$gitBranch, hostedServiceName=$hostedServiceName, project=$project, repositoryId=$repositoryId, storageAccountName=$storageAccountName, subscriptionId=$subscriptionId, website=$website, webspace=$webspace, ]';
  }

  ContinuousDeploymentDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['connectedService'] == null) {
      connectedService = null;
    } else {
      connectedService = WebApiConnectedServiceRef.fromJson(json['connectedService']);
    }
    if (json['definition'] == null) {
      definition = null;
    } else {
      definition = XamlDefinitionReference.fromJson(json['definition']);
    }
    if (json['gitBranch'] == null) {
      gitBranch = null;
    } else {
          gitBranch = json['gitBranch'];
    }
    if (json['hostedServiceName'] == null) {
      hostedServiceName = null;
    } else {
          hostedServiceName = json['hostedServiceName'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = TeamProjectReference.fromJson(json['project']);
    }
    if (json['repositoryId'] == null) {
      repositoryId = null;
    } else {
          repositoryId = json['repositoryId'];
    }
    if (json['storageAccountName'] == null) {
      storageAccountName = null;
    } else {
          storageAccountName = json['storageAccountName'];
    }
    if (json['subscriptionId'] == null) {
      subscriptionId = null;
    } else {
          subscriptionId = json['subscriptionId'];
    }
    if (json['website'] == null) {
      website = null;
    } else {
          website = json['website'];
    }
    if (json['webspace'] == null) {
      webspace = null;
    } else {
          webspace = json['webspace'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (connectedService != null)
      json['connectedService'] = connectedService;
    if (definition != null)
      json['definition'] = definition;
    if (gitBranch != null)
      json['gitBranch'] = gitBranch;
    if (hostedServiceName != null)
      json['hostedServiceName'] = hostedServiceName;
    if (project != null)
      json['project'] = project;
    if (repositoryId != null)
      json['repositoryId'] = repositoryId;
    if (storageAccountName != null)
      json['storageAccountName'] = storageAccountName;
    if (subscriptionId != null)
      json['subscriptionId'] = subscriptionId;
    if (website != null)
      json['website'] = website;
    if (webspace != null)
      json['webspace'] = webspace;
    return json;
  }

  static List<ContinuousDeploymentDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<ContinuousDeploymentDefinition>() : json.map((value) => ContinuousDeploymentDefinition.fromJson(value)).toList();
  }

  static Map<String, ContinuousDeploymentDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContinuousDeploymentDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContinuousDeploymentDefinition.fromJson(value));
    }
    return map;
  }
}

