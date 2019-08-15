part of azure_devops_sdk.api;

class EmailRecipients {
  /* List of email addresses. */
  List<String> emailAddresses = [];
  /* List of TFS IDs guids. */
  List<String> tfsIds = [];
  EmailRecipients();

  @override
  String toString() {
    return 'EmailRecipients[emailAddresses=$emailAddresses, tfsIds=$tfsIds, ]';
  }

  EmailRecipients.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['emailAddresses'] == null) {
      emailAddresses = null;
    } else {
      emailAddresses = (json['emailAddresses'] as List).cast<String>();
    }
    if (json['tfsIds'] == null) {
      tfsIds = null;
    } else {
      tfsIds = (json['tfsIds'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (emailAddresses != null)
      json['emailAddresses'] = emailAddresses;
    if (tfsIds != null)
      json['tfsIds'] = tfsIds;
    return json;
  }

  static List<EmailRecipients> listFromJson(List<dynamic> json) {
    return json == null ? List<EmailRecipients>() : json.map((value) => EmailRecipients.fromJson(value)).toList();
  }

  static Map<String, EmailRecipients> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EmailRecipients>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EmailRecipients.fromJson(value));
    }
    return map;
  }
}

