# azure_devops_sdk.api.TokenRevocationsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**revoke Authorizations**](TokenRevocationsApi.md#revoke Authorizations) | **POST** /_apis/tokenadministration/tokenrevocations | 


# **revoke Authorizations**
> revoke Authorizations(hostId, apiVersion, body, isPublic)



Revokes the listed OAuth authorizations.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TokenRevocationsApi();
var hostId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Host Id to display on the notification page to manage tokens.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TokenAdministrationRevocation(); // TokenAdministrationRevocation | The list of objects containing the authorization IDs of the OAuth authorizations, such as session tokens retrieved by listed a users PATs, that should be revoked.
var isPublic = true; // bool | Set to false for PAT tokens and true for SSH tokens.

try { 
    api_instance.revoke Authorizations(hostId, apiVersion, body, isPublic);
} catch (e) {
    print("Exception when calling TokenRevocationsApi->revoke Authorizations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hostId** | [**String**](.md)| Host Id to display on the notification page to manage tokens. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TokenAdministrationRevocation**](TokenAdministrationRevocation.md)| The list of objects containing the authorization IDs of the OAuth authorizations, such as session tokens retrieved by listed a users PATs, that should be revoked. | 
 **isPublic** | **bool**| Set to false for PAT tokens and true for SSH tokens. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

