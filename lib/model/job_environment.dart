part of azure_devops_sdk.api;

class JobEnvironment {
  
  List<ServiceEndpoint> endpoints = [];
  
  List<MaskHint> mask = [];
  
  Map<String, JobOption> options = {};
  
  List<SecureFile> secureFiles = [];
  
  ServiceEndpoint systemConnection = null;
  
  Map<String, String> variables = {};
  JobEnvironment();

  @override
  String toString() {
    return 'JobEnvironment[endpoints=$endpoints, mask=$mask, options=$options, secureFiles=$secureFiles, systemConnection=$systemConnection, variables=$variables, ]';
  }

  JobEnvironment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['endpoints'] == null) {
      endpoints = null;
    } else {
      endpoints = ServiceEndpoint.listFromJson(json['endpoints']);
    }
    if (json['mask'] == null) {
      mask = null;
    } else {
      mask = MaskHint.listFromJson(json['mask']);
    }
    if (json['options'] == null) {
      options = null;
    } else {
      options = JobOption.mapFromJson(json['options']);
    }
    if (json['secureFiles'] == null) {
      secureFiles = null;
    } else {
      secureFiles = SecureFile.listFromJson(json['secureFiles']);
    }
    if (json['systemConnection'] == null) {
      systemConnection = null;
    } else {
      systemConnection = ServiceEndpoint.fromJson(json['systemConnection']);
    }
    if (json['variables'] == null) {
      variables = null;
    } else {
          variables = (json['variables'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (endpoints != null)
      json['endpoints'] = endpoints;
    if (mask != null)
      json['mask'] = mask;
    if (options != null)
      json['options'] = options;
    if (secureFiles != null)
      json['secureFiles'] = secureFiles;
    if (systemConnection != null)
      json['systemConnection'] = systemConnection;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<JobEnvironment> listFromJson(List<dynamic> json) {
    return json == null ? List<JobEnvironment>() : json.map((value) => JobEnvironment.fromJson(value)).toList();
  }

  static Map<String, JobEnvironment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JobEnvironment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JobEnvironment.fromJson(value));
    }
    return map;
  }
}

