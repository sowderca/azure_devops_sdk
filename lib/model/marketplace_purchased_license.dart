part of azure_devops_sdk.api;

class MarketplacePurchasedLicense {
  /* The Marketplace display name. */
  String marketplaceName = null;
  /* The name of the identity making the purchase as seen by the marketplace */
  String purchaserName = null;
  /* The quantity purchased. */
  int purchaseUnitCount = null;
  MarketplacePurchasedLicense();

  @override
  String toString() {
    return 'MarketplacePurchasedLicense[marketplaceName=$marketplaceName, purchaserName=$purchaserName, purchaseUnitCount=$purchaseUnitCount, ]';
  }

  MarketplacePurchasedLicense.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['marketplaceName'] == null) {
      marketplaceName = null;
    } else {
          marketplaceName = json['marketplaceName'];
    }
    if (json['purchaserName'] == null) {
      purchaserName = null;
    } else {
          purchaserName = json['purchaserName'];
    }
    if (json['purchaseUnitCount'] == null) {
      purchaseUnitCount = null;
    } else {
          purchaseUnitCount = json['purchaseUnitCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (marketplaceName != null)
      json['marketplaceName'] = marketplaceName;
    if (purchaserName != null)
      json['purchaserName'] = purchaserName;
    if (purchaseUnitCount != null)
      json['purchaseUnitCount'] = purchaseUnitCount;
    return json;
  }

  static List<MarketplacePurchasedLicense> listFromJson(List<dynamic> json) {
    return json == null ? List<MarketplacePurchasedLicense>() : json.map((value) => MarketplacePurchasedLicense.fromJson(value)).toList();
  }

  static Map<String, MarketplacePurchasedLicense> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MarketplacePurchasedLicense>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MarketplacePurchasedLicense.fromJson(value));
    }
    return map;
  }
}

