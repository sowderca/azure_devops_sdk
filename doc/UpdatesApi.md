# azure_devops_sdk.api.UpdatesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](UpdatesApi.md#callGet) | **GET** /{organization}/{project}/_apis/wit/workItems/{id}/updates/{updateNumber} | 
[**list**](UpdatesApi.md#list) | **GET** /{organization}/{project}/_apis/wit/workItems/{id}/updates | 


# **callGet**
> WorkItemUpdate callGet(organization, id, updateNumber, project, apiVersion)



Returns a single update for a work item

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UpdatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | 
var updateNumber = 56; // int | 
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, id, updateNumber, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling UpdatesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | **int**|  | [default to null]
 **updateNumber** | **int**|  | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**WorkItemUpdate**](WorkItemUpdate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<WorkItemUpdate> list(organization, id, project, apiVersion, $top, $skip)



Returns a the deltas between work item revisions

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UpdatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | 
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $top = 56; // int | 
var $skip = 56; // int | 

try { 
    var result = api_instance.list(organization, id, project, apiVersion, $top, $skip);
    print(result);
} catch (e) {
    print("Exception when calling UpdatesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | **int**|  | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$top** | **int**|  | [optional] [default to null]
 **$skip** | **int**|  | [optional] [default to null]

### Return type

[**List<WorkItemUpdate>**](WorkItemUpdate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

