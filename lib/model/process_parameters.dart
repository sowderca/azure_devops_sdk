part of azure_devops_sdk.api;

class ProcessParameters {
  
  List<DataSourceBindingBase> dataSourceBindings = [];
  
  List<TaskInputDefinitionBase> inputs = [];
  
  List<TaskSourceDefinitionBase> sourceDefinitions = [];
  ProcessParameters();

  @override
  String toString() {
    return 'ProcessParameters[dataSourceBindings=$dataSourceBindings, inputs=$inputs, sourceDefinitions=$sourceDefinitions, ]';
  }

  ProcessParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dataSourceBindings'] == null) {
      dataSourceBindings = null;
    } else {
      dataSourceBindings = DataSourceBindingBase.listFromJson(json['dataSourceBindings']);
    }
    if (json['inputs'] == null) {
      inputs = null;
    } else {
      inputs = TaskInputDefinitionBase.listFromJson(json['inputs']);
    }
    if (json['sourceDefinitions'] == null) {
      sourceDefinitions = null;
    } else {
      sourceDefinitions = TaskSourceDefinitionBase.listFromJson(json['sourceDefinitions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dataSourceBindings != null)
      json['dataSourceBindings'] = dataSourceBindings;
    if (inputs != null)
      json['inputs'] = inputs;
    if (sourceDefinitions != null)
      json['sourceDefinitions'] = sourceDefinitions;
    return json;
  }

  static List<ProcessParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessParameters>() : json.map((value) => ProcessParameters.fromJson(value)).toList();
  }

  static Map<String, ProcessParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessParameters.fromJson(value));
    }
    return map;
  }
}

