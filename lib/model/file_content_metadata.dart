part of azure_devops_sdk.api;

class FileContentMetadata {
  
  String contentType = null;
  
  int encoding = null;
  
  String extension = null;
  
  String fileName = null;
  
  bool isBinary = null;
  
  bool isImage = null;
  
  String vsLink = null;
  FileContentMetadata();

  @override
  String toString() {
    return 'FileContentMetadata[contentType=$contentType, encoding=$encoding, extension=$extension, fileName=$fileName, isBinary=$isBinary, isImage=$isImage, vsLink=$vsLink, ]';
  }

  FileContentMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['contentType'] == null) {
      contentType = null;
    } else {
          contentType = json['contentType'];
    }
    if (json['encoding'] == null) {
      encoding = null;
    } else {
          encoding = json['encoding'];
    }
    if (json['extension'] == null) {
      extension = null;
    } else {
          extension = json['extension'];
    }
    if (json['fileName'] == null) {
      fileName = null;
    } else {
          fileName = json['fileName'];
    }
    if (json['isBinary'] == null) {
      isBinary = null;
    } else {
          isBinary = json['isBinary'];
    }
    if (json['isImage'] == null) {
      isImage = null;
    } else {
          isImage = json['isImage'];
    }
    if (json['vsLink'] == null) {
      vsLink = null;
    } else {
          vsLink = json['vsLink'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (contentType != null)
      json['contentType'] = contentType;
    if (encoding != null)
      json['encoding'] = encoding;
    if (extension != null)
      json['extension'] = extension;
    if (fileName != null)
      json['fileName'] = fileName;
    if (isBinary != null)
      json['isBinary'] = isBinary;
    if (isImage != null)
      json['isImage'] = isImage;
    if (vsLink != null)
      json['vsLink'] = vsLink;
    return json;
  }

  static List<FileContentMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<FileContentMetadata>() : json.map((value) => FileContentMetadata.fromJson(value)).toList();
  }

  static Map<String, FileContentMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FileContentMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FileContentMetadata.fromJson(value));
    }
    return map;
  }
}

