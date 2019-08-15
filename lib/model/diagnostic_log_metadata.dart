part of azure_devops_sdk.api;

class DiagnosticLogMetadata {
  
  int agentId = null;
  
  String agentName = null;
  
  String fileName = null;
  
  String phaseName = null;
  
  String phaseResult = null;
  
  int poolId = null;
  DiagnosticLogMetadata();

  @override
  String toString() {
    return 'DiagnosticLogMetadata[agentId=$agentId, agentName=$agentName, fileName=$fileName, phaseName=$phaseName, phaseResult=$phaseResult, poolId=$poolId, ]';
  }

  DiagnosticLogMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agentId'] == null) {
      agentId = null;
    } else {
          agentId = json['agentId'];
    }
    if (json['agentName'] == null) {
      agentName = null;
    } else {
          agentName = json['agentName'];
    }
    if (json['fileName'] == null) {
      fileName = null;
    } else {
          fileName = json['fileName'];
    }
    if (json['phaseName'] == null) {
      phaseName = null;
    } else {
          phaseName = json['phaseName'];
    }
    if (json['phaseResult'] == null) {
      phaseResult = null;
    } else {
          phaseResult = json['phaseResult'];
    }
    if (json['poolId'] == null) {
      poolId = null;
    } else {
          poolId = json['poolId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agentId != null)
      json['agentId'] = agentId;
    if (agentName != null)
      json['agentName'] = agentName;
    if (fileName != null)
      json['fileName'] = fileName;
    if (phaseName != null)
      json['phaseName'] = phaseName;
    if (phaseResult != null)
      json['phaseResult'] = phaseResult;
    if (poolId != null)
      json['poolId'] = poolId;
    return json;
  }

  static List<DiagnosticLogMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<DiagnosticLogMetadata>() : json.map((value) => DiagnosticLogMetadata.fromJson(value)).toList();
  }

  static Map<String, DiagnosticLogMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DiagnosticLogMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DiagnosticLogMetadata.fromJson(value));
    }
    return map;
  }
}

