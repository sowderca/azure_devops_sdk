part of azure_devops_sdk.api;

class TestExtensionFieldDetails {
  
  int id = null;
  
  bool isResultScoped = null;
  
  bool isRunScoped = null;
  
  bool isSystemField = null;
  
  String name = null;
  
  String type = null;
  //enum typeEnum {  bigInt,  binary,  bit,  char,  dateTime,  decimal,  float,  image,  int,  money,  nChar,  nText,  nVarChar,  real,  uniqueIdentifier,  smallDateTime,  smallInt,  smallMoney,  text,  timestamp,  tinyInt,  varBinary,  varChar,  variant,  xml,  udt,  structured,  date,  time,  dateTime2,  dateTimeOffset,  };{
  TestExtensionFieldDetails();

  @override
  String toString() {
    return 'TestExtensionFieldDetails[id=$id, isResultScoped=$isResultScoped, isRunScoped=$isRunScoped, isSystemField=$isSystemField, name=$name, type=$type, ]';
  }

  TestExtensionFieldDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isResultScoped'] == null) {
      isResultScoped = null;
    } else {
          isResultScoped = json['isResultScoped'];
    }
    if (json['isRunScoped'] == null) {
      isRunScoped = null;
    } else {
          isRunScoped = json['isRunScoped'];
    }
    if (json['isSystemField'] == null) {
      isSystemField = null;
    } else {
          isSystemField = json['isSystemField'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (isResultScoped != null)
      json['isResultScoped'] = isResultScoped;
    if (isRunScoped != null)
      json['isRunScoped'] = isRunScoped;
    if (isSystemField != null)
      json['isSystemField'] = isSystemField;
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<TestExtensionFieldDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<TestExtensionFieldDetails>() : json.map((value) => TestExtensionFieldDetails.fromJson(value)).toList();
  }

  static Map<String, TestExtensionFieldDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestExtensionFieldDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestExtensionFieldDetails.fromJson(value));
    }
    return map;
  }
}

