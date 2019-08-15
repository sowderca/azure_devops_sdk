part of azure_devops_sdk.api;

class AfnStrip {
  /* Auxiliary Url to be consumed by MTM */
  String auxiliaryUrl = null;
  /* Creation date of the AfnStrip */
  DateTime creationDate = null;
  /* File name of the attachment created */
  String fileName = null;
  /* ID of AfnStrip. This is same as the attachment ID. */
  int id = null;
  /* Project identifier which contains AfnStrip */
  String project = null;
  /* Service in which this attachment is stored in */
  String storedIn = null;
  /* Afn strip stream. */
  String stream = null;
  /* ID of the testcase. */
  int testCaseId = null;
  /* Backing test result id. */
  int testResultId = null;
  /* Backing test run id. */
  int testRunId = null;
  /* Byte stream (uncompressed) length of Afn strip. */
  int unCompressedStreamLength = null;
  /* Url of the attachment created. */
  String url = null;
  AfnStrip();

  @override
  String toString() {
    return 'AfnStrip[auxiliaryUrl=$auxiliaryUrl, creationDate=$creationDate, fileName=$fileName, id=$id, project=$project, storedIn=$storedIn, stream=$stream, testCaseId=$testCaseId, testResultId=$testResultId, testRunId=$testRunId, unCompressedStreamLength=$unCompressedStreamLength, url=$url, ]';
  }

  AfnStrip.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['auxiliaryUrl'] == null) {
      auxiliaryUrl = null;
    } else {
          auxiliaryUrl = json['auxiliaryUrl'];
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
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
    if (json['project'] == null) {
      project = null;
    } else {
          project = json['project'];
    }
    if (json['storedIn'] == null) {
      storedIn = null;
    } else {
          storedIn = json['storedIn'];
    }
    if (json['stream'] == null) {
      stream = null;
    } else {
          stream = json['stream'];
    }
    if (json['testCaseId'] == null) {
      testCaseId = null;
    } else {
          testCaseId = json['testCaseId'];
    }
    if (json['testResultId'] == null) {
      testResultId = null;
    } else {
          testResultId = json['testResultId'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
    if (json['unCompressedStreamLength'] == null) {
      unCompressedStreamLength = null;
    } else {
          unCompressedStreamLength = json['unCompressedStreamLength'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (auxiliaryUrl != null)
      json['auxiliaryUrl'] = auxiliaryUrl;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (fileName != null)
      json['fileName'] = fileName;
    if (id != null)
      json['id'] = id;
    if (project != null)
      json['project'] = project;
    if (storedIn != null)
      json['storedIn'] = storedIn;
    if (stream != null)
      json['stream'] = stream;
    if (testCaseId != null)
      json['testCaseId'] = testCaseId;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    if (unCompressedStreamLength != null)
      json['unCompressedStreamLength'] = unCompressedStreamLength;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<AfnStrip> listFromJson(List<dynamic> json) {
    return json == null ? List<AfnStrip>() : json.map((value) => AfnStrip.fromJson(value)).toList();
  }

  static Map<String, AfnStrip> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AfnStrip>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AfnStrip.fromJson(value));
    }
    return map;
  }
}

