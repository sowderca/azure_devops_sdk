part of azure_devops_sdk.api;

class Account {
  /* Identifier for an Account */
  String accountId = null;
  /* Name for an account */
  String accountName = null;
  /* Owner of account */
  String accountOwner = null;
  /* Current account status */
  String accountStatus = null;
  //enum accountStatusEnum {  none,  enabled,  disabled,  deleted,  moved,  };{
  /* Type of account: Personal, Organization */
  String accountType = null;
  //enum accountTypeEnum {  personal,  organization,  };{
  /* Uri for an account */
  String accountUri = null;
  /* Who created the account */
  String createdBy = null;
  /* Date account was created */
  DateTime createdDate = null;
  
  bool hasMoved = null;
  /* Identity of last person to update the account */
  String lastUpdatedBy = null;
  /* Date account was last updated */
  DateTime lastUpdatedDate = null;
  /* Namespace for an account */
  String namespaceId = null;
  
  String newCollectionId = null;
  /* Organization that created the account */
  String organizationName = null;
  
  PropertiesCollection properties = null;
  /* Reason for current status */
  String statusReason = null;
  Account();

  @override
  String toString() {
    return 'Account[accountId=$accountId, accountName=$accountName, accountOwner=$accountOwner, accountStatus=$accountStatus, accountType=$accountType, accountUri=$accountUri, createdBy=$createdBy, createdDate=$createdDate, hasMoved=$hasMoved, lastUpdatedBy=$lastUpdatedBy, lastUpdatedDate=$lastUpdatedDate, namespaceId=$namespaceId, newCollectionId=$newCollectionId, organizationName=$organizationName, properties=$properties, statusReason=$statusReason, ]';
  }

  Account.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accountId'] == null) {
      accountId = null;
    } else {
          accountId = json['accountId'];
    }
    if (json['accountName'] == null) {
      accountName = null;
    } else {
          accountName = json['accountName'];
    }
    if (json['accountOwner'] == null) {
      accountOwner = null;
    } else {
          accountOwner = json['accountOwner'];
    }
    if (json['accountStatus'] == null) {
      accountStatus = null;
    } else {
          accountStatus = json['accountStatus'];
    }
    if (json['accountType'] == null) {
      accountType = null;
    } else {
          accountType = json['accountType'];
    }
    if (json['accountUri'] == null) {
      accountUri = null;
    } else {
          accountUri = json['accountUri'];
    }
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
          createdBy = json['createdBy'];
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['hasMoved'] == null) {
      hasMoved = null;
    } else {
          hasMoved = json['hasMoved'];
    }
    if (json['lastUpdatedBy'] == null) {
      lastUpdatedBy = null;
    } else {
          lastUpdatedBy = json['lastUpdatedBy'];
    }
    if (json['lastUpdatedDate'] == null) {
      lastUpdatedDate = null;
    } else {
      lastUpdatedDate = DateTime.parse(json['lastUpdatedDate']);
    }
    if (json['namespaceId'] == null) {
      namespaceId = null;
    } else {
          namespaceId = json['namespaceId'];
    }
    if (json['newCollectionId'] == null) {
      newCollectionId = null;
    } else {
          newCollectionId = json['newCollectionId'];
    }
    if (json['organizationName'] == null) {
      organizationName = null;
    } else {
          organizationName = json['organizationName'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = PropertiesCollection.fromJson(json['properties']);
    }
    if (json['statusReason'] == null) {
      statusReason = null;
    } else {
          statusReason = json['statusReason'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accountId != null)
      json['accountId'] = accountId;
    if (accountName != null)
      json['accountName'] = accountName;
    if (accountOwner != null)
      json['accountOwner'] = accountOwner;
    if (accountStatus != null)
      json['accountStatus'] = accountStatus;
    if (accountType != null)
      json['accountType'] = accountType;
    if (accountUri != null)
      json['accountUri'] = accountUri;
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (hasMoved != null)
      json['hasMoved'] = hasMoved;
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedDate != null)
      json['lastUpdatedDate'] = lastUpdatedDate == null ? null : lastUpdatedDate.toUtc().toIso8601String();
    if (namespaceId != null)
      json['namespaceId'] = namespaceId;
    if (newCollectionId != null)
      json['newCollectionId'] = newCollectionId;
    if (organizationName != null)
      json['organizationName'] = organizationName;
    if (properties != null)
      json['properties'] = properties;
    if (statusReason != null)
      json['statusReason'] = statusReason;
    return json;
  }

  static List<Account> listFromJson(List<dynamic> json) {
    return json == null ? List<Account>() : json.map((value) => Account.fromJson(value)).toList();
  }

  static Map<String, Account> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Account>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Account.fromJson(value));
    }
    return map;
  }
}

