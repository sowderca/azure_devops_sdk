part of azure_devops_sdk.api;

class TestPointUpdateParams {
  /* Id of Test Point to be updated */
  int id = null;
  /* Reset the Test Point to Active */
  bool isActive = null;
  
  Results results = null;
  
  IdentityRef tester = null;
  TestPointUpdateParams();

  @override
  String toString() {
    return 'TestPointUpdateParams[id=$id, isActive=$isActive, results=$results, tester=$tester, ]';
  }

  TestPointUpdateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isActive'] == null) {
      isActive = null;
    } else {
          isActive = json['isActive'];
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = Results.fromJson(json['results']);
    }
    if (json['tester'] == null) {
      tester = null;
    } else {
      tester = IdentityRef.fromJson(json['tester']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (isActive != null)
      json['isActive'] = isActive;
    if (results != null)
      json['results'] = results;
    if (tester != null)
      json['tester'] = tester;
    return json;
  }

  static List<TestPointUpdateParams> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPointUpdateParams>() : json.map((value) => TestPointUpdateParams.fromJson(value)).toList();
  }

  static Map<String, TestPointUpdateParams> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPointUpdateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPointUpdateParams.fromJson(value));
    }
    return map;
  }
}

