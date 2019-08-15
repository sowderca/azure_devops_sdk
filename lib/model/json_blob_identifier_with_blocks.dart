part of azure_devops_sdk.api;

class JsonBlobIdentifierWithBlocks {
  /* List of blob block hashes. */
  List<JsonBlobBlockHash> blockHashes = [];
  /* Array of blobId bytes. */
  List<String> identifierValue = [];
  JsonBlobIdentifierWithBlocks();

  @override
  String toString() {
    return 'JsonBlobIdentifierWithBlocks[blockHashes=$blockHashes, identifierValue=$identifierValue, ]';
  }

  JsonBlobIdentifierWithBlocks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['blockHashes'] == null) {
      blockHashes = null;
    } else {
      blockHashes = JsonBlobBlockHash.listFromJson(json['blockHashes']);
    }
    if (json['identifierValue'] == null) {
      identifierValue = null;
    } else {
      identifierValue = (json['identifierValue'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (blockHashes != null)
      json['blockHashes'] = blockHashes;
    if (identifierValue != null)
      json['identifierValue'] = identifierValue;
    return json;
  }

  static List<JsonBlobIdentifierWithBlocks> listFromJson(List<dynamic> json) {
    return json == null ? List<JsonBlobIdentifierWithBlocks>() : json.map((value) => JsonBlobIdentifierWithBlocks.fromJson(value)).toList();
  }

  static Map<String, JsonBlobIdentifierWithBlocks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JsonBlobIdentifierWithBlocks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JsonBlobIdentifierWithBlocks.fromJson(value));
    }
    return map;
  }
}

