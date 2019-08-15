part of azure_devops_sdk.api;

class TestPointsEvent {
  
  String projectName = null;
  
  List<TestPointReference> testPoints = [];
  TestPointsEvent();

  @override
  String toString() {
    return 'TestPointsEvent[projectName=$projectName, testPoints=$testPoints, ]';
  }

  TestPointsEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['testPoints'] == null) {
      testPoints = null;
    } else {
      testPoints = TestPointReference.listFromJson(json['testPoints']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (projectName != null)
      json['projectName'] = projectName;
    if (testPoints != null)
      json['testPoints'] = testPoints;
    return json;
  }

  static List<TestPointsEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPointsEvent>() : json.map((value) => TestPointsEvent.fromJson(value)).toList();
  }

  static Map<String, TestPointsEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPointsEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPointsEvent.fromJson(value));
    }
    return map;
  }
}

