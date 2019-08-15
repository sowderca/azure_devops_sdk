part of azure_devops_sdk.api;

class WikiAttachmentResponse {
  
  WikiAttachment attachment = null;
  /* Contains the list of ETag values from the response header of the attachments API call. The first item in the list contains the version of the wiki attachment. */
  List<String> eTag = [];
  WikiAttachmentResponse();

  @override
  String toString() {
    return 'WikiAttachmentResponse[attachment=$attachment, eTag=$eTag, ]';
  }

  WikiAttachmentResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attachment'] == null) {
      attachment = null;
    } else {
      attachment = WikiAttachment.fromJson(json['attachment']);
    }
    if (json['eTag'] == null) {
      eTag = null;
    } else {
      eTag = (json['eTag'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attachment != null)
      json['attachment'] = attachment;
    if (eTag != null)
      json['eTag'] = eTag;
    return json;
  }

  static List<WikiAttachmentResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiAttachmentResponse>() : json.map((value) => WikiAttachmentResponse.fromJson(value)).toList();
  }

  static Map<String, WikiAttachmentResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiAttachmentResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiAttachmentResponse.fromJson(value));
    }
    return map;
  }
}

