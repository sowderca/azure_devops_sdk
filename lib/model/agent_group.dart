part of azure_devops_sdk.api;

class AgentGroup {
  
  IdentityRef createdBy = null;
  /* Time agent group was created */
  DateTime creationTime = null;
  /* Id of the agent group */
  String groupId = null;
  /* The name of the agent group */
  String groupName = null;
  
  List<AgentGroupAccessData> machineAccessData = [];
  
  WebApiUserLoadTestMachineInput machineConfiguration = null;
  /* Tenant Id */
  String tenantId = null;
  AgentGroup();

  @override
  String toString() {
    return 'AgentGroup[createdBy=$createdBy, creationTime=$creationTime, groupId=$groupId, groupName=$groupName, machineAccessData=$machineAccessData, machineConfiguration=$machineConfiguration, tenantId=$tenantId, ]';
  }

  AgentGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = IdentityRef.fromJson(json['createdBy']);
    }
    if (json['creationTime'] == null) {
      creationTime = null;
    } else {
      creationTime = DateTime.parse(json['creationTime']);
    }
    if (json['groupId'] == null) {
      groupId = null;
    } else {
          groupId = json['groupId'];
    }
    if (json['groupName'] == null) {
      groupName = null;
    } else {
          groupName = json['groupName'];
    }
    if (json['machineAccessData'] == null) {
      machineAccessData = null;
    } else {
      machineAccessData = AgentGroupAccessData.listFromJson(json['machineAccessData']);
    }
    if (json['machineConfiguration'] == null) {
      machineConfiguration = null;
    } else {
      machineConfiguration = WebApiUserLoadTestMachineInput.fromJson(json['machineConfiguration']);
    }
    if (json['tenantId'] == null) {
      tenantId = null;
    } else {
          tenantId = json['tenantId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (creationTime != null)
      json['creationTime'] = creationTime == null ? null : creationTime.toUtc().toIso8601String();
    if (groupId != null)
      json['groupId'] = groupId;
    if (groupName != null)
      json['groupName'] = groupName;
    if (machineAccessData != null)
      json['machineAccessData'] = machineAccessData;
    if (machineConfiguration != null)
      json['machineConfiguration'] = machineConfiguration;
    if (tenantId != null)
      json['tenantId'] = tenantId;
    return json;
  }

  static List<AgentGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentGroup>() : json.map((value) => AgentGroup.fromJson(value)).toList();
  }

  static Map<String, AgentGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentGroup.fromJson(value));
    }
    return map;
  }
}

