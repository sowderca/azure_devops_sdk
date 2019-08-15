part of azure_devops_sdk.api;

class JsonPatchOperation {
  /* The path to copy from for the Move/Copy operation. */
  String from = null;
  /* The patch operation */
  String op = null;
  //enum opEnum {  add,  remove,  replace,  move,  copy,  test,  };{
  /* The path for the operation. In the case of an array, a zero based index can be used to specify the position in the array (e.g. /biscuits/0/name). The \"-\" character can be used instead of an index to insert at the end of the array (e.g. /biscuits/-). */
  String path = null;
  /* The value for the operation. This is either a primitive or a JToken. */
  Object value = null;
  JsonPatchOperation();

  @override
  String toString() {
    return 'JsonPatchOperation[from=$from, op=$op, path=$path, value=$value, ]';
  }

  JsonPatchOperation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['from'] == null) {
      from = null;
    } else {
          from = json['from'];
    }
    if (json['op'] == null) {
      op = null;
    } else {
          op = json['op'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (from != null)
      json['from'] = from;
    if (op != null)
      json['op'] = op;
    if (path != null)
      json['path'] = path;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<JsonPatchOperation> listFromJson(List<dynamic> json) {
    return json == null ? List<JsonPatchOperation>() : json.map((value) => JsonPatchOperation.fromJson(value)).toList();
  }

  static Map<String, JsonPatchOperation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JsonPatchOperation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JsonPatchOperation.fromJson(value));
    }
    return map;
  }
}

