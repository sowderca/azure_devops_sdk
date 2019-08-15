part of azure_devops_sdk.api;

class TestAttachment {
  /* Attachment type. */
  String attachmentType = null;
  //enum attachmentTypeEnum {  generalAttachment,  codeCoverage,  consoleLog,  };{
  /* Comment associated with attachment. */
  String comment = null;
  /* Attachment created date. */
  DateTime createdDate = null;
  /* Attachment file name */
  String fileName = null;
  /* ID of the attachment. */
  int id = null;
  /* Attachment size. */
  int size = null;
  /* Attachment Url. */
  String url = null;
  TestAttachment();

  @override
  String toString() {
    return 'TestAttachment[attachmentType=$attachmentType, comment=$comment, createdDate=$createdDate, fileName=$fileName, id=$id, size=$size, url=$url, ]';
  }

  TestAttachment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attachmentType'] == null) {
      attachmentType = null;
    } else {
          attachmentType = json['attachmentType'];
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['fileName'] == null) {
      fileName = null;
    } else {
          fileName = json['fileName'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
    if (attachmentType != null)
      json['attachmentType'] = attachmentType;
    if (comment != null)
      json['comment'] = comment;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (fileName != null)
      json['fileName'] = fileName;
    if (id != null)
      json['id'] = id;
    if (size != null)
      json['size'] = size;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestAttachment> listFromJson(List<dynamic> json) {
    return json == null ? List<TestAttachment>() : json.map((value) => TestAttachment.fromJson(value)).toList();
  }

  static Map<String, TestAttachment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestAttachment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestAttachment.fromJson(value));
    }
    return map;
  }
}

