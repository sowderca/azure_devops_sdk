part of azure_devops_sdk.api;

class LoadTestRunDetails {
  
  int agentCount = null;
  
  int coreCount = null;
  
  int coresPerAgent = null;
  
  int duration = null;
  
  String loadGeneratorMachinesType = null;
  //enum loadGeneratorMachinesTypeEnum {  default,  cltLoadAgent,  userLoadAgent,  };{
  
  int samplingInterval = null;
  
  int warmUpDuration = null;
  LoadTestRunDetails();

  @override
  String toString() {
    return 'LoadTestRunDetails[agentCount=$agentCount, coreCount=$coreCount, coresPerAgent=$coresPerAgent, duration=$duration, loadGeneratorMachinesType=$loadGeneratorMachinesType, samplingInterval=$samplingInterval, warmUpDuration=$warmUpDuration, ]';
  }

  LoadTestRunDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agentCount'] == null) {
      agentCount = null;
    } else {
          agentCount = json['agentCount'];
    }
    if (json['coreCount'] == null) {
      coreCount = null;
    } else {
          coreCount = json['coreCount'];
    }
    if (json['coresPerAgent'] == null) {
      coresPerAgent = null;
    } else {
          coresPerAgent = json['coresPerAgent'];
    }
    if (json['duration'] == null) {
      duration = null;
    } else {
          duration = json['duration'];
    }
    if (json['loadGeneratorMachinesType'] == null) {
      loadGeneratorMachinesType = null;
    } else {
          loadGeneratorMachinesType = json['loadGeneratorMachinesType'];
    }
    if (json['samplingInterval'] == null) {
      samplingInterval = null;
    } else {
          samplingInterval = json['samplingInterval'];
    }
    if (json['warmUpDuration'] == null) {
      warmUpDuration = null;
    } else {
          warmUpDuration = json['warmUpDuration'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agentCount != null)
      json['agentCount'] = agentCount;
    if (coreCount != null)
      json['coreCount'] = coreCount;
    if (coresPerAgent != null)
      json['coresPerAgent'] = coresPerAgent;
    if (duration != null)
      json['duration'] = duration;
    if (loadGeneratorMachinesType != null)
      json['loadGeneratorMachinesType'] = loadGeneratorMachinesType;
    if (samplingInterval != null)
      json['samplingInterval'] = samplingInterval;
    if (warmUpDuration != null)
      json['warmUpDuration'] = warmUpDuration;
    return json;
  }

  static List<LoadTestRunDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<LoadTestRunDetails>() : json.map((value) => LoadTestRunDetails.fromJson(value)).toList();
  }

  static Map<String, LoadTestRunDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoadTestRunDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoadTestRunDetails.fromJson(value));
    }
    return map;
  }
}

