# azure_devops_sdk.api.TokenListGlobalIdentitiesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TokenListGlobalIdentitiesApi.md#list) | **POST** /_apis/tokenadministration/tokenlistglobalidentities | 


# **list**
> list(apiVersion, body, isPublic)



Revokes the listed OAuth authorizations.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TokenListGlobalIdentitiesApi();
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = [List&lt;TokenAdminRevocation&gt;()]; // List<TokenAdminRevocation> | The list of identities containing the authorization IDs of the OAuth authorizations, such as session tokens retrieved by listed a users PATs, that should be checked for global access tokens.
var isPublic = true; // bool | Set to false for PAT tokens and true for SSH tokens.

try { 
    api_instance.list(apiVersion, body, isPublic);
} catch (e) {
    print("Exception when calling TokenListGlobalIdentitiesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;TokenAdminRevocation&gt;**](TokenAdminRevocation.md)| The list of identities containing the authorization IDs of the OAuth authorizations, such as session tokens retrieved by listed a users PATs, that should be checked for global access tokens. | 
 **isPublic** | **bool**| Set to false for PAT tokens and true for SSH tokens. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

