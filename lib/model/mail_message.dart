part of azure_devops_sdk.api;

class MailMessage {
  /* Body of mail. */
  String body = null;
  
  EmailRecipients cc = null;
  /* Reply to. */
  String inReplyTo = null;
  /* Message ID of the mail. */
  String messageId = null;
  /* Data when should be replied to mail. */
  DateTime replyBy = null;
  
  EmailRecipients replyTo = null;
  /* List of mail section types. */
  List<Object> sections = [];
  /* Mail sender type. */
  String senderType = null;
  //enum senderTypeEnum {  serviceAccount,  requestingUser,  };{
  /* Subject of the mail. */
  String subject = null;
  
  EmailRecipients to = null;
  MailMessage();

  @override
  String toString() {
    return 'MailMessage[body=$body, cc=$cc, inReplyTo=$inReplyTo, messageId=$messageId, replyBy=$replyBy, replyTo=$replyTo, sections=$sections, senderType=$senderType, subject=$subject, to=$to, ]';
  }

  MailMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['body'] == null) {
      body = null;
    } else {
          body = json['body'];
    }
    if (json['cc'] == null) {
      cc = null;
    } else {
      cc = EmailRecipients.fromJson(json['cc']);
    }
    if (json['inReplyTo'] == null) {
      inReplyTo = null;
    } else {
          inReplyTo = json['inReplyTo'];
    }
    if (json['messageId'] == null) {
      messageId = null;
    } else {
          messageId = json['messageId'];
    }
    if (json['replyBy'] == null) {
      replyBy = null;
    } else {
      replyBy = DateTime.parse(json['replyBy']);
    }
    if (json['replyTo'] == null) {
      replyTo = null;
    } else {
      replyTo = EmailRecipients.fromJson(json['replyTo']);
    }
    if (json['sections'] == null) {
      sections = null;
    } else {
      sections = Object.listFromJson(json['sections']);
    }
    if (json['senderType'] == null) {
      senderType = null;
    } else {
          senderType = json['senderType'];
    }
    if (json['subject'] == null) {
      subject = null;
    } else {
          subject = json['subject'];
    }
    if (json['to'] == null) {
      to = null;
    } else {
      to = EmailRecipients.fromJson(json['to']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (body != null)
      json['body'] = body;
    if (cc != null)
      json['cc'] = cc;
    if (inReplyTo != null)
      json['inReplyTo'] = inReplyTo;
    if (messageId != null)
      json['messageId'] = messageId;
    if (replyBy != null)
      json['replyBy'] = replyBy == null ? null : replyBy.toUtc().toIso8601String();
    if (replyTo != null)
      json['replyTo'] = replyTo;
    if (sections != null)
      json['sections'] = sections;
    if (senderType != null)
      json['senderType'] = senderType;
    if (subject != null)
      json['subject'] = subject;
    if (to != null)
      json['to'] = to;
    return json;
  }

  static List<MailMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<MailMessage>() : json.map((value) => MailMessage.fromJson(value)).toList();
  }

  static Map<String, MailMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MailMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MailMessage.fromJson(value));
    }
    return map;
  }
}

