part of azure_devops_sdk.api;

class TaskAgentMessage {
  /* Gets or sets the body of the message. If the <c>IV</c> property is provided the body will need to be decrypted using the <c>TaskAgentSession.EncryptionKey</c> value in addition to the <c>IV</c>. */
  String body = null;
  /* Gets or sets the initialization vector used to encrypt this message. */
  List<String> iv = [];
  /* Gets or sets the message identifier. */
  int messageId = null;
  /* Gets or sets the message type, describing the data contract found in <c>TaskAgentMessage.Body</c>. */
  String messageType = null;
  TaskAgentMessage();

  @override
  String toString() {
    return 'TaskAgentMessage[body=$body, iv=$iv, messageId=$messageId, messageType=$messageType, ]';
  }

  TaskAgentMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['body'] == null) {
      body = null;
    } else {
          body = json['body'];
    }
    if (json['iv'] == null) {
      iv = null;
    } else {
      iv = (json['iv'] as List).cast<String>();
    }
    if (json['messageId'] == null) {
      messageId = null;
    } else {
          messageId = json['messageId'];
    }
    if (json['messageType'] == null) {
      messageType = null;
    } else {
          messageType = json['messageType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (body != null)
      json['body'] = body;
    if (iv != null)
      json['iv'] = iv;
    if (messageId != null)
      json['messageId'] = messageId;
    if (messageType != null)
      json['messageType'] = messageType;
    return json;
  }

  static List<TaskAgentMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentMessage>() : json.map((value) => TaskAgentMessage.fromJson(value)).toList();
  }

  static Map<String, TaskAgentMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentMessage.fromJson(value));
    }
    return map;
  }
}

