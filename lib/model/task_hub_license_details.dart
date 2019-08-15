part of azure_devops_sdk.api;

class TaskHubLicenseDetails {
  
  int enterpriseUsersCount = null;
  
  bool failedToReachAllProviders = null;
  
  int freeHostedLicenseCount = null;
  
  int freeLicenseCount = null;
  
  bool hasLicenseCountEverUpdated = null;
  
  int hostedAgentMinutesFreeCount = null;
  
  int hostedAgentMinutesUsedCount = null;
  
  bool hostedLicensesArePremium = null;
  
  List<MarketplacePurchasedLicense> marketplacePurchasedHostedLicenses = [];
  
  int msdnUsersCount = null;
  /* Microsoft-hosted licenses purchased from VSTS directly. */
  int purchasedHostedLicenseCount = null;
  /* Self-hosted licenses purchased from VSTS directly. */
  int purchasedLicenseCount = null;
  
  int totalHostedLicenseCount = null;
  
  int totalLicenseCount = null;
  
  int totalPrivateLicenseCount = null;
  TaskHubLicenseDetails();

  @override
  String toString() {
    return 'TaskHubLicenseDetails[enterpriseUsersCount=$enterpriseUsersCount, failedToReachAllProviders=$failedToReachAllProviders, freeHostedLicenseCount=$freeHostedLicenseCount, freeLicenseCount=$freeLicenseCount, hasLicenseCountEverUpdated=$hasLicenseCountEverUpdated, hostedAgentMinutesFreeCount=$hostedAgentMinutesFreeCount, hostedAgentMinutesUsedCount=$hostedAgentMinutesUsedCount, hostedLicensesArePremium=$hostedLicensesArePremium, marketplacePurchasedHostedLicenses=$marketplacePurchasedHostedLicenses, msdnUsersCount=$msdnUsersCount, purchasedHostedLicenseCount=$purchasedHostedLicenseCount, purchasedLicenseCount=$purchasedLicenseCount, totalHostedLicenseCount=$totalHostedLicenseCount, totalLicenseCount=$totalLicenseCount, totalPrivateLicenseCount=$totalPrivateLicenseCount, ]';
  }

  TaskHubLicenseDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['enterpriseUsersCount'] == null) {
      enterpriseUsersCount = null;
    } else {
          enterpriseUsersCount = json['enterpriseUsersCount'];
    }
    if (json['failedToReachAllProviders'] == null) {
      failedToReachAllProviders = null;
    } else {
          failedToReachAllProviders = json['failedToReachAllProviders'];
    }
    if (json['freeHostedLicenseCount'] == null) {
      freeHostedLicenseCount = null;
    } else {
          freeHostedLicenseCount = json['freeHostedLicenseCount'];
    }
    if (json['freeLicenseCount'] == null) {
      freeLicenseCount = null;
    } else {
          freeLicenseCount = json['freeLicenseCount'];
    }
    if (json['hasLicenseCountEverUpdated'] == null) {
      hasLicenseCountEverUpdated = null;
    } else {
          hasLicenseCountEverUpdated = json['hasLicenseCountEverUpdated'];
    }
    if (json['hostedAgentMinutesFreeCount'] == null) {
      hostedAgentMinutesFreeCount = null;
    } else {
          hostedAgentMinutesFreeCount = json['hostedAgentMinutesFreeCount'];
    }
    if (json['hostedAgentMinutesUsedCount'] == null) {
      hostedAgentMinutesUsedCount = null;
    } else {
          hostedAgentMinutesUsedCount = json['hostedAgentMinutesUsedCount'];
    }
    if (json['hostedLicensesArePremium'] == null) {
      hostedLicensesArePremium = null;
    } else {
          hostedLicensesArePremium = json['hostedLicensesArePremium'];
    }
    if (json['marketplacePurchasedHostedLicenses'] == null) {
      marketplacePurchasedHostedLicenses = null;
    } else {
      marketplacePurchasedHostedLicenses = MarketplacePurchasedLicense.listFromJson(json['marketplacePurchasedHostedLicenses']);
    }
    if (json['msdnUsersCount'] == null) {
      msdnUsersCount = null;
    } else {
          msdnUsersCount = json['msdnUsersCount'];
    }
    if (json['purchasedHostedLicenseCount'] == null) {
      purchasedHostedLicenseCount = null;
    } else {
          purchasedHostedLicenseCount = json['purchasedHostedLicenseCount'];
    }
    if (json['purchasedLicenseCount'] == null) {
      purchasedLicenseCount = null;
    } else {
          purchasedLicenseCount = json['purchasedLicenseCount'];
    }
    if (json['totalHostedLicenseCount'] == null) {
      totalHostedLicenseCount = null;
    } else {
          totalHostedLicenseCount = json['totalHostedLicenseCount'];
    }
    if (json['totalLicenseCount'] == null) {
      totalLicenseCount = null;
    } else {
          totalLicenseCount = json['totalLicenseCount'];
    }
    if (json['totalPrivateLicenseCount'] == null) {
      totalPrivateLicenseCount = null;
    } else {
          totalPrivateLicenseCount = json['totalPrivateLicenseCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (enterpriseUsersCount != null)
      json['enterpriseUsersCount'] = enterpriseUsersCount;
    if (failedToReachAllProviders != null)
      json['failedToReachAllProviders'] = failedToReachAllProviders;
    if (freeHostedLicenseCount != null)
      json['freeHostedLicenseCount'] = freeHostedLicenseCount;
    if (freeLicenseCount != null)
      json['freeLicenseCount'] = freeLicenseCount;
    if (hasLicenseCountEverUpdated != null)
      json['hasLicenseCountEverUpdated'] = hasLicenseCountEverUpdated;
    if (hostedAgentMinutesFreeCount != null)
      json['hostedAgentMinutesFreeCount'] = hostedAgentMinutesFreeCount;
    if (hostedAgentMinutesUsedCount != null)
      json['hostedAgentMinutesUsedCount'] = hostedAgentMinutesUsedCount;
    if (hostedLicensesArePremium != null)
      json['hostedLicensesArePremium'] = hostedLicensesArePremium;
    if (marketplacePurchasedHostedLicenses != null)
      json['marketplacePurchasedHostedLicenses'] = marketplacePurchasedHostedLicenses;
    if (msdnUsersCount != null)
      json['msdnUsersCount'] = msdnUsersCount;
    if (purchasedHostedLicenseCount != null)
      json['purchasedHostedLicenseCount'] = purchasedHostedLicenseCount;
    if (purchasedLicenseCount != null)
      json['purchasedLicenseCount'] = purchasedLicenseCount;
    if (totalHostedLicenseCount != null)
      json['totalHostedLicenseCount'] = totalHostedLicenseCount;
    if (totalLicenseCount != null)
      json['totalLicenseCount'] = totalLicenseCount;
    if (totalPrivateLicenseCount != null)
      json['totalPrivateLicenseCount'] = totalPrivateLicenseCount;
    return json;
  }

  static List<TaskHubLicenseDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskHubLicenseDetails>() : json.map((value) => TaskHubLicenseDetails.fromJson(value)).toList();
  }

  static Map<String, TaskHubLicenseDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskHubLicenseDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskHubLicenseDetails.fromJson(value));
    }
    return map;
  }
}

