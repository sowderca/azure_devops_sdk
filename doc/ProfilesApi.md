# azure_devops_sdk.api.ProfilesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ProfilesApi.md#callGet) | **GET** /_apis/profile/profiles/{id} | 


# **callGet**
> Profile callGet(id, apiVersion, details, withAttributes, partition, coreAttributes, forceRefresh)



Gets a user profile.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProfilesApi();
var id = id_example; // String | The ID of the target user profile within the same organization, or 'me' to get the profile of the current authenticated user.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var details = true; // bool | Return public profile information such as display name, email address, country, etc. If false, the withAttributes parameter is ignored.
var withAttributes = true; // bool | If true, gets the attributes (named key-value pairs of arbitrary data) associated with the profile. The partition parameter must also have a value.
var partition = partition_example; // String | The partition (named group) of attributes to return.
var coreAttributes = coreAttributes_example; // String | A comma-delimited list of core profile attributes to return. Valid values are Email, Avatar, DisplayName, and ContactWithOffers.
var forceRefresh = true; // bool | Not used in this version of the API.

try { 
    var result = api_instance.callGet(id, apiVersion, details, withAttributes, partition, coreAttributes, forceRefresh);
    print(result);
} catch (e) {
    print("Exception when calling ProfilesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the target user profile within the same organization, or &#39;me&#39; to get the profile of the current authenticated user. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **details** | **bool**| Return public profile information such as display name, email address, country, etc. If false, the withAttributes parameter is ignored. | [optional] [default to null]
 **withAttributes** | **bool**| If true, gets the attributes (named key-value pairs of arbitrary data) associated with the profile. The partition parameter must also have a value. | [optional] [default to null]
 **partition** | **String**| The partition (named group) of attributes to return. | [optional] [default to null]
 **coreAttributes** | **String**| A comma-delimited list of core profile attributes to return. Valid values are Email, Avatar, DisplayName, and ContactWithOffers. | [optional] [default to null]
 **forceRefresh** | **bool**| Not used in this version of the API. | [optional] [default to null]

### Return type

[**Profile**](Profile.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

