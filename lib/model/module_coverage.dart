part of azure_devops_sdk.api;

class ModuleCoverage {
  
  int blockCount = null;
  
  List<String> blockData = [];
  /* Code Coverage File Url */
  String fileUrl = null;
  
  List<FunctionCoverage> functions = [];
  
  String name = null;
  
  String signature = null;
  
  int signatureAge = null;
  
  CoverageStatistics statistics = null;
  ModuleCoverage();

  @override
  String toString() {
    return 'ModuleCoverage[blockCount=$blockCount, blockData=$blockData, fileUrl=$fileUrl, functions=$functions, name=$name, signature=$signature, signatureAge=$signatureAge, statistics=$statistics, ]';
  }

  ModuleCoverage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['blockCount'] == null) {
      blockCount = null;
    } else {
          blockCount = json['blockCount'];
    }
    if (json['blockData'] == null) {
      blockData = null;
    } else {
      blockData = (json['blockData'] as List).cast<String>();
    }
    if (json['fileUrl'] == null) {
      fileUrl = null;
    } else {
          fileUrl = json['fileUrl'];
    }
    if (json['functions'] == null) {
      functions = null;
    } else {
      functions = FunctionCoverage.listFromJson(json['functions']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['signature'] == null) {
      signature = null;
    } else {
          signature = json['signature'];
    }
    if (json['signatureAge'] == null) {
      signatureAge = null;
    } else {
          signatureAge = json['signatureAge'];
    }
    if (json['statistics'] == null) {
      statistics = null;
    } else {
      statistics = CoverageStatistics.fromJson(json['statistics']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (blockCount != null)
      json['blockCount'] = blockCount;
    if (blockData != null)
      json['blockData'] = blockData;
    if (fileUrl != null)
      json['fileUrl'] = fileUrl;
    if (functions != null)
      json['functions'] = functions;
    if (name != null)
      json['name'] = name;
    if (signature != null)
      json['signature'] = signature;
    if (signatureAge != null)
      json['signatureAge'] = signatureAge;
    if (statistics != null)
      json['statistics'] = statistics;
    return json;
  }

  static List<ModuleCoverage> listFromJson(List<dynamic> json) {
    return json == null ? List<ModuleCoverage>() : json.map((value) => ModuleCoverage.fromJson(value)).toList();
  }

  static Map<String, ModuleCoverage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ModuleCoverage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ModuleCoverage.fromJson(value));
    }
    return map;
  }
}

