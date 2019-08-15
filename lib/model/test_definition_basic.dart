part of azure_devops_sdk.api;

class TestDefinitionBasic {
  
  DropAccessData accessData = null;
  
  IdentityRef createdBy = null;
  
  DateTime createdDate = null;
  
  String id = null;
  
  IdentityRef lastModifiedBy = null;
  
  DateTime lastModifiedDate = null;
  
  String loadTestType = null;
  //enum loadTestTypeEnum {  visualStudioLoadTest,  jMeter,  oldLoadTestFile,  };{
  
  String name = null;
  TestDefinitionBasic();

  @override
  String toString() {
    return 'TestDefinitionBasic[accessData=$accessData, createdBy=$createdBy, createdDate=$createdDate, id=$id, lastModifiedBy=$lastModifiedBy, lastModifiedDate=$lastModifiedDate, loadTestType=$loadTestType, name=$name, ]';
  }

  TestDefinitionBasic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accessData'] == null) {
      accessData = null;
    } else {
      accessData = DropAccessData.fromJson(json['accessData']);
    }
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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['lastModifiedBy'] == null) {
      lastModifiedBy = null;
    } else {
      lastModifiedBy = IdentityRef.fromJson(json['lastModifiedBy']);
    }
    if (json['lastModifiedDate'] == null) {
      lastModifiedDate = null;
    } else {
      lastModifiedDate = DateTime.parse(json['lastModifiedDate']);
    }
    if (json['loadTestType'] == null) {
      loadTestType = null;
    } else {
          loadTestType = json['loadTestType'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accessData != null)
      json['accessData'] = accessData;
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (lastModifiedBy != null)
      json['lastModifiedBy'] = lastModifiedBy;
    if (lastModifiedDate != null)
      json['lastModifiedDate'] = lastModifiedDate == null ? null : lastModifiedDate.toUtc().toIso8601String();
    if (loadTestType != null)
      json['loadTestType'] = loadTestType;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<TestDefinitionBasic> listFromJson(List<dynamic> json) {
    return json == null ? List<TestDefinitionBasic>() : json.map((value) => TestDefinitionBasic.fromJson(value)).toList();
  }

  static Map<String, TestDefinitionBasic> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestDefinitionBasic>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestDefinitionBasic.fromJson(value));
    }
    return map;
  }
}

