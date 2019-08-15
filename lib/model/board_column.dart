part of azure_devops_sdk.api;

class BoardColumn {
  
  String columnType = null;
  //enum columnTypeEnum {  incoming,  inProgress,  outgoing,  };{
  
  String description = null;
  
  String id = null;
  
  bool isSplit = null;
  
  int itemLimit = null;
  
  String name = null;
  
  Map<String, String> stateMappings = {};
  BoardColumn();

  @override
  String toString() {
    return 'BoardColumn[columnType=$columnType, description=$description, id=$id, isSplit=$isSplit, itemLimit=$itemLimit, name=$name, stateMappings=$stateMappings, ]';
  }

  BoardColumn.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['columnType'] == null) {
      columnType = null;
    } else {
          columnType = json['columnType'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isSplit'] == null) {
      isSplit = null;
    } else {
          isSplit = json['isSplit'];
    }
    if (json['itemLimit'] == null) {
      itemLimit = null;
    } else {
          itemLimit = json['itemLimit'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['stateMappings'] == null) {
      stateMappings = null;
    } else {
          stateMappings = (json['stateMappings'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (columnType != null)
      json['columnType'] = columnType;
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (isSplit != null)
      json['isSplit'] = isSplit;
    if (itemLimit != null)
      json['itemLimit'] = itemLimit;
    if (name != null)
      json['name'] = name;
    if (stateMappings != null)
      json['stateMappings'] = stateMappings;
    return json;
  }

  static List<BoardColumn> listFromJson(List<dynamic> json) {
    return json == null ? List<BoardColumn>() : json.map((value) => BoardColumn.fromJson(value)).toList();
  }

  static Map<String, BoardColumn> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoardColumn>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoardColumn.fromJson(value));
    }
    return map;
  }
}

