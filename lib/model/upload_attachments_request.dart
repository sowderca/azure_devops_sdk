part of azure_devops_sdk.api;

class UploadAttachmentsRequest {
  
  List<HttpPostedTcmAttachment> attachments = [];
  
  Map<String, String> requestParams = {};
  UploadAttachmentsRequest();

  @override
  String toString() {
    return 'UploadAttachmentsRequest[attachments=$attachments, requestParams=$requestParams, ]';
  }

  UploadAttachmentsRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attachments'] == null) {
      attachments = null;
    } else {
      attachments = HttpPostedTcmAttachment.listFromJson(json['attachments']);
    }
    if (json['requestParams'] == null) {
      requestParams = null;
    } else {
          requestParams = (json['requestParams'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attachments != null)
      json['attachments'] = attachments;
    if (requestParams != null)
      json['requestParams'] = requestParams;
    return json;
  }

  static List<UploadAttachmentsRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<UploadAttachmentsRequest>() : json.map((value) => UploadAttachmentsRequest.fromJson(value)).toList();
  }

  static Map<String, UploadAttachmentsRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UploadAttachmentsRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UploadAttachmentsRequest.fromJson(value));
    }
    return map;
  }
}

