# azure_devops_sdk.api.WorkItemIconsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](WorkItemIconsApi.md#callGet) | **GET** /{organization}/_apis/wit/workitemicons/{icon} | 
[**list**](WorkItemIconsApi.md#list) | **GET** /{organization}/_apis/wit/workitemicons | 


# **callGet**
> WorkItemIcon callGet(icon, organization, apiVersion, color, v)



Get a work item icon given the friendly name and icon color.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = WorkItemIconsApi();
var icon = icon_example; // String | The name of the icon
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var color = color_example; // String | The 6-digit hex color for the icon
var v = 56; // int | The version of the icon (used only for cache invalidation)

try { 
    var result = api_instance.callGet(icon, organization, apiVersion, color, v);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemIconsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icon** | **String**| The name of the icon | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **color** | **String**| The 6-digit hex color for the icon | [optional] [default to null]
 **v** | **int**| The version of the icon (used only for cache invalidation) | [optional] [default to null]

### Return type

[**WorkItemIcon**](WorkItemIcon.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/svg+xml, image/xaml+xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<WorkItemIcon> list(organization, apiVersion)



Get a list of all work item icons.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = WorkItemIconsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemIconsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<WorkItemIcon>**](WorkItemIcon.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

