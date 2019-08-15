# azure_devops_sdk.api.PullRequestIterationStatusesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](PullRequestIterationStatusesApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/iterations/{iterationId}/statuses/{statusId} | 
[**create**](PullRequestIterationStatusesApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/iterations/{iterationId}/statuses | 
[**delete**](PullRequestIterationStatusesApi.md#delete) | **DELETE** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/iterations/{iterationId}/statuses/{statusId} | 
[**list**](PullRequestIterationStatusesApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/iterations/{iterationId}/statuses | 
[**update**](PullRequestIterationStatusesApi.md#update) | **PATCH** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/iterations/{iterationId}/statuses | 


# **callGet**
> GitPullRequestStatus callGet(organization, repositoryId, pullRequestId, iterationId, statusId, project, apiVersion)



Get the specific pull request iteration status by ID. The status ID is unique within the pull request across all iterations.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestIterationStatusesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull requestâs target branch.
var pullRequestId = 56; // int | ID of the pull request.
var iterationId = 56; // int | ID of the pull request iteration.
var statusId = 56; // int | ID of the pull request status.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, repositoryId, pullRequestId, iterationId, statusId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestIterationStatusesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull requestâs target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **iterationId** | **int**| ID of the pull request iteration. | [default to null]
 **statusId** | **int**| ID of the pull request status. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**GitPullRequestStatus**](GitPullRequestStatus.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> GitPullRequestStatus create(organization, repositoryId, pullRequestId, iterationId, project, apiVersion, body)



Create a pull request status on the iteration. This operation will have the same result as Create status on pull request with specified iteration ID in the request body.  The only required field for the status is `Context.Name` that uniquely identifies the status. Note that `iterationId` in the request body is optional since `iterationId` can be specified in the URL. A conflict between `iterationId` in the URL and `iterationId` in the request body will result in status code 400.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestIterationStatusesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull requestâs target branch.
var pullRequestId = 56; // int | ID of the pull request.
var iterationId = 56; // int | ID of the pull request iteration.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GitPullRequestStatus(); // GitPullRequestStatus | Pull request status to create.

try { 
    var result = api_instance.create(organization, repositoryId, pullRequestId, iterationId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestIterationStatusesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull requestâs target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **iterationId** | **int**| ID of the pull request iteration. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitPullRequestStatus**](GitPullRequestStatus.md)| Pull request status to create. | 

### Return type

[**GitPullRequestStatus**](GitPullRequestStatus.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, repositoryId, pullRequestId, iterationId, statusId, project, apiVersion)



Delete pull request iteration status.  You can remove multiple statuses in one call by using Update operation.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestIterationStatusesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull requestâs target branch.
var pullRequestId = 56; // int | ID of the pull request.
var iterationId = 56; // int | ID of the pull request iteration.
var statusId = 56; // int | ID of the pull request status.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete(organization, repositoryId, pullRequestId, iterationId, statusId, project, apiVersion);
} catch (e) {
    print("Exception when calling PullRequestIterationStatusesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull requestâs target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **iterationId** | **int**| ID of the pull request iteration. | [default to null]
 **statusId** | **int**| ID of the pull request status. | [default to null]
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

# **list**
> List<GitPullRequestStatus> list(organization, repositoryId, pullRequestId, iterationId, project, apiVersion)



Get all the statuses associated with a pull request iteration.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestIterationStatusesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull requestâs target branch.
var pullRequestId = 56; // int | ID of the pull request.
var iterationId = 56; // int | ID of the pull request iteration.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, repositoryId, pullRequestId, iterationId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestIterationStatusesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull requestâs target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **iterationId** | **int**| ID of the pull request iteration. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<GitPullRequestStatus>**](GitPullRequestStatus.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> update(organization, repositoryId, pullRequestId, iterationId, project, apiVersion, body)



Update pull request iteration statuses collection. The only supported operation type is `remove`.  This operation allows to delete multiple statuses in one call. The path of the `remove` operation should refer to the ID of the pull request status. For example `path=\"/1\"` refers to the pull request status with ID 1.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestIterationStatusesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull requestâs target branch.
var pullRequestId = 56; // int | ID of the pull request.
var iterationId = 56; // int | ID of the pull request iteration.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = JsonPatchDocument(); // JsonPatchDocument | Operations to apply to the pull request statuses in JSON Patch format.

try { 
    api_instance.update(organization, repositoryId, pullRequestId, iterationId, project, apiVersion, body);
} catch (e) {
    print("Exception when calling PullRequestIterationStatusesApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull requestâs target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **iterationId** | **int**| ID of the pull request iteration. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**JsonPatchDocument**](JsonPatchDocument.md)| Operations to apply to the pull request statuses in JSON Patch format. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

