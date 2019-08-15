part of azure_devops_sdk.api;

class BuildResourceUsage {
  /* The number of build agents. */
  int distributedTaskAgents = null;
  /* The number of paid private agent slots. */
  int paidPrivateAgentSlots = null;
  /* The total usage. */
  int totalUsage = null;
  /* The number of XAML controllers. */
  int xamlControllers = null;
  BuildResourceUsage();

  @override
  String toString() {
    return 'BuildResourceUsage[distributedTaskAgents=$distributedTaskAgents, paidPrivateAgentSlots=$paidPrivateAgentSlots, totalUsage=$totalUsage, xamlControllers=$xamlControllers, ]';
  }

  BuildResourceUsage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['distributedTaskAgents'] == null) {
      distributedTaskAgents = null;
    } else {
          distributedTaskAgents = json['distributedTaskAgents'];
    }
    if (json['paidPrivateAgentSlots'] == null) {
      paidPrivateAgentSlots = null;
    } else {
          paidPrivateAgentSlots = json['paidPrivateAgentSlots'];
    }
    if (json['totalUsage'] == null) {
      totalUsage = null;
    } else {
          totalUsage = json['totalUsage'];
    }
    if (json['xamlControllers'] == null) {
      xamlControllers = null;
    } else {
          xamlControllers = json['xamlControllers'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (distributedTaskAgents != null)
      json['distributedTaskAgents'] = distributedTaskAgents;
    if (paidPrivateAgentSlots != null)
      json['paidPrivateAgentSlots'] = paidPrivateAgentSlots;
    if (totalUsage != null)
      json['totalUsage'] = totalUsage;
    if (xamlControllers != null)
      json['xamlControllers'] = xamlControllers;
    return json;
  }

  static List<BuildResourceUsage> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildResourceUsage>() : json.map((value) => BuildResourceUsage.fromJson(value)).toList();
  }

  static Map<String, BuildResourceUsage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildResourceUsage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildResourceUsage.fromJson(value));
    }
    return map;
  }
}

