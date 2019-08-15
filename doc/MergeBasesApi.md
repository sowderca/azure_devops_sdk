# azure_devops_sdk.api.MergeBasesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](MergeBasesApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/commits/{commitId}/mergebases | 


# **list**
> List<GitCommitRef> list(organization, repositoryNameOrId, commitId, otherCommitId, project, apiVersion, otherCollectionId, otherRepositoryId)



Find the merge bases of two commits, optionally across forks. If otherRepositoryId is not specified, the merge bases will only be calculated within the context of the local repositoryNameOrId.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MergeBasesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryNameOrId = repositoryNameOrId_example; // String | ID or name of the local repository.
var commitId = commitId_example; // String | First commit, usually the tip of the target branch of the potential merge.
var otherCommitId = otherCommitId_example; // String | Other commit, usually the tip of the source branch of the potential merge.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var otherCollectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The collection ID where otherCommitId lives.
var otherRepositoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The repository ID where otherCommitId lives.

try { 
    var result = api_instance.list(organization, repositoryNameOrId, commitId, otherCommitId, project, apiVersion, otherCollectionId, otherRepositoryId);
    print(result);
} catch (e) {
    print("Exception when calling MergeBasesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryNameOrId** | **String**| ID or name of the local repository. | [default to null]
 **commitId** | **String**| First commit, usually the tip of the target branch of the potential merge. | [default to null]
 **otherCommitId** | **String**| Other commit, usually the tip of the source branch of the potential merge. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **otherCollectionId** | [**String**](.md)| The collection ID where otherCommitId lives. | [optional] [default to null]
 **otherRepositoryId** | [**String**](.md)| The repository ID where otherCommitId lives. | [optional] [default to null]

### Return type

[**List<GitCommitRef>**](GitCommitRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

