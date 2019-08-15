part of azure_devops_sdk.api;

class LoadTestDefinition {
  
  int agentCount = null;
  
  List<BrowserMix> browserMixs = [];
  
  int coreCount = null;
  
  int coresPerAgent = null;
  
  List<LoadGenerationGeoLocation> loadGenerationGeoLocations = [];
  
  String loadPatternName = null;
  
  String loadTestName = null;
  
  int maxVusers = null;
  
  int runDuration = null;
  
  int samplingRate = null;
  
  int thinkTime = null;
  
  List<String> urls = [];
  LoadTestDefinition();

  @override
  String toString() {
    return 'LoadTestDefinition[agentCount=$agentCount, browserMixs=$browserMixs, coreCount=$coreCount, coresPerAgent=$coresPerAgent, loadGenerationGeoLocations=$loadGenerationGeoLocations, loadPatternName=$loadPatternName, loadTestName=$loadTestName, maxVusers=$maxVusers, runDuration=$runDuration, samplingRate=$samplingRate, thinkTime=$thinkTime, urls=$urls, ]';
  }

  LoadTestDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agentCount'] == null) {
      agentCount = null;
    } else {
          agentCount = json['agentCount'];
    }
    if (json['browserMixs'] == null) {
      browserMixs = null;
    } else {
      browserMixs = BrowserMix.listFromJson(json['browserMixs']);
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
    if (json['loadGenerationGeoLocations'] == null) {
      loadGenerationGeoLocations = null;
    } else {
      loadGenerationGeoLocations = LoadGenerationGeoLocation.listFromJson(json['loadGenerationGeoLocations']);
    }
    if (json['loadPatternName'] == null) {
      loadPatternName = null;
    } else {
          loadPatternName = json['loadPatternName'];
    }
    if (json['loadTestName'] == null) {
      loadTestName = null;
    } else {
          loadTestName = json['loadTestName'];
    }
    if (json['maxVusers'] == null) {
      maxVusers = null;
    } else {
          maxVusers = json['maxVusers'];
    }
    if (json['runDuration'] == null) {
      runDuration = null;
    } else {
          runDuration = json['runDuration'];
    }
    if (json['samplingRate'] == null) {
      samplingRate = null;
    } else {
          samplingRate = json['samplingRate'];
    }
    if (json['thinkTime'] == null) {
      thinkTime = null;
    } else {
          thinkTime = json['thinkTime'];
    }
    if (json['urls'] == null) {
      urls = null;
    } else {
      urls = (json['urls'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agentCount != null)
      json['agentCount'] = agentCount;
    if (browserMixs != null)
      json['browserMixs'] = browserMixs;
    if (coreCount != null)
      json['coreCount'] = coreCount;
    if (coresPerAgent != null)
      json['coresPerAgent'] = coresPerAgent;
    if (loadGenerationGeoLocations != null)
      json['loadGenerationGeoLocations'] = loadGenerationGeoLocations;
    if (loadPatternName != null)
      json['loadPatternName'] = loadPatternName;
    if (loadTestName != null)
      json['loadTestName'] = loadTestName;
    if (maxVusers != null)
      json['maxVusers'] = maxVusers;
    if (runDuration != null)
      json['runDuration'] = runDuration;
    if (samplingRate != null)
      json['samplingRate'] = samplingRate;
    if (thinkTime != null)
      json['thinkTime'] = thinkTime;
    if (urls != null)
      json['urls'] = urls;
    return json;
  }

  static List<LoadTestDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<LoadTestDefinition>() : json.map((value) => LoadTestDefinition.fromJson(value)).toList();
  }

  static Map<String, LoadTestDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoadTestDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoadTestDefinition.fromJson(value));
    }
    return map;
  }
}

