part of azure_devops_sdk.api;

class TestAttachmentReference {
  /* ID of the attachment. */
  int id = null;
  /* Url to download the attachment. */
  String url = null;
  TestAttachmentReference();

  @override
  String toString() {
    return 'TestAttachmentReference[id=$id, url=$url, ]';
  }

  TestAttachmentReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestAttachmentReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TestAttachmentReference>() : json.map((value) => TestAttachmentReference.fromJson(value)).toList();
  }

  static Map<String, TestAttachmentReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestAttachmentReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestAttachmentReference.fromJson(value));
    }
    return map;
  }
}

