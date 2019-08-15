# azure_devops_sdk.api.AccountsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](AccountsApi.md#list) | **GET** /_apis/accounts | 


# **list**
> List<Account> list(apiVersion, ownerId, memberId, properties)



Get a list of accounts for a specific owner or a specific member.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AccountsApi();
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var ownerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID for the owner of the accounts.
var memberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID for a member of the accounts.
var properties = properties_example; // String | 

try { 
    var result = api_instance.list(apiVersion, ownerId, memberId, properties);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **ownerId** | [**String**](.md)| ID for the owner of the accounts. | [optional] [default to null]
 **memberId** | [**String**](.md)| ID for a member of the accounts. | [optional] [default to null]
 **properties** | **String**|  | [optional] [default to null]

### Return type

[**List<Account>**](Account.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

