part of azure_devops_sdk.api;

class AccountMyWorkResult {
  /* True, when length of WorkItemDetails is same as the limit */
  bool querySizeLimitExceeded = null;
  /* WorkItem Details */
  List<AccountWorkWorkItemModel> workItemDetails = [];
  AccountMyWorkResult();

  @override
  String toString() {
    return 'AccountMyWorkResult[querySizeLimitExceeded=$querySizeLimitExceeded, workItemDetails=$workItemDetails, ]';
  }

  AccountMyWorkResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['querySizeLimitExceeded'] == null) {
      querySizeLimitExceeded = null;
    } else {
          querySizeLimitExceeded = json['querySizeLimitExceeded'];
    }
    if (json['workItemDetails'] == null) {
      workItemDetails = null;
    } else {
      workItemDetails = AccountWorkWorkItemModel.listFromJson(json['workItemDetails']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (querySizeLimitExceeded != null)
      json['querySizeLimitExceeded'] = querySizeLimitExceeded;
    if (workItemDetails != null)
      json['workItemDetails'] = workItemDetails;
    return json;
  }

  static List<AccountMyWorkResult> listFromJson(List<dynamic> json) {
    return json == null ? List<AccountMyWorkResult>() : json.map((value) => AccountMyWorkResult.fromJson(value)).toList();
  }

  static Map<String, AccountMyWorkResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccountMyWorkResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccountMyWorkResult.fromJson(value));
    }
    return map;
  }
}

