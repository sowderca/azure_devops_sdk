part of azure_devops_sdk.api;

class AccessLevel {
  /* Type of Account License (e.g. Express, Stakeholder etc.) */
  String accountLicenseType = null;
  //enum accountLicenseTypeEnum {  none,  earlyAdopter,  express,  professional,  advanced,  stakeholder,  };{
  /* Assignment Source of the License (e.g. Group, Unknown etc. */
  String assignmentSource = null;
  //enum assignmentSourceEnum {  none,  unknown,  groupRule,  };{
  /* Display name of the License */
  String licenseDisplayName = null;
  /* Licensing Source (e.g. Account. MSDN etc.) */
  String licensingSource = null;
  //enum licensingSourceEnum {  none,  account,  msdn,  profile,  auto,  trial,  };{
  /* Type of MSDN License (e.g. Visual Studio Professional, Visual Studio Enterprise etc.) */
  String msdnLicenseType = null;
  //enum msdnLicenseTypeEnum {  none,  eligible,  professional,  platforms,  testProfessional,  premium,  ultimate,  enterprise,  };{
  /* User status in the account */
  String status = null;
  //enum statusEnum {  none,  active,  disabled,  deleted,  pending,  expired,  pendingDisabled,  };{
  /* Status message. */
  String statusMessage = null;
  AccessLevel();

  @override
  String toString() {
    return 'AccessLevel[accountLicenseType=$accountLicenseType, assignmentSource=$assignmentSource, licenseDisplayName=$licenseDisplayName, licensingSource=$licensingSource, msdnLicenseType=$msdnLicenseType, status=$status, statusMessage=$statusMessage, ]';
  }

  AccessLevel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accountLicenseType'] == null) {
      accountLicenseType = null;
    } else {
          accountLicenseType = json['accountLicenseType'];
    }
    if (json['assignmentSource'] == null) {
      assignmentSource = null;
    } else {
          assignmentSource = json['assignmentSource'];
    }
    if (json['licenseDisplayName'] == null) {
      licenseDisplayName = null;
    } else {
          licenseDisplayName = json['licenseDisplayName'];
    }
    if (json['licensingSource'] == null) {
      licensingSource = null;
    } else {
          licensingSource = json['licensingSource'];
    }
    if (json['msdnLicenseType'] == null) {
      msdnLicenseType = null;
    } else {
          msdnLicenseType = json['msdnLicenseType'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['statusMessage'] == null) {
      statusMessage = null;
    } else {
          statusMessage = json['statusMessage'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accountLicenseType != null)
      json['accountLicenseType'] = accountLicenseType;
    if (assignmentSource != null)
      json['assignmentSource'] = assignmentSource;
    if (licenseDisplayName != null)
      json['licenseDisplayName'] = licenseDisplayName;
    if (licensingSource != null)
      json['licensingSource'] = licensingSource;
    if (msdnLicenseType != null)
      json['msdnLicenseType'] = msdnLicenseType;
    if (status != null)
      json['status'] = status;
    if (statusMessage != null)
      json['statusMessage'] = statusMessage;
    return json;
  }

  static List<AccessLevel> listFromJson(List<dynamic> json) {
    return json == null ? List<AccessLevel>() : json.map((value) => AccessLevel.fromJson(value)).toList();
  }

  static Map<String, AccessLevel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccessLevel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccessLevel.fromJson(value));
    }
    return map;
  }
}

