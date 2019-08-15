part of azure_devops_sdk.api;

class TestPointsUpdatedEvent {
  
  String projectName = null;
  
  List<TestPointReference> testPoints = [];
  TestPointsUpdatedEvent();

  @override
  String toString() {
    return 'TestPointsUpdatedEvent[projectName=$projectName, testPoints=$testPoints, ]';
  }

  TestPointsUpdatedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<TestPointsUpdatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPointsUpdatedEvent>() : json.map((value) => TestPointsUpdatedEvent.fromJson(value)).toList();
  }

  static Map<String, TestPointsUpdatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPointsUpdatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPointsUpdatedEvent.fromJson(value));
    }
    return map;
  }
}

