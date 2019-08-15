part of azure_devops_sdk.api;

class ExtensionDataCollection {
  /* The name of the collection */
  String collectionName = null;
  /* A list of documents belonging to the collection */
  List<JObject> documents = [];
  /* The type of the collection's scope, such as Default or User */
  String scopeType = null;
  /* The value of the collection's scope, such as Current or Me */
  String scopeValue = null;
  ExtensionDataCollection();

  @override
  String toString() {
    return 'ExtensionDataCollection[collectionName=$collectionName, documents=$documents, scopeType=$scopeType, scopeValue=$scopeValue, ]';
  }

  ExtensionDataCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['collectionName'] == null) {
      collectionName = null;
    } else {
          collectionName = json['collectionName'];
    }
    if (json['documents'] == null) {
      documents = null;
    } else {
      documents = JObject.listFromJson(json['documents']);
    }
    if (json['scopeType'] == null) {
      scopeType = null;
    } else {
          scopeType = json['scopeType'];
    }
    if (json['scopeValue'] == null) {
      scopeValue = null;
    } else {
          scopeValue = json['scopeValue'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (collectionName != null)
      json['collectionName'] = collectionName;
    if (documents != null)
      json['documents'] = documents;
    if (scopeType != null)
      json['scopeType'] = scopeType;
    if (scopeValue != null)
      json['scopeValue'] = scopeValue;
    return json;
  }

  static List<ExtensionDataCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionDataCollection>() : json.map((value) => ExtensionDataCollection.fromJson(value)).toList();
  }

  static Map<String, ExtensionDataCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionDataCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionDataCollection.fromJson(value));
    }
    return map;
  }
}

