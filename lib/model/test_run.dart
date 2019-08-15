part of azure_devops_sdk.api;

class TestRun {
  
  IdentityRef createdBy = null;
  /* Gets the creation time of the test run */
  DateTime createdDate = null;
  
  IdentityRef deletedBy = null;
  /* Gets the deleted time of the test run */
  DateTime deletedDate = null;
  /* Gets the finish time of the test run */
  DateTime finishedDate = null;
  /* Gets the unique identifier for the test run definition. */
  String id = null;
  
  List<LoadGenerationGeoLocation> loadGenerationGeoLocations = [];
  /* Gets the load test file of the test run definition. */
  String loadTestFileName = null;
  /* Gets the name of the test run definition. */
  String name = null;
  /* Gets the number of the test run (unique within a tenant) */
  int runNumber = null;
  /* Test run source like Ibiza,VSO,BuildVNext, etc. */
  String runSource = null;
  
  LoadTestRunDetails runSpecificDetails = null;
  /* Run type like VisualStudioLoadTest or JMeterLoadTest */
  String runType = null;
  //enum runTypeEnum {  visualStudioLoadTest,  jMeterLoadTest,  };{
  /* State of the test run. */
  String state = null;
  //enum stateEnum {  pending,  queued,  inProgress,  stopping,  completed,  aborted,  error,  };{
  
  String url = null;
  TestRun();

  @override
  String toString() {
    return 'TestRun[createdBy=$createdBy, createdDate=$createdDate, deletedBy=$deletedBy, deletedDate=$deletedDate, finishedDate=$finishedDate, id=$id, loadGenerationGeoLocations=$loadGenerationGeoLocations, loadTestFileName=$loadTestFileName, name=$name, runNumber=$runNumber, runSource=$runSource, runSpecificDetails=$runSpecificDetails, runType=$runType, state=$state, url=$url, ]';
  }

  TestRun.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = IdentityRef.fromJson(json['createdBy']);
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['deletedBy'] == null) {
      deletedBy = null;
    } else {
      deletedBy = IdentityRef.fromJson(json['deletedBy']);
    }
    if (json['deletedDate'] == null) {
      deletedDate = null;
    } else {
      deletedDate = DateTime.parse(json['deletedDate']);
    }
    if (json['finishedDate'] == null) {
      finishedDate = null;
    } else {
      finishedDate = DateTime.parse(json['finishedDate']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['loadGenerationGeoLocations'] == null) {
      loadGenerationGeoLocations = null;
    } else {
      loadGenerationGeoLocations = LoadGenerationGeoLocation.listFromJson(json['loadGenerationGeoLocations']);
    }
    if (json['loadTestFileName'] == null) {
      loadTestFileName = null;
    } else {
          loadTestFileName = json['loadTestFileName'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['runNumber'] == null) {
      runNumber = null;
    } else {
          runNumber = json['runNumber'];
    }
    if (json['runSource'] == null) {
      runSource = null;
    } else {
          runSource = json['runSource'];
    }
    if (json['runSpecificDetails'] == null) {
      runSpecificDetails = null;
    } else {
      runSpecificDetails = LoadTestRunDetails.fromJson(json['runSpecificDetails']);
    }
    if (json['runType'] == null) {
      runType = null;
    } else {
          runType = json['runType'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (deletedBy != null)
      json['deletedBy'] = deletedBy;
    if (deletedDate != null)
      json['deletedDate'] = deletedDate == null ? null : deletedDate.toUtc().toIso8601String();
    if (finishedDate != null)
      json['finishedDate'] = finishedDate == null ? null : finishedDate.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (loadGenerationGeoLocations != null)
      json['loadGenerationGeoLocations'] = loadGenerationGeoLocations;
    if (loadTestFileName != null)
      json['loadTestFileName'] = loadTestFileName;
    if (name != null)
      json['name'] = name;
    if (runNumber != null)
      json['runNumber'] = runNumber;
    if (runSource != null)
      json['runSource'] = runSource;
    if (runSpecificDetails != null)
      json['runSpecificDetails'] = runSpecificDetails;
    if (runType != null)
      json['runType'] = runType;
    if (state != null)
      json['state'] = state;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestRun> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRun>() : json.map((value) => TestRun.fromJson(value)).toList();
  }

  static Map<String, TestRun> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRun>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRun.fromJson(value));
    }
    return map;
  }
}

