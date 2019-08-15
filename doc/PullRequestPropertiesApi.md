# azure_devops_sdk.api.PullRequestPropertiesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](PullRequestPropertiesApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/properties | 
[**update**](PullRequestPropertiesApi.md#update) | **PATCH** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/properties | 


# **list**
> PropertiesCollection list(organization, repositoryId, pullRequestId, project, apiVersion)



Get external properties of the pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestPropertiesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull requestâs target branch.
var pullRequestId = 56; // int | ID of the pull request.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, repositoryId, pullRequestId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestPropertiesApi->list: $e\n");
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

### Return type

[**PropertiesCollection**](PropertiesCollection.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> PropertiesCollection update(organization, repositoryId, pullRequestId, project, apiVersion, body)



Create or update pull request external properties. The patch operation can be `add`, `replace` or `remove`. For `add` operation, the path can be empty. If the path is empty, the value must be a list of key value pairs. For `replace` operation, the path cannot be empty. If the path does not exist, the property will be added to the collection. For `remove` operation, the path cannot be empty. If the path does not exist, no action will be performed.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestPropertiesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull requestâs target branch.
var pullRequestId = 56; // int | ID of the pull request.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = JsonPatchDocument(); // JsonPatchDocument | Properties to add, replace or remove in JSON Patch format.

try { 
    var result = api_instance.update(organization, repositoryId, pullRequestId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestPropertiesApi->update: $e\n");
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
 **body** | [**JsonPatchDocument**](JsonPatchDocument.md)| Properties to add, replace or remove in JSON Patch format. | 

### Return type

[**PropertiesCollection**](PropertiesCollection.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

