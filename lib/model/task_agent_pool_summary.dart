part of azure_devops_sdk.api;

class TaskAgentPoolSummary {
  
  MetricsColumnsHeader columnsHeader = null;
  
  List<DeploymentGroupReference> deploymentGroups = [];
  
  TaskAgentPoolReference pool = null;
  
  List<TaskAgentQueue> queues = [];
  
  List<MetricsRow> rows = [];
  TaskAgentPoolSummary();

  @override
  String toString() {
    return 'TaskAgentPoolSummary[columnsHeader=$columnsHeader, deploymentGroups=$deploymentGroups, pool=$pool, queues=$queues, rows=$rows, ]';
  }

  TaskAgentPoolSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['columnsHeader'] == null) {
      columnsHeader = null;
    } else {
      columnsHeader = MetricsColumnsHeader.fromJson(json['columnsHeader']);
    }
    if (json['deploymentGroups'] == null) {
      deploymentGroups = null;
    } else {
      deploymentGroups = DeploymentGroupReference.listFromJson(json['deploymentGroups']);
    }
    if (json['pool'] == null) {
      pool = null;
    } else {
      pool = TaskAgentPoolReference.fromJson(json['pool']);
    }
    if (json['queues'] == null) {
      queues = null;
    } else {
      queues = TaskAgentQueue.listFromJson(json['queues']);
    }
    if (json['rows'] == null) {
      rows = null;
    } else {
      rows = MetricsRow.listFromJson(json['rows']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (columnsHeader != null)
      json['columnsHeader'] = columnsHeader;
    if (deploymentGroups != null)
      json['deploymentGroups'] = deploymentGroups;
    if (pool != null)
      json['pool'] = pool;
    if (queues != null)
      json['queues'] = queues;
    if (rows != null)
      json['rows'] = rows;
    return json;
  }

  static List<TaskAgentPoolSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentPoolSummary>() : json.map((value) => TaskAgentPoolSummary.fromJson(value)).toList();
  }

  static Map<String, TaskAgentPoolSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentPoolSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentPoolSummary.fromJson(value));
    }
    return map;
  }
}

