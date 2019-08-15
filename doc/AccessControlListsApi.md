# azure_devops_sdk.api.AccessControlListsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**query**](AccessControlListsApi.md#query) | **GET** /{organization}/_apis/accesscontrollists/{securityNamespaceId} | 
[**remove Access Control Lists**](AccessControlListsApi.md#remove Access Control Lists) | **DELETE** /{organization}/_apis/accesscontrollists/{securityNamespaceId} | 
[**set Access Control Lists**](AccessControlListsApi.md#set Access Control Lists) | **POST** /{organization}/_apis/accesscontrollists/{securityNamespaceId} | 


# **query**
> List<AccessControlList> query(securityNamespaceId, organization, apiVersion, token, descriptors, includeExtendedInfo, recurse)



Return a list of access control lists for the specified security namespace and token. All ACLs in the security namespace will be retrieved if no optional parameters are provided.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = AccessControlListsApi();
var securityNamespaceId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Security namespace identifier.
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var token = token_example; // String | Security token
var descriptors = descriptors_example; // String | An optional filter string containing a list of identity descriptors separated by ',' whose ACEs should be retrieved. If this is left null, entire ACLs will be returned.
var includeExtendedInfo = true; // bool | If true, populate the extended information properties for the access control entries contained in the returned lists.
var recurse = true; // bool | If true and this is a hierarchical namespace, return child ACLs of the specified token.

try { 
    var result = api_instance.query(securityNamespaceId, organization, apiVersion, token, descriptors, includeExtendedInfo, recurse);
    print(result);
} catch (e) {
    print("Exception when calling AccessControlListsApi->query: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **securityNamespaceId** | [**String**](.md)| Security namespace identifier. | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **token** | **String**| Security token | [optional] [default to null]
 **descriptors** | **String**| An optional filter string containing a list of identity descriptors separated by &#39;,&#39; whose ACEs should be retrieved. If this is left null, entire ACLs will be returned. | [optional] [default to null]
 **includeExtendedInfo** | **bool**| If true, populate the extended information properties for the access control entries contained in the returned lists. | [optional] [default to null]
 **recurse** | **bool**| If true and this is a hierarchical namespace, return child ACLs of the specified token. | [optional] [default to null]

### Return type

[**List<AccessControlList>**](AccessControlList.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove Access Control Lists**
> bool remove Access Control Lists(securityNamespaceId, organization, apiVersion, tokens, recurse)



Remove access control lists under the specfied security namespace.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AccessControlListsApi();
var securityNamespaceId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Security namespace identifier.
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var tokens = tokens_example; // String | One or more comma-separated security tokens
var recurse = true; // bool | If true and this is a hierarchical namespace, also remove child ACLs of the specified tokens.

try { 
    var result = api_instance.remove Access Control Lists(securityNamespaceId, organization, apiVersion, tokens, recurse);
    print(result);
} catch (e) {
    print("Exception when calling AccessControlListsApi->remove Access Control Lists: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **securityNamespaceId** | [**String**](.md)| Security namespace identifier. | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **tokens** | **String**| One or more comma-separated security tokens | [optional] [default to null]
 **recurse** | **bool**| If true and this is a hierarchical namespace, also remove child ACLs of the specified tokens. | [optional] [default to null]

### Return type

**bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set Access Control Lists**
> set Access Control Lists(securityNamespaceId, organization, apiVersion, body)



Create or update one or more access control lists. All data that currently exists for the ACLs supplied will be overwritten.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AccessControlListsApi();
var securityNamespaceId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Security namespace identifier.
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = VssJsonCollectionWrapper(); // VssJsonCollectionWrapper | A list of ACLs to create or update.

try { 
    api_instance.set Access Control Lists(securityNamespaceId, organization, apiVersion, body);
} catch (e) {
    print("Exception when calling AccessControlListsApi->set Access Control Lists: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **securityNamespaceId** | [**String**](.md)| Security namespace identifier. | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**VssJsonCollectionWrapper**](VssJsonCollectionWrapper.md)| A list of ACLs to create or update. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

