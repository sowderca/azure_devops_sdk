# azure_devops_sdk.api.RevisionsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](RevisionsApi.md#callGet) | **GET** /{organization}/{project}/_apis/policy/configurations/{configurationId}/revisions/{revisionId} | 
[**callGet_0**](RevisionsApi.md#callGet_0) | **GET** /{organization}/{project}/_apis/wit/workItems/{id}/revisions/{revisionNumber} | 
[**list**](RevisionsApi.md#list) | **GET** /{organization}/{project}/_apis/policy/configurations/{configurationId}/revisions | 
[**list_0**](RevisionsApi.md#list_0) | **GET** /{organization}/{project}/_apis/wit/workItems/{id}/revisions | 


# **callGet**
> PolicyConfiguration callGet(organization, project, configurationId, revisionId, apiVersion)



Retrieve a specific revision of a given policy by ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RevisionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var configurationId = 56; // int | The policy configuration ID.
var revisionId = 56; // int | The revision ID.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, configurationId, revisionId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RevisionsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **configurationId** | **int**| The policy configuration ID. | [default to null]
 **revisionId** | **int**| The revision ID. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**PolicyConfiguration**](PolicyConfiguration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> WorkItem callGet_0(organization, id, revisionNumber, project, apiVersion, $expand)



Returns a fully hydrated work item for the requested revision

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RevisionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | 
var revisionNumber = 56; // int | 
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $expand = $expand_example; // String | 

try { 
    var result = api_instance.callGet_0(organization, id, revisionNumber, project, apiVersion, $expand);
    print(result);
} catch (e) {
    print("Exception when calling RevisionsApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | **int**|  | [default to null]
 **revisionNumber** | **int**|  | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$expand** | **String**|  | [optional] [default to null]

### Return type

[**WorkItem**](WorkItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<PolicyConfiguration> list(organization, project, configurationId, apiVersion, $top, $skip)



Retrieve all revisions for a given policy.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RevisionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var configurationId = 56; // int | The policy configuration ID.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $top = 56; // int | The number of revisions to retrieve.
var $skip = 56; // int | The number of revisions to ignore. For example, to retrieve results 101-150, set top to 50 and skip to 100.

try { 
    var result = api_instance.list(organization, project, configurationId, apiVersion, $top, $skip);
    print(result);
} catch (e) {
    print("Exception when calling RevisionsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **configurationId** | **int**| The policy configuration ID. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$top** | **int**| The number of revisions to retrieve. | [optional] [default to null]
 **$skip** | **int**| The number of revisions to ignore. For example, to retrieve results 101-150, set top to 50 and skip to 100. | [optional] [default to null]

### Return type

[**List<PolicyConfiguration>**](PolicyConfiguration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_0**
> List<WorkItem> list_0(organization, id, project, apiVersion, $top, $skip, $expand)



Returns the list of fully hydrated work item revisions, paged.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RevisionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | 
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $top = 56; // int | 
var $skip = 56; // int | 
var $expand = $expand_example; // String | 

try { 
    var result = api_instance.list_0(organization, id, project, apiVersion, $top, $skip, $expand);
    print(result);
} catch (e) {
    print("Exception when calling RevisionsApi->list_0: $e\n");
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
 **$expand** | **String**|  | [optional] [default to null]

### Return type

[**List<WorkItem>**](WorkItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

