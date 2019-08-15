part of azure_devops_sdk.api;

class TestRunStatistic {
  
  ShallowReference run = null;
  
  List<RunStatistic> runStatistics = [];
  TestRunStatistic();

  @override
  String toString() {
    return 'TestRunStatistic[run=$run, runStatistics=$runStatistics, ]';
  }

  TestRunStatistic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['run'] == null) {
      run = null;
    } else {
      run = ShallowReference.fromJson(json['run']);
    }
    if (json['runStatistics'] == null) {
      runStatistics = null;
    } else {
      runStatistics = RunStatistic.listFromJson(json['runStatistics']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (run != null)
      json['run'] = run;
    if (runStatistics != null)
      json['runStatistics'] = runStatistics;
    return json;
  }

  static List<TestRunStatistic> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunStatistic>() : json.map((value) => TestRunStatistic.fromJson(value)).toList();
  }

  static Map<String, TestRunStatistic> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunStatistic>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunStatistic.fromJson(value));
    }
    return map;
  }
}

