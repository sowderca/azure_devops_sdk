part of azure_devops_sdk.api;

class InformationNode {
  /* Fields of the information node */
  Map<String, String> fields = {};
  /* Process or person that last modified this node */
  String lastModifiedBy = null;
  /* Date this node was last modified */
  DateTime lastModifiedDate = null;
  /* Node Id of this information node */
  int nodeId = null;
  /* Id of parent node (xml tree) */
  int parentId = null;
  /* The type of the information node */
  String type = null;
  InformationNode();

  @override
  String toString() {
    return 'InformationNode[fields=$fields, lastModifiedBy=$lastModifiedBy, lastModifiedDate=$lastModifiedDate, nodeId=$nodeId, parentId=$parentId, type=$type, ]';
  }

  InformationNode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fields'] == null) {
      fields = null;
    } else {
          fields = (json['fields'] as Map).cast<String, String>();
    }
    if (json['lastModifiedBy'] == null) {
      lastModifiedBy = null;
    } else {
          lastModifiedBy = json['lastModifiedBy'];
    }
    if (json['lastModifiedDate'] == null) {
      lastModifiedDate = null;
    } else {
      lastModifiedDate = DateTime.parse(json['lastModifiedDate']);
    }
    if (json['nodeId'] == null) {
      nodeId = null;
    } else {
          nodeId = json['nodeId'];
    }
    if (json['parentId'] == null) {
      parentId = null;
    } else {
          parentId = json['parentId'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fields != null)
      json['fields'] = fields;
    if (lastModifiedBy != null)
      json['lastModifiedBy'] = lastModifiedBy;
    if (lastModifiedDate != null)
      json['lastModifiedDate'] = lastModifiedDate == null ? null : lastModifiedDate.toUtc().toIso8601String();
    if (nodeId != null)
      json['nodeId'] = nodeId;
    if (parentId != null)
      json['parentId'] = parentId;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<InformationNode> listFromJson(List<dynamic> json) {
    return json == null ? List<InformationNode>() : json.map((value) => InformationNode.fromJson(value)).toList();
  }

  static Map<String, InformationNode> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InformationNode>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InformationNode.fromJson(value));
    }
    return map;
  }
}

