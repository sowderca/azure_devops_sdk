# azure_devops_sdk.api.TokenPersonalAccessTokensApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TokenPersonalAccessTokensApi.md#list) | **POST** /_apis/tokenadministration/tokenpersonalaccesstokens/{subjectDescriptor} | 


# **list**
> TokenAdminPagedSessionTokens list(subjectDescriptor, apiVersion, body, pageSize, continuationToken, isPublic)



Lists of all the session token details of the personal access tokens (PATs) for a particular user.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TokenPersonalAccessTokensApi();
var subjectDescriptor = subjectDescriptor_example; // String | The descriptor of the target user.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = [List&lt;String&gt;()]; // List<String> | 
var pageSize = 56; // int | The maximum number of results to return on each page.
var continuationToken = continuationToken_example; // String | An opaque data blob that allows the next page of data to resume immediately after where the previous page ended. The only reliable way to know if there is more data left is the presence of a continuation token.
var isPublic = true; // bool | Set to false for PAT tokens and true for SSH tokens.

try { 
    var result = api_instance.list(subjectDescriptor, apiVersion, body, pageSize, continuationToken, isPublic);
    print(result);
} catch (e) {
    print("Exception when calling TokenPersonalAccessTokensApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subjectDescriptor** | **String**| The descriptor of the target user. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;String&gt;**](String.md)|  | 
 **pageSize** | **int**| The maximum number of results to return on each page. | [optional] [default to null]
 **continuationToken** | **String**| An opaque data blob that allows the next page of data to resume immediately after where the previous page ended. The only reliable way to know if there is more data left is the presence of a continuation token. | [optional] [default to null]
 **isPublic** | **bool**| Set to false for PAT tokens and true for SSH tokens. | [optional] [default to null]

### Return type

[**TokenAdminPagedSessionTokens**](TokenAdminPagedSessionTokens.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

