part of azure_devops_sdk.api;

class HttpPostedTcmAttachment {
  
  String attachmentContent = null;
  
  int contentLength = null;
  
  String contentType = null;
  
  String fileName = null;
  HttpPostedTcmAttachment();

  @override
  String toString() {
    return 'HttpPostedTcmAttachment[attachmentContent=$attachmentContent, contentLength=$contentLength, contentType=$contentType, fileName=$fileName, ]';
  }

  HttpPostedTcmAttachment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attachmentContent'] == null) {
      attachmentContent = null;
    } else {
          attachmentContent = json['attachmentContent'];
    }
    if (json['contentLength'] == null) {
      contentLength = null;
    } else {
          contentLength = json['contentLength'];
    }
    if (json['contentType'] == null) {
      contentType = null;
    } else {
          contentType = json['contentType'];
    }
    if (json['fileName'] == null) {
      fileName = null;
    } else {
          fileName = json['fileName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attachmentContent != null)
      json['attachmentContent'] = attachmentContent;
    if (contentLength != null)
      json['contentLength'] = contentLength;
    if (contentType != null)
      json['contentType'] = contentType;
    if (fileName != null)
      json['fileName'] = fileName;
    return json;
  }

  static List<HttpPostedTcmAttachment> listFromJson(List<dynamic> json) {
    return json == null ? List<HttpPostedTcmAttachment>() : json.map((value) => HttpPostedTcmAttachment.fromJson(value)).toList();
  }

  static Map<String, HttpPostedTcmAttachment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, HttpPostedTcmAttachment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HttpPostedTcmAttachment.fromJson(value));
    }
    return map;
  }
}

