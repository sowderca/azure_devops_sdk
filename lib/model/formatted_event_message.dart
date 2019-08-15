part of azure_devops_sdk.api;

class FormattedEventMessage {
  /* Gets or sets the html format of the message */
  String html = null;
  /* Gets or sets the markdown format of the message */
  String markdown = null;
  /* Gets or sets the raw text of the message */
  String text = null;
  FormattedEventMessage();

  @override
  String toString() {
    return 'FormattedEventMessage[html=$html, markdown=$markdown, text=$text, ]';
  }

  FormattedEventMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['html'] == null) {
      html = null;
    } else {
          html = json['html'];
    }
    if (json['markdown'] == null) {
      markdown = null;
    } else {
          markdown = json['markdown'];
    }
    if (json['text'] == null) {
      text = null;
    } else {
          text = json['text'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (html != null)
      json['html'] = html;
    if (markdown != null)
      json['markdown'] = markdown;
    if (text != null)
      json['text'] = text;
    return json;
  }

  static List<FormattedEventMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<FormattedEventMessage>() : json.map((value) => FormattedEventMessage.fromJson(value)).toList();
  }

  static Map<String, FormattedEventMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FormattedEventMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FormattedEventMessage.fromJson(value));
    }
    return map;
  }
}

