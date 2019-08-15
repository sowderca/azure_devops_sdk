# azure_devops_sdk.api.DiffsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](DiffsApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/diffs/commits | 


# **callGet**
> GitCommitDiffs callGet(organization, repositoryId, project, apiVersion, diffCommonCommit, $top, $skip, baseVersionOptions, baseVersion, baseVersionType, targetVersionOptions, targetVersion, targetVersionType)



Find the closest common commit (the merge base) between base and target commits, and get the diff between either the base and target commits or common and target commits.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DiffsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var diffCommonCommit = true; // bool | If true, diff between common and target commits. If false, diff between base and target commits.
var $top = 56; // int | Maximum number of changes to return. Defaults to 100.
var $skip = 56; // int | Number of changes to skip
var baseVersionOptions = baseVersionOptions_example; // String | Version options - Specify additional modifiers to version (e.g Previous)
var baseVersion = baseVersion_example; // String | Version string identifier (name of tag/branch, SHA1 of commit)
var baseVersionType = baseVersionType_example; // String | Version type (branch, tag, or commit). Determines how Id is interpreted
var targetVersionOptions = targetVersionOptions_example; // String | Version options - Specify additional modifiers to version (e.g Previous)
var targetVersion = targetVersion_example; // String | Version string identifier (name of tag/branch, SHA1 of commit)
var targetVersionType = targetVersionType_example; // String | Version type (branch, tag, or commit). Determines how Id is interpreted

try { 
    var result = api_instance.callGet(organization, repositoryId, project, apiVersion, diffCommonCommit, $top, $skip, baseVersionOptions, baseVersion, baseVersionType, targetVersionOptions, targetVersion, targetVersionType);
    print(result);
} catch (e) {
    print("Exception when calling DiffsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **diffCommonCommit** | **bool**| If true, diff between common and target commits. If false, diff between base and target commits. | [optional] [default to null]
 **$top** | **int**| Maximum number of changes to return. Defaults to 100. | [optional] [default to null]
 **$skip** | **int**| Number of changes to skip | [optional] [default to null]
 **baseVersionOptions** | **String**| Version options - Specify additional modifiers to version (e.g Previous) | [optional] [default to null]
 **baseVersion** | **String**| Version string identifier (name of tag/branch, SHA1 of commit) | [optional] [default to null]
 **baseVersionType** | **String**| Version type (branch, tag, or commit). Determines how Id is interpreted | [optional] [default to null]
 **targetVersionOptions** | **String**| Version options - Specify additional modifiers to version (e.g Previous) | [optional] [default to null]
 **targetVersion** | **String**| Version string identifier (name of tag/branch, SHA1 of commit) | [optional] [default to null]
 **targetVersionType** | **String**| Version type (branch, tag, or commit). Determines how Id is interpreted | [optional] [default to null]

### Return type

[**GitCommitDiffs**](GitCommitDiffs.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

