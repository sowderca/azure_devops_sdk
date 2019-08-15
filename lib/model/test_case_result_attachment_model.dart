part of azure_devops_sdk.api;

class TestCaseResultAttachmentModel {
  /* Path identifier test step in test case workitem. */
  String actionPath = null;
  /* Attachment ID. */
  int id = null;
  /* Iteration ID. */
  int iterationId = null;
  /* Name of attachment. */
  String name = null;
  /* Attachment size. */
  int size = null;
  /* Url to attachment. */
  String url = null;
  TestCaseResultAttachmentModel();

  @override
  String toString() {
    return 'TestCaseResultAttachmentModel[actionPath=$actionPath, id=$id, iterationId=$iterationId, name=$name, size=$size, url=$url, ]';
  }

  TestCaseResultAttachmentModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionPath'] == null) {
      actionPath = null;
    } else {
          actionPath = json['actionPath'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['iterationId'] == null) {
      iterationId = null;
    } else {
          iterationId = json['iterationId'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['size'] == null) {
      size = null;
    } else {
          size = json['size'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actionPath != null)
      json['actionPath'] = actionPath;
    if (id != null)
      json['id'] = id;
    if (iterationId != null)
      json['iterationId'] = iterationId;
    if (name != null)
      json['name'] = name;
    if (size != null)
      json['size'] = size;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestCaseResultAttachmentModel> listFromJson(List<dynamic> json) {
    return json == null ? List<TestCaseResultAttachmentModel>() : json.map((value) => TestCaseResultAttachmentModel.fromJson(value)).toList();
  }

  static Map<String, TestCaseResultAttachmentModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestCaseResultAttachmentModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestCaseResultAttachmentModel.fromJson(value));
    }
    return map;
  }
}

