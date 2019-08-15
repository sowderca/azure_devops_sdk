part of azure_devops_sdk.api;

class NotificationEventFieldType {
  /* Gets or sets the unique identifier of this field type. */
  String id = null;
  
  List<OperatorConstraint> operatorConstraints = [];
  /* Gets or sets the list of operators that this type supports. */
  List<NotificationEventFieldOperator> operators = [];
  
  String subscriptionFieldType = null;
  //enum subscriptionFieldTypeEnum {  string,  integer,  dateTime,  plainText,  html,  treePath,  history,  double,  guid,  boolean,  identity,  picklistInteger,  picklistString,  picklistDouble,  teamProject,  };{
  
  ValueDefinition value = null;
  NotificationEventFieldType();

  @override
  String toString() {
    return 'NotificationEventFieldType[id=$id, operatorConstraints=$operatorConstraints, operators=$operators, subscriptionFieldType=$subscriptionFieldType, value=$value, ]';
  }

  NotificationEventFieldType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['operatorConstraints'] == null) {
      operatorConstraints = null;
    } else {
      operatorConstraints = OperatorConstraint.listFromJson(json['operatorConstraints']);
    }
    if (json['operators'] == null) {
      operators = null;
    } else {
      operators = NotificationEventFieldOperator.listFromJson(json['operators']);
    }
    if (json['subscriptionFieldType'] == null) {
      subscriptionFieldType = null;
    } else {
          subscriptionFieldType = json['subscriptionFieldType'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
      value = ValueDefinition.fromJson(json['value']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (operatorConstraints != null)
      json['operatorConstraints'] = operatorConstraints;
    if (operators != null)
      json['operators'] = operators;
    if (subscriptionFieldType != null)
      json['subscriptionFieldType'] = subscriptionFieldType;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<NotificationEventFieldType> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationEventFieldType>() : json.map((value) => NotificationEventFieldType.fromJson(value)).toList();
  }

  static Map<String, NotificationEventFieldType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationEventFieldType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationEventFieldType.fromJson(value));
    }
    return map;
  }
}

