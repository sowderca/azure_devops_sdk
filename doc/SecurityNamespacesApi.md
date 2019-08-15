# azure_devops_sdk.api.SecurityNamespacesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**query**](SecurityNamespacesApi.md#query) | **GET** /{organization}/_apis/securitynamespaces/{securityNamespaceId} | 


# **query**
> List<SecurityNamespaceDescription> query(organization, securityNamespaceId, apiVersion, localOnly)



List all security namespaces or just the specified namespace.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SecurityNamespacesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var securityNamespaceId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Security namespace identifier.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var localOnly = true; // bool | If true, retrieve only local security namespaces.

try { 
    var result = api_instance.query(organization, securityNamespaceId, apiVersion, localOnly);
    print(result);
} catch (e) {
    print("Exception when calling SecurityNamespacesApi->query: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **securityNamespaceId** | [**String**](.md)| Security namespace identifier. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **localOnly** | **bool**| If true, retrieve only local security namespaces. | [optional] [default to null]

### Return type

[**List<SecurityNamespaceDescription>**](SecurityNamespaceDescription.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

