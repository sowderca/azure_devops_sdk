# azure_devops_sdk.api.ForksApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create fork sync request**](ForksApi.md#create fork sync request) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/forkSyncRequests | 
[**get Fork Sync Requests**](ForksApi.md#get Fork Sync Requests) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/forkSyncRequests | 
[**get fork sync request**](ForksApi.md#get fork sync request) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/forkSyncRequests/{forkSyncOperationId} | 
[**list**](ForksApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/forks/{collectionId} | 


# **create fork sync request**
> GitForkSyncRequest create fork sync request(organization, repositoryNameOrId, project, apiVersion, body, includeLinks)



Request that another repository's refs be fetched into this one. It syncs two existing forks. To create a fork, please see the <a href=\"https://docs.microsoft.com/en-us/rest/api/vsts/git/repositories/create?view=azure-devops-rest-5.1\"> repositories endpoint</a>

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ForksApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryNameOrId = repositoryNameOrId_example; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GitForkSyncRequestParameters(); // GitForkSyncRequestParameters | Source repository and ref mapping.
var includeLinks = true; // bool | True to include links

try { 
    var result = api_instance.create fork sync request(organization, repositoryNameOrId, project, apiVersion, body, includeLinks);
    print(result);
} catch (e) {
    print("Exception when calling ForksApi->create fork sync request: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryNameOrId** | **String**| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitForkSyncRequestParameters**](GitForkSyncRequestParameters.md)| Source repository and ref mapping. | 
 **includeLinks** | **bool**| True to include links | [optional] [default to null]

### Return type

[**GitForkSyncRequest**](GitForkSyncRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Fork Sync Requests**
> List<GitForkSyncRequest> get Fork Sync Requests(organization, repositoryNameOrId, project, apiVersion, includeAbandoned, includeLinks)



Retrieve all requested fork sync operations on this repository.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ForksApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryNameOrId = repositoryNameOrId_example; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeAbandoned = true; // bool | True to include abandoned requests.
var includeLinks = true; // bool | True to include links.

try { 
    var result = api_instance.get Fork Sync Requests(organization, repositoryNameOrId, project, apiVersion, includeAbandoned, includeLinks);
    print(result);
} catch (e) {
    print("Exception when calling ForksApi->get Fork Sync Requests: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryNameOrId** | **String**| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeAbandoned** | **bool**| True to include abandoned requests. | [optional] [default to null]
 **includeLinks** | **bool**| True to include links. | [optional] [default to null]

### Return type

[**List<GitForkSyncRequest>**](GitForkSyncRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get fork sync request**
> GitForkSyncRequest get fork sync request(organization, repositoryNameOrId, forkSyncOperationId, project, apiVersion, includeLinks)



Get a specific fork sync operation's details.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ForksApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryNameOrId = repositoryNameOrId_example; // String | The name or ID of the repository.
var forkSyncOperationId = 56; // int | OperationId of the sync request.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeLinks = true; // bool | True to include links.

try { 
    var result = api_instance.get fork sync request(organization, repositoryNameOrId, forkSyncOperationId, project, apiVersion, includeLinks);
    print(result);
} catch (e) {
    print("Exception when calling ForksApi->get fork sync request: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryNameOrId** | **String**| The name or ID of the repository. | [default to null]
 **forkSyncOperationId** | **int**| OperationId of the sync request. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeLinks** | **bool**| True to include links. | [optional] [default to null]

### Return type

[**GitForkSyncRequest**](GitForkSyncRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<GitRepositoryRef> list(organization, repositoryNameOrId, collectionId, project, apiVersion, includeLinks)



Retrieve all forks of a repository in the collection.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ForksApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryNameOrId = repositoryNameOrId_example; // String | The name or ID of the repository.
var collectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Team project collection ID.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeLinks = true; // bool | True to include links.

try { 
    var result = api_instance.list(organization, repositoryNameOrId, collectionId, project, apiVersion, includeLinks);
    print(result);
} catch (e) {
    print("Exception when calling ForksApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryNameOrId** | **String**| The name or ID of the repository. | [default to null]
 **collectionId** | [**String**](.md)| Team project collection ID. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeLinks** | **bool**| True to include links. | [optional] [default to null]

### Return type

[**List<GitRepositoryRef>**](GitRepositoryRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

