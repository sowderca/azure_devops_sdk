part of azure_devops_sdk.api;

class ProfileRegions {
  /* List of country/region code with contact consent requirement type of notice */
  List<String> noticeContactConsentRequirementRegions = [];
  /* List of country/region code with contact consent requirement type of opt-out */
  List<String> optOutContactConsentRequirementRegions = [];
  /* List of country/regions */
  List<ProfileRegion> regions = [];
  ProfileRegions();

  @override
  String toString() {
    return 'ProfileRegions[noticeContactConsentRequirementRegions=$noticeContactConsentRequirementRegions, optOutContactConsentRequirementRegions=$optOutContactConsentRequirementRegions, regions=$regions, ]';
  }

  ProfileRegions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['noticeContactConsentRequirementRegions'] == null) {
      noticeContactConsentRequirementRegions = null;
    } else {
      noticeContactConsentRequirementRegions = (json['noticeContactConsentRequirementRegions'] as List).cast<String>();
    }
    if (json['optOutContactConsentRequirementRegions'] == null) {
      optOutContactConsentRequirementRegions = null;
    } else {
      optOutContactConsentRequirementRegions = (json['optOutContactConsentRequirementRegions'] as List).cast<String>();
    }
    if (json['regions'] == null) {
      regions = null;
    } else {
      regions = ProfileRegion.listFromJson(json['regions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (noticeContactConsentRequirementRegions != null)
      json['noticeContactConsentRequirementRegions'] = noticeContactConsentRequirementRegions;
    if (optOutContactConsentRequirementRegions != null)
      json['optOutContactConsentRequirementRegions'] = optOutContactConsentRequirementRegions;
    if (regions != null)
      json['regions'] = regions;
    return json;
  }

  static List<ProfileRegions> listFromJson(List<dynamic> json) {
    return json == null ? List<ProfileRegions>() : json.map((value) => ProfileRegions.fromJson(value)).toList();
  }

  static Map<String, ProfileRegions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProfileRegions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProfileRegions.fromJson(value));
    }
    return map;
  }
}

