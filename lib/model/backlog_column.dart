part of azure_devops_sdk.api;

class BacklogColumn {
  
  WorkItemFieldReference columnFieldReference = null;
  
  int width = null;
  BacklogColumn();

  @override
  String toString() {
    return 'BacklogColumn[columnFieldReference=$columnFieldReference, width=$width, ]';
  }

  BacklogColumn.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['columnFieldReference'] == null) {
      columnFieldReference = null;
    } else {
      columnFieldReference = WorkItemFieldReference.fromJson(json['columnFieldReference']);
    }
    if (json['width'] == null) {
      width = null;
    } else {
          width = json['width'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (columnFieldReference != null)
      json['columnFieldReference'] = columnFieldReference;
    if (width != null)
      json['width'] = width;
    return json;
  }

  static List<BacklogColumn> listFromJson(List<dynamic> json) {
    return json == null ? List<BacklogColumn>() : json.map((value) => BacklogColumn.fromJson(value)).toList();
  }

  static Map<String, BacklogColumn> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BacklogColumn>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BacklogColumn.fromJson(value));
    }
    return map;
  }
}

