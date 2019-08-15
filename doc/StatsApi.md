# azure_devops_sdk.api.StatsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](StatsApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/stats/branches | 


# **list**
> List<GitBranchStats> list(organization, repositoryId, project, apiVersion, baseVersionDescriptorVersionOptions, baseVersionDescriptorVersion, baseVersionDescriptorVersionType)



Retrieve statistics about all branches within a repository.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = StatsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var baseVersionDescriptorVersionOptions = baseVersionDescriptorVersionOptions_example; // String | Version options - Specify additional modifiers to version (e.g Previous)
var baseVersionDescriptorVersion = baseVersionDescriptorVersion_example; // String | Version string identifier (name of tag/branch, SHA1 of commit)
var baseVersionDescriptorVersionType = baseVersionDescriptorVersionType_example; // String | Version type (branch, tag, or commit). Determines how Id is interpreted

try { 
    var result = api_instance.list(organization, repositoryId, project, apiVersion, baseVersionDescriptorVersionOptions, baseVersionDescriptorVersion, baseVersionDescriptorVersionType);
    print(result);
} catch (e) {
    print("Exception when calling StatsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **baseVersionDescriptorVersionOptions** | **String**| Version options - Specify additional modifiers to version (e.g Previous) | [optional] [default to null]
 **baseVersionDescriptorVersion** | **String**| Version string identifier (name of tag/branch, SHA1 of commit) | [optional] [default to null]
 **baseVersionDescriptorVersionType** | **String**| Version type (branch, tag, or commit). Determines how Id is interpreted | [optional] [default to null]

### Return type

[**List<GitBranchStats>**](GitBranchStats.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

