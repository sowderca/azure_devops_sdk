# azure_devops_sdk.api.PullRequestLabelsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](PullRequestLabelsApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/labels/{labelIdOrName} | 
[**create**](PullRequestLabelsApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/labels | 
[**delete**](PullRequestLabelsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/labels/{labelIdOrName} | 
[**list**](PullRequestLabelsApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/labels | 


# **callGet**
> WebApiTagDefinition callGet(organization, repositoryId, pullRequestId, labelIdOrName, project, apiVersion, projectId)



Retrieves a single label that has been assigned to a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestLabelsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull requestâs target branch.
var pullRequestId = 56; // int | ID of the pull request.
var labelIdOrName = labelIdOrName_example; // String | The name or ID of the label requested.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var projectId = projectId_example; // String | Project ID or project name.

try { 
    var result = api_instance.callGet(organization, repositoryId, pullRequestId, labelIdOrName, project, apiVersion, projectId);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestLabelsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull requestâs target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **labelIdOrName** | **String**| The name or ID of the label requested. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **projectId** | **String**| Project ID or project name. | [optional] [default to null]

### Return type

[**WebApiTagDefinition**](WebApiTagDefinition.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> WebApiTagDefinition create(organization, repositoryId, pullRequestId, project, apiVersion, body, projectId)



Create a label for a specified pull request. The only required field is the name of the new label.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestLabelsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull requestâs target branch.
var pullRequestId = 56; // int | ID of the pull request.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = WebApiCreateTagRequestData(); // WebApiCreateTagRequestData | Label to assign to the pull request.
var projectId = projectId_example; // String | Project ID or project name.

try { 
    var result = api_instance.create(organization, repositoryId, pullRequestId, project, apiVersion, body, projectId);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestLabelsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull requestâs target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**WebApiCreateTagRequestData**](WebApiCreateTagRequestData.md)| Label to assign to the pull request. | 
 **projectId** | **String**| Project ID or project name. | [optional] [default to null]

### Return type

[**WebApiTagDefinition**](WebApiTagDefinition.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, repositoryId, pullRequestId, labelIdOrName, project, apiVersion, projectId)



Removes a label from the set of those assigned to the pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestLabelsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull requestâs target branch.
var pullRequestId = 56; // int | ID of the pull request.
var labelIdOrName = labelIdOrName_example; // String | The name or ID of the label requested.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var projectId = projectId_example; // String | Project ID or project name.

try { 
    api_instance.delete(organization, repositoryId, pullRequestId, labelIdOrName, project, apiVersion, projectId);
} catch (e) {
    print("Exception when calling PullRequestLabelsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull requestâs target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **labelIdOrName** | **String**| The name or ID of the label requested. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **projectId** | **String**| Project ID or project name. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<WebApiTagDefinition> list(organization, repositoryId, pullRequestId, project, apiVersion, projectId)



Get all the labels assigned to a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestLabelsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull requestâs target branch.
var pullRequestId = 56; // int | ID of the pull request.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var projectId = projectId_example; // String | Project ID or project name.

try { 
    var result = api_instance.list(organization, repositoryId, pullRequestId, project, apiVersion, projectId);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestLabelsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull requestâs target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **projectId** | **String**| Project ID or project name. | [optional] [default to null]

### Return type

[**List<WebApiTagDefinition>**](WebApiTagDefinition.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

