part of azure_devops_sdk.api;

class CreateProfileContext {
  
  Map<String, Object> ciData = {};
  
  bool contactWithOffers = null;
  
  String countryName = null;
  
  String displayName = null;
  
  String emailAddress = null;
  
  bool hasAccount = null;
  
  String language = null;
  
  String phoneNumber = null;
  /* The current state of the profile. */
  String profileState = null;
  //enum profileStateEnum {  custom,  customReadOnly,  readOnly,  };{
  CreateProfileContext();

  @override
  String toString() {
    return 'CreateProfileContext[ciData=$ciData, contactWithOffers=$contactWithOffers, countryName=$countryName, displayName=$displayName, emailAddress=$emailAddress, hasAccount=$hasAccount, language=$language, phoneNumber=$phoneNumber, profileState=$profileState, ]';
  }

  CreateProfileContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ciData'] == null) {
      ciData = null;
    } else {
      ciData = Object.mapFromJson(json['ciData']);
    }
    if (json['contactWithOffers'] == null) {
      contactWithOffers = null;
    } else {
          contactWithOffers = json['contactWithOffers'];
    }
    if (json['countryName'] == null) {
      countryName = null;
    } else {
          countryName = json['countryName'];
    }
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['emailAddress'] == null) {
      emailAddress = null;
    } else {
          emailAddress = json['emailAddress'];
    }
    if (json['hasAccount'] == null) {
      hasAccount = null;
    } else {
          hasAccount = json['hasAccount'];
    }
    if (json['language'] == null) {
      language = null;
    } else {
          language = json['language'];
    }
    if (json['phoneNumber'] == null) {
      phoneNumber = null;
    } else {
          phoneNumber = json['phoneNumber'];
    }
    if (json['profileState'] == null) {
      profileState = null;
    } else {
          profileState = json['profileState'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ciData != null)
      json['ciData'] = ciData;
    if (contactWithOffers != null)
      json['contactWithOffers'] = contactWithOffers;
    if (countryName != null)
      json['countryName'] = countryName;
    if (displayName != null)
      json['displayName'] = displayName;
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    if (hasAccount != null)
      json['hasAccount'] = hasAccount;
    if (language != null)
      json['language'] = language;
    if (phoneNumber != null)
      json['phoneNumber'] = phoneNumber;
    if (profileState != null)
      json['profileState'] = profileState;
    return json;
  }

  static List<CreateProfileContext> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateProfileContext>() : json.map((value) => CreateProfileContext.fromJson(value)).toList();
  }

  static Map<String, CreateProfileContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateProfileContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateProfileContext.fromJson(value));
    }
    return map;
  }
}

