# azure_devops_sdk.api.QueuesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](QueuesApi.md#add) | **POST** /{organization}/{project}/_apis/distributedtask/queues | 
[**callGet**](QueuesApi.md#callGet) | **GET** /{organization}/{project}/_apis/distributedtask/queues/{queueId} | 
[**delete**](QueuesApi.md#delete) | **DELETE** /{organization}/{project}/_apis/distributedtask/queues/{queueId} | 
[**get Agent Queues By Names**](QueuesApi.md#get Agent Queues By Names) | **GET** /{organization}/{project}/_apis/distributedtask/queues | 


# **add**
> TaskAgentQueue add(organization, project, apiVersion, body, authorizePipelines)



Create a new agent queue to connect a project to an agent pool.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = QueuesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TaskAgentQueue(); // TaskAgentQueue | Details about the queue to create
var authorizePipelines = true; // bool | Automatically authorize this queue when using YAML

try { 
    var result = api_instance.add(organization, project, apiVersion, body, authorizePipelines);
    print(result);
} catch (e) {
    print("Exception when calling QueuesApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TaskAgentQueue**](TaskAgentQueue.md)| Details about the queue to create | 
 **authorizePipelines** | **bool**| Automatically authorize this queue when using YAML | [optional] [default to null]

### Return type

[**TaskAgentQueue**](TaskAgentQueue.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> TaskAgentQueue callGet(organization, queueId, project, apiVersion, actionFilter)



Get information about an agent queue.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = QueuesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var queueId = 56; // int | The agent queue to get information about
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var actionFilter = actionFilter_example; // String | Filter by whether the calling user has use or manage permissions

try { 
    var result = api_instance.callGet(organization, queueId, project, apiVersion, actionFilter);
    print(result);
} catch (e) {
    print("Exception when calling QueuesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **queueId** | **int**| The agent queue to get information about | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **actionFilter** | **String**| Filter by whether the calling user has use or manage permissions | [optional] [default to null]

### Return type

[**TaskAgentQueue**](TaskAgentQueue.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, queueId, project, apiVersion)



Removes an agent queue from a project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = QueuesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var queueId = 56; // int | The agent queue to remove
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete(organization, queueId, project, apiVersion);
} catch (e) {
    print("Exception when calling QueuesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **queueId** | **int**| The agent queue to remove | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Agent Queues By Names**
> List<TaskAgentQueue> get Agent Queues By Names(organization, queueNames, project, apiVersion, actionFilter)



Get a list of agent queues by their names

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = QueuesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var queueNames = queueNames_example; // String | A comma-separated list of agent names to retrieve
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var actionFilter = actionFilter_example; // String | Filter by whether the calling user has use or manage permissions

try { 
    var result = api_instance.get Agent Queues By Names(organization, queueNames, project, apiVersion, actionFilter);
    print(result);
} catch (e) {
    print("Exception when calling QueuesApi->get Agent Queues By Names: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **queueNames** | **String**| A comma-separated list of agent names to retrieve | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **actionFilter** | **String**| Filter by whether the calling user has use or manage permissions | [optional] [default to null]

### Return type

[**List<TaskAgentQueue>**](TaskAgentQueue.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

