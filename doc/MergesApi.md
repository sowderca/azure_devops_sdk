# azure_devops_sdk.api.MergesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](MergesApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/merges/{mergeOperationId} | 
[**create**](MergesApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/merges | 


# **callGet**
> GitMerge callGet(organization, project, repositoryNameOrId, mergeOperationId, apiVersion, includeLinks)



Get a specific merge operation's details.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MergesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repositoryNameOrId = repositoryNameOrId_example; // String | The name or ID of the repository.
var mergeOperationId = 56; // int | OperationId of the merge request.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeLinks = true; // bool | True to include links

try { 
    var result = api_instance.callGet(organization, project, repositoryNameOrId, mergeOperationId, apiVersion, includeLinks);
    print(result);
} catch (e) {
    print("Exception when calling MergesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repositoryNameOrId** | **String**| The name or ID of the repository. | [default to null]
 **mergeOperationId** | **int**| OperationId of the merge request. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeLinks** | **bool**| True to include links | [optional] [default to null]

### Return type

[**GitMerge**](GitMerge.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> GitMerge create(organization, project, repositoryNameOrId, apiVersion, body, includeLinks)



Request a git merge operation. Currently we support merging only 2 commits.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MergesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repositoryNameOrId = repositoryNameOrId_example; // String | The name or ID of the repository.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GitMergeParameters(); // GitMergeParameters | Parents commitIds and merge commit messsage.
var includeLinks = true; // bool | True to include links

try { 
    var result = api_instance.create(organization, project, repositoryNameOrId, apiVersion, body, includeLinks);
    print(result);
} catch (e) {
    print("Exception when calling MergesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repositoryNameOrId** | **String**| The name or ID of the repository. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitMergeParameters**](GitMergeParameters.md)| Parents commitIds and merge commit messsage. | 
 **includeLinks** | **bool**| True to include links | [optional] [default to null]

### Return type

[**GitMerge**](GitMerge.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

