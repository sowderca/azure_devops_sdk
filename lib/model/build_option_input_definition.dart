part of azure_devops_sdk.api;

class BuildOptionInputDefinition {
  /* The default value. */
  String defaultValue = null;
  /* The name of the input group that this input belongs to. */
  String groupName = null;
  
  Map<String, String> help = {};
  /* The label for the input. */
  String label = null;
  /* The name of the input. */
  String name = null;
  
  Map<String, String> options = {};
  /* Indicates whether the input is required to have a value. */
  bool required = null;
  /* Indicates the type of the input value. */
  String type = null;
  //enum typeEnum {  string,  boolean,  stringList,  radio,  pickList,  multiLine,  branchFilter,  };{
  /* The rule that is applied to determine whether the input is visible in the UI. */
  String visibleRule = null;
  BuildOptionInputDefinition();

  @override
  String toString() {
    return 'BuildOptionInputDefinition[defaultValue=$defaultValue, groupName=$groupName, help=$help, label=$label, name=$name, options=$options, required=$required, type=$type, visibleRule=$visibleRule, ]';
  }

  BuildOptionInputDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['defaultValue'] == null) {
      defaultValue = null;
    } else {
          defaultValue = json['defaultValue'];
    }
    if (json['groupName'] == null) {
      groupName = null;
    } else {
          groupName = json['groupName'];
    }
    if (json['help'] == null) {
      help = null;
    } else {
          help = (json['help'] as Map).cast<String, String>();
    }
    if (json['label'] == null) {
      label = null;
    } else {
          label = json['label'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['options'] == null) {
      options = null;
    } else {
          options = (json['options'] as Map).cast<String, String>();
    }
    if (json['required'] == null) {
      required = null;
    } else {
          required = json['required'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['visibleRule'] == null) {
      visibleRule = null;
    } else {
          visibleRule = json['visibleRule'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (defaultValue != null)
      json['defaultValue'] = defaultValue;
    if (groupName != null)
      json['groupName'] = groupName;
    if (help != null)
      json['help'] = help;
    if (label != null)
      json['label'] = label;
    if (name != null)
      json['name'] = name;
    if (options != null)
      json['options'] = options;
    if (required != null)
      json['required'] = required;
    if (type != null)
      json['type'] = type;
    if (visibleRule != null)
      json['visibleRule'] = visibleRule;
    return json;
  }

  static List<BuildOptionInputDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildOptionInputDefinition>() : json.map((value) => BuildOptionInputDefinition.fromJson(value)).toList();
  }

  static Map<String, BuildOptionInputDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildOptionInputDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildOptionInputDefinition.fromJson(value));
    }
    return map;
  }
}

