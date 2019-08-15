# azure_devops_sdk.api.TaskgroupsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](TaskgroupsApi.md#add) | **POST** /{organization}/{project}/_apis/distributedtask/taskgroups | 
[**delete**](TaskgroupsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/distributedtask/taskgroups/{taskGroupId} | 
[**list**](TaskgroupsApi.md#list) | **GET** /{organization}/{project}/_apis/distributedtask/taskgroups/{taskGroupId} | 
[**update**](TaskgroupsApi.md#update) | **PUT** /{organization}/{project}/_apis/distributedtask/taskgroups/{taskGroupId} | 


# **add**
> TaskGroup add(organization, project, apiVersion, body)



Create a task group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TaskgroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TaskGroupCreateParameter(); // TaskGroupCreateParameter | Task group object to create.

try { 
    var result = api_instance.add(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TaskgroupsApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TaskGroupCreateParameter**](TaskGroupCreateParameter.md)| Task group object to create. | 

### Return type

[**TaskGroup**](TaskGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, taskGroupId, apiVersion, comment)



Delete a task group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TaskgroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var taskGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the task group to be deleted.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var comment = comment_example; // String | Comments to delete.

try { 
    api_instance.delete(organization, project, taskGroupId, apiVersion, comment);
} catch (e) {
    print("Exception when calling TaskgroupsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **taskGroupId** | [**String**](.md)| Id of the task group to be deleted. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **comment** | **String**| Comments to delete. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<TaskGroup> list(organization, project, taskGroupId, apiVersion, expanded, taskIdFilter, deleted, $top, continuationToken, queryOrder)



List task groups.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TaskgroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var taskGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the task group.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var expanded = true; // bool | 'true' to recursively expand task groups. Default is 'false'.
var taskIdFilter = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Guid of the taskId to filter.
var deleted = true; // bool | 'true'to include deleted task groups. Default is 'false'.
var $top = 56; // int | Number of task groups to get.
var continuationToken = 2013-10-20T19:20:30+01:00; // DateTime | Gets the task groups after the continuation token provided.
var queryOrder = queryOrder_example; // String | Gets the results in the defined order. Default is 'CreatedOnDescending'.

try { 
    var result = api_instance.list(organization, project, taskGroupId, apiVersion, expanded, taskIdFilter, deleted, $top, continuationToken, queryOrder);
    print(result);
} catch (e) {
    print("Exception when calling TaskgroupsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **taskGroupId** | [**String**](.md)| Id of the task group. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **expanded** | **bool**| &#39;true&#39; to recursively expand task groups. Default is &#39;false&#39;. | [optional] [default to null]
 **taskIdFilter** | [**String**](.md)| Guid of the taskId to filter. | [optional] [default to null]
 **deleted** | **bool**| &#39;true&#39;to include deleted task groups. Default is &#39;false&#39;. | [optional] [default to null]
 **$top** | **int**| Number of task groups to get. | [optional] [default to null]
 **continuationToken** | **DateTime**| Gets the task groups after the continuation token provided. | [optional] [default to null]
 **queryOrder** | **String**| Gets the results in the defined order. Default is &#39;CreatedOnDescending&#39;. | [optional] [default to null]

### Return type

[**List<TaskGroup>**](TaskGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> TaskGroup update(organization, project, taskGroupId, apiVersion, body)



Update a task group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TaskgroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var taskGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the task group to update.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TaskGroupUpdateParameter(); // TaskGroupUpdateParameter | Task group to update.

try { 
    var result = api_instance.update(organization, project, taskGroupId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TaskgroupsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **taskGroupId** | [**String**](.md)| Id of the task group to update. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TaskGroupUpdateParameter**](TaskGroupUpdateParameter.md)| Task group to update. | 

### Return type

[**TaskGroup**](TaskGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

