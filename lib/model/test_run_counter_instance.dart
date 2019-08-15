part of azure_devops_sdk.api;

class TestRunCounterInstance {
  /* CategoryName for this counter */
  String categoryName = null;
  /* Combination of source and SourceInstanceId */
  String counterInstanceId = null;
  /* Name of the counter Eg: Errors/Sec */
  String counterName = null;
  /* Units for this counter. Empty string for mere numbers */
  String counterUnits = null;
  /* Instance Name Eg: _Avg,_Total etc */
  String instanceName = null;
  /* true if this counter instance is a default counter */
  bool isPreselectedCounter = null;
  /* Machine from where this counter was collected Used in case of machine specific counters like - Agent CPU and memory etc. */
  String machineName = null;
  /* Counter Groups to which this counter instance is part of */
  List<String> partOfCounterGroups = [];
  
  WebInstanceSummaryData summaryData = null;
  /* A unique name for this counter instance */
  String uniqueName = null;
  TestRunCounterInstance();

  @override
  String toString() {
    return 'TestRunCounterInstance[categoryName=$categoryName, counterInstanceId=$counterInstanceId, counterName=$counterName, counterUnits=$counterUnits, instanceName=$instanceName, isPreselectedCounter=$isPreselectedCounter, machineName=$machineName, partOfCounterGroups=$partOfCounterGroups, summaryData=$summaryData, uniqueName=$uniqueName, ]';
  }

  TestRunCounterInstance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['categoryName'] == null) {
      categoryName = null;
    } else {
          categoryName = json['categoryName'];
    }
    if (json['counterInstanceId'] == null) {
      counterInstanceId = null;
    } else {
          counterInstanceId = json['counterInstanceId'];
    }
    if (json['counterName'] == null) {
      counterName = null;
    } else {
          counterName = json['counterName'];
    }
    if (json['counterUnits'] == null) {
      counterUnits = null;
    } else {
          counterUnits = json['counterUnits'];
    }
    if (json['instanceName'] == null) {
      instanceName = null;
    } else {
          instanceName = json['instanceName'];
    }
    if (json['isPreselectedCounter'] == null) {
      isPreselectedCounter = null;
    } else {
          isPreselectedCounter = json['isPreselectedCounter'];
    }
    if (json['machineName'] == null) {
      machineName = null;
    } else {
          machineName = json['machineName'];
    }
    if (json['partOfCounterGroups'] == null) {
      partOfCounterGroups = null;
    } else {
      partOfCounterGroups = (json['partOfCounterGroups'] as List).cast<String>();
    }
    if (json['summaryData'] == null) {
      summaryData = null;
    } else {
      summaryData = WebInstanceSummaryData.fromJson(json['summaryData']);
    }
    if (json['uniqueName'] == null) {
      uniqueName = null;
    } else {
          uniqueName = json['uniqueName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (categoryName != null)
      json['categoryName'] = categoryName;
    if (counterInstanceId != null)
      json['counterInstanceId'] = counterInstanceId;
    if (counterName != null)
      json['counterName'] = counterName;
    if (counterUnits != null)
      json['counterUnits'] = counterUnits;
    if (instanceName != null)
      json['instanceName'] = instanceName;
    if (isPreselectedCounter != null)
      json['isPreselectedCounter'] = isPreselectedCounter;
    if (machineName != null)
      json['machineName'] = machineName;
    if (partOfCounterGroups != null)
      json['partOfCounterGroups'] = partOfCounterGroups;
    if (summaryData != null)
      json['summaryData'] = summaryData;
    if (uniqueName != null)
      json['uniqueName'] = uniqueName;
    return json;
  }

  static List<TestRunCounterInstance> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunCounterInstance>() : json.map((value) => TestRunCounterInstance.fromJson(value)).toList();
  }

  static Map<String, TestRunCounterInstance> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunCounterInstance>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunCounterInstance.fromJson(value));
    }
    return map;
  }
}

