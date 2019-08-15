part of azure_devops_sdk.api;

class BoardFields {
  
  FieldReference columnField = null;
  
  FieldReference doneField = null;
  
  FieldReference rowField = null;
  BoardFields();

  @override
  String toString() {
    return 'BoardFields[columnField=$columnField, doneField=$doneField, rowField=$rowField, ]';
  }

  BoardFields.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['columnField'] == null) {
      columnField = null;
    } else {
      columnField = FieldReference.fromJson(json['columnField']);
    }
    if (json['doneField'] == null) {
      doneField = null;
    } else {
      doneField = FieldReference.fromJson(json['doneField']);
    }
    if (json['rowField'] == null) {
      rowField = null;
    } else {
      rowField = FieldReference.fromJson(json['rowField']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (columnField != null)
      json['columnField'] = columnField;
    if (doneField != null)
      json['doneField'] = doneField;
    if (rowField != null)
      json['rowField'] = rowField;
    return json;
  }

  static List<BoardFields> listFromJson(List<dynamic> json) {
    return json == null ? List<BoardFields>() : json.map((value) => BoardFields.fromJson(value)).toList();
  }

  static Map<String, BoardFields> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoardFields>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoardFields.fromJson(value));
    }
    return map;
  }
}

