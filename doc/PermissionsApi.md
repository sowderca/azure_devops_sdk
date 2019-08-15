# azure_devops_sdk.api.PermissionsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**has Permissions**](PermissionsApi.md#has Permissions) | **GET** /{organization}/_apis/permissions/{securityNamespaceId}/{permissions} | 
[**has Permissions Batch**](PermissionsApi.md#has Permissions Batch) | **POST** /{organization}/_apis/security/permissionevaluationbatch | 
[**remove Permission**](PermissionsApi.md#remove Permission) | **DELETE** /{organization}/_apis/permissions/{securityNamespaceId}/{permissions} | 


# **has Permissions**
> List<bool> has Permissions(securityNamespaceId, organization, permissions, apiVersion, tokens, alwaysAllowAdministrators, delimiter)



Evaluates whether the caller has the specified permissions on the specified set of security tokens.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = PermissionsApi();
var securityNamespaceId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Security namespace identifier.
var organization = organization_example; // String | The name of the Azure DevOps organization.
var permissions = 56; // int | Permissions to evaluate.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var tokens = tokens_example; // String | One or more security tokens to evaluate.
var alwaysAllowAdministrators = true; // bool | If true and if the caller is an administrator, always return true.
var delimiter = delimiter_example; // String | Optional security token separator. Defaults to \",\".

try { 
    var result = api_instance.has Permissions(securityNamespaceId, organization, permissions, apiVersion, tokens, alwaysAllowAdministrators, delimiter);
    print(result);
} catch (e) {
    print("Exception when calling PermissionsApi->has Permissions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **securityNamespaceId** | [**String**](.md)| Security namespace identifier. | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **permissions** | **int**| Permissions to evaluate. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **tokens** | **String**| One or more security tokens to evaluate. | [optional] [default to null]
 **alwaysAllowAdministrators** | **bool**| If true and if the caller is an administrator, always return true. | [optional] [default to null]
 **delimiter** | **String**| Optional security token separator. Defaults to \&quot;,\&quot;. | [optional] [default to null]

### Return type

**List<bool>**

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **has Permissions Batch**
> PermissionEvaluationBatch has Permissions Batch(organization, apiVersion, body)



Evaluates multiple permissions for the calling user.  Note: This method does not aggregate the results, nor does it short-circuit if one of the permissions evaluates to false.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = PermissionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = PermissionEvaluationBatch(); // PermissionEvaluationBatch | The set of evaluation requests.

try { 
    var result = api_instance.has Permissions Batch(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PermissionsApi->has Permissions Batch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**PermissionEvaluationBatch**](PermissionEvaluationBatch.md)| The set of evaluation requests. | 

### Return type

[**PermissionEvaluationBatch**](PermissionEvaluationBatch.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove Permission**
> AccessControlEntry remove Permission(securityNamespaceId, descriptor, organization, permissions, apiVersion, token)



Removes the specified permissions on a security token for a user or group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PermissionsApi();
var securityNamespaceId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Security namespace identifier.
var descriptor = descriptor_example; // String | Identity descriptor of the user to remove permissions for.
var organization = organization_example; // String | The name of the Azure DevOps organization.
var permissions = 56; // int | Permissions to remove.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var token = token_example; // String | Security token to remove permissions for.

try { 
    var result = api_instance.remove Permission(securityNamespaceId, descriptor, organization, permissions, apiVersion, token);
    print(result);
} catch (e) {
    print("Exception when calling PermissionsApi->remove Permission: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **securityNamespaceId** | [**String**](.md)| Security namespace identifier. | [default to null]
 **descriptor** | **String**| Identity descriptor of the user to remove permissions for. | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **permissions** | **int**| Permissions to remove. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **token** | **String**| Security token to remove permissions for. | [optional] [default to null]

### Return type

[**AccessControlEntry**](AccessControlEntry.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

