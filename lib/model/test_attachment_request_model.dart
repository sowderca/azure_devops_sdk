part of azure_devops_sdk.api;

class TestAttachmentRequestModel {
  /* Attachment type By Default it will be GeneralAttachment. It can be one of the following type. { GeneralAttachment, AfnStrip, BugFilingData, CodeCoverage, IntermediateCollectorData, RunConfig, TestImpactDetails, TmiTestRunDeploymentFiles, TmiTestRunReverseDeploymentFiles, TmiTestResultDetail, TmiTestRunSummary } */
  String attachmentType = null;
  /* Comment associated with attachment */
  String comment = null;
  /* Attachment filename */
  String fileName = null;
  /* Base64 encoded file stream */
  String stream = null;
  TestAttachmentRequestModel();

  @override
  String toString() {
    return 'TestAttachmentRequestModel[attachmentType=$attachmentType, comment=$comment, fileName=$fileName, stream=$stream, ]';
  }

  TestAttachmentRequestModel.fromJson(Map<String, dynamic> json) {
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
    if (json['fileName'] == null) {
      fileName = null;
    } else {
          fileName = json['fileName'];
    }
    if (json['stream'] == null) {
      stream = null;
    } else {
          stream = json['stream'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attachmentType != null)
      json['attachmentType'] = attachmentType;
    if (comment != null)
      json['comment'] = comment;
    if (fileName != null)
      json['fileName'] = fileName;
    if (stream != null)
      json['stream'] = stream;
    return json;
  }

  static List<TestAttachmentRequestModel> listFromJson(List<dynamic> json) {
    return json == null ? List<TestAttachmentRequestModel>() : json.map((value) => TestAttachmentRequestModel.fromJson(value)).toList();
  }

  static Map<String, TestAttachmentRequestModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestAttachmentRequestModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestAttachmentRequestModel.fromJson(value));
    }
    return map;
  }
}

