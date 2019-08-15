part of azure_devops_sdk.api;

class InputDescriptor {
  /* The ids of all inputs that the value of this input is dependent on. */
  List<String> dependencyInputIds = [];
  /* Description of what this input is used for */
  String description = null;
  /* The group localized name to which this input belongs and can be shown as a header for the container that will include all the inputs in the group. */
  String groupName = null;
  /* If true, the value information for this input is dynamic and should be fetched when the value of dependency inputs change. */
  bool hasDynamicValueInformation = null;
  /* Identifier for the subscription input */
  String id = null;
  /* Mode in which the value of this input should be entered */
  String inputMode = null;
  //enum inputModeEnum {  none,  textBox,  passwordBox,  combo,  radioButtons,  checkBox,  textArea,  };{
  /* Gets whether this input is confidential, such as for a password or application key */
  bool isConfidential = null;
  /* Localized name which can be shown as a label for the subscription input */
  String name = null;
  /* Custom properties for the input which can be used by the service provider */
  Map<String, Object> properties = {};
  /* Underlying data type for the input value. When this value is specified, InputMode, Validation and Values are optional. */
  String type = null;
  /* Gets whether this input is included in the default generated action description. */
  bool useInDefaultDescription = null;
  
  InputValidation validation = null;
  /* A hint for input value. It can be used in the UI as the input placeholder. */
  String valueHint = null;
  
  InputValues values = null;
  InputDescriptor();

  @override
  String toString() {
    return 'InputDescriptor[dependencyInputIds=$dependencyInputIds, description=$description, groupName=$groupName, hasDynamicValueInformation=$hasDynamicValueInformation, id=$id, inputMode=$inputMode, isConfidential=$isConfidential, name=$name, properties=$properties, type=$type, useInDefaultDescription=$useInDefaultDescription, validation=$validation, valueHint=$valueHint, values=$values, ]';
  }

  InputDescriptor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dependencyInputIds'] == null) {
      dependencyInputIds = null;
    } else {
      dependencyInputIds = (json['dependencyInputIds'] as List).cast<String>();
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['groupName'] == null) {
      groupName = null;
    } else {
          groupName = json['groupName'];
    }
    if (json['hasDynamicValueInformation'] == null) {
      hasDynamicValueInformation = null;
    } else {
          hasDynamicValueInformation = json['hasDynamicValueInformation'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['inputMode'] == null) {
      inputMode = null;
    } else {
          inputMode = json['inputMode'];
    }
    if (json['isConfidential'] == null) {
      isConfidential = null;
    } else {
          isConfidential = json['isConfidential'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = Object.mapFromJson(json['properties']);
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['useInDefaultDescription'] == null) {
      useInDefaultDescription = null;
    } else {
          useInDefaultDescription = json['useInDefaultDescription'];
    }
    if (json['validation'] == null) {
      validation = null;
    } else {
      validation = InputValidation.fromJson(json['validation']);
    }
    if (json['valueHint'] == null) {
      valueHint = null;
    } else {
          valueHint = json['valueHint'];
    }
    if (json['values'] == null) {
      values = null;
    } else {
      values = InputValues.fromJson(json['values']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dependencyInputIds != null)
      json['dependencyInputIds'] = dependencyInputIds;
    if (description != null)
      json['description'] = description;
    if (groupName != null)
      json['groupName'] = groupName;
    if (hasDynamicValueInformation != null)
      json['hasDynamicValueInformation'] = hasDynamicValueInformation;
    if (id != null)
      json['id'] = id;
    if (inputMode != null)
      json['inputMode'] = inputMode;
    if (isConfidential != null)
      json['isConfidential'] = isConfidential;
    if (name != null)
      json['name'] = name;
    if (properties != null)
      json['properties'] = properties;
    if (type != null)
      json['type'] = type;
    if (useInDefaultDescription != null)
      json['useInDefaultDescription'] = useInDefaultDescription;
    if (validation != null)
      json['validation'] = validation;
    if (valueHint != null)
      json['valueHint'] = valueHint;
    if (values != null)
      json['values'] = values;
    return json;
  }

  static List<InputDescriptor> listFromJson(List<dynamic> json) {
    return json == null ? List<InputDescriptor>() : json.map((value) => InputDescriptor.fromJson(value)).toList();
  }

  static Map<String, InputDescriptor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InputDescriptor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InputDescriptor.fromJson(value));
    }
    return map;
  }
}

