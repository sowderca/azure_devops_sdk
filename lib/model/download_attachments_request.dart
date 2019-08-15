part of azure_devops_sdk.api;

class DownloadAttachmentsRequest {
  
  List<int> ids = [];
  
  List<int> lengths = [];
  DownloadAttachmentsRequest();

  @override
  String toString() {
    return 'DownloadAttachmentsRequest[ids=$ids, lengths=$lengths, ]';
  }

  DownloadAttachmentsRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ids'] == null) {
      ids = null;
    } else {
      ids = (json['ids'] as List).cast<int>();
    }
    if (json['lengths'] == null) {
      lengths = null;
    } else {
      lengths = (json['lengths'] as List).cast<int>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ids != null)
      json['ids'] = ids;
    if (lengths != null)
      json['lengths'] = lengths;
    return json;
  }

  static List<DownloadAttachmentsRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<DownloadAttachmentsRequest>() : json.map((value) => DownloadAttachmentsRequest.fromJson(value)).toList();
  }

  static Map<String, DownloadAttachmentsRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DownloadAttachmentsRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DownloadAttachmentsRequest.fromJson(value));
    }
    return map;
  }
}

