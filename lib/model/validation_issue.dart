part of azure_devops_sdk.api;

class ValidationIssue {
  
  String description = null;
  
  String file = null;
  
  String helpLink = null;
  
  String issueType = null;
  //enum issueTypeEnum {  warning,  error,  };{
  
  int line = null;
  ValidationIssue();

  @override
  String toString() {
    return 'ValidationIssue[description=$description, file=$file, helpLink=$helpLink, issueType=$issueType, line=$line, ]';
  }

  ValidationIssue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['file'] == null) {
      file = null;
    } else {
          file = json['file'];
    }
    if (json['helpLink'] == null) {
      helpLink = null;
    } else {
          helpLink = json['helpLink'];
    }
    if (json['issueType'] == null) {
      issueType = null;
    } else {
          issueType = json['issueType'];
    }
    if (json['line'] == null) {
      line = null;
    } else {
          line = json['line'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (file != null)
      json['file'] = file;
    if (helpLink != null)
      json['helpLink'] = helpLink;
    if (issueType != null)
      json['issueType'] = issueType;
    if (line != null)
      json['line'] = line;
    return json;
  }

  static List<ValidationIssue> listFromJson(List<dynamic> json) {
    return json == null ? List<ValidationIssue>() : json.map((value) => ValidationIssue.fromJson(value)).toList();
  }

  static Map<String, ValidationIssue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ValidationIssue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ValidationIssue.fromJson(value));
    }
    return map;
  }
}

