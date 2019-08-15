part of azure_devops_sdk.api;

class DeploymentPoolSummary {
  /* List of deployment groups referring to the deployment pool. */
  List<DeploymentGroupReference> deploymentGroups = [];
  /* Number of deployment agents that are offline. */
  int offlineAgentsCount = null;
  /* Number of deployment agents that are online. */
  int onlineAgentsCount = null;
  
  TaskAgentPoolReference pool = null;
  
  EnvironmentResourceReference resource = null;
  DeploymentPoolSummary();

  @override
  String toString() {
    return 'DeploymentPoolSummary[deploymentGroups=$deploymentGroups, offlineAgentsCount=$offlineAgentsCount, onlineAgentsCount=$onlineAgentsCount, pool=$pool, resource=$resource, ]';
  }

  DeploymentPoolSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deploymentGroups'] == null) {
      deploymentGroups = null;
    } else {
      deploymentGroups = DeploymentGroupReference.listFromJson(json['deploymentGroups']);
    }
    if (json['offlineAgentsCount'] == null) {
      offlineAgentsCount = null;
    } else {
          offlineAgentsCount = json['offlineAgentsCount'];
    }
    if (json['onlineAgentsCount'] == null) {
      onlineAgentsCount = null;
    } else {
          onlineAgentsCount = json['onlineAgentsCount'];
    }
    if (json['pool'] == null) {
      pool = null;
    } else {
      pool = TaskAgentPoolReference.fromJson(json['pool']);
    }
    if (json['resource'] == null) {
      resource = null;
    } else {
      resource = EnvironmentResourceReference.fromJson(json['resource']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deploymentGroups != null)
      json['deploymentGroups'] = deploymentGroups;
    if (offlineAgentsCount != null)
      json['offlineAgentsCount'] = offlineAgentsCount;
    if (onlineAgentsCount != null)
      json['onlineAgentsCount'] = onlineAgentsCount;
    if (pool != null)
      json['pool'] = pool;
    if (resource != null)
      json['resource'] = resource;
    return json;
  }

  static List<DeploymentPoolSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentPoolSummary>() : json.map((value) => DeploymentPoolSummary.fromJson(value)).toList();
  }

  static Map<String, DeploymentPoolSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentPoolSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentPoolSummary.fromJson(value));
    }
    return map;
  }
}

