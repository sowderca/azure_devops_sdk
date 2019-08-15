part of azure_devops_sdk.api;

class AcquisitionOptions {
  
  AcquisitionOperation defaultOperation = null;
  /* The item id that this options refer to */
  String itemId = null;
  /* Operations allowed for the ItemId in this target */
  List<AcquisitionOperation> operations = [];
  
  JObject properties = null;
  /* The target that this options refer to */
  String target = null;
  AcquisitionOptions();

  @override
  String toString() {
    return 'AcquisitionOptions[defaultOperation=$defaultOperation, itemId=$itemId, operations=$operations, properties=$properties, target=$target, ]';
  }

  AcquisitionOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['defaultOperation'] == null) {
      defaultOperation = null;
    } else {
      defaultOperation = AcquisitionOperation.fromJson(json['defaultOperation']);
    }
    if (json['itemId'] == null) {
      itemId = null;
    } else {
          itemId = json['itemId'];
    }
    if (json['operations'] == null) {
      operations = null;
    } else {
      operations = AcquisitionOperation.listFromJson(json['operations']);
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = JObject.fromJson(json['properties']);
    }
    if (json['target'] == null) {
      target = null;
    } else {
          target = json['target'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (defaultOperation != null)
      json['defaultOperation'] = defaultOperation;
    if (itemId != null)
      json['itemId'] = itemId;
    if (operations != null)
      json['operations'] = operations;
    if (properties != null)
      json['properties'] = properties;
    if (target != null)
      json['target'] = target;
    return json;
  }

  static List<AcquisitionOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<AcquisitionOptions>() : json.map((value) => AcquisitionOptions.fromJson(value)).toList();
  }

  static Map<String, AcquisitionOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AcquisitionOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AcquisitionOptions.fromJson(value));
    }
    return map;
  }
}

