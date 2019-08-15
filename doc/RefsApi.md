# azure_devops_sdk.api.RefsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](RefsApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/refs | 
[**update Ref**](RefsApi.md#update Ref) | **PATCH** /{organization}/{project}/_apis/git/repositories/{repositoryId}/refs | 
[**update Refs**](RefsApi.md#update Refs) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/refs | 


# **list**
> List<GitRef> list(organization, repositoryId, project, apiVersion, filter, includeLinks, includeStatuses, includeMyBranches, latestStatusesOnly, peelTags, filterContains, $top, continuationToken)



Queries the provided repository for its refs and returns them.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RefsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var filter = filter_example; // String | [optional] A filter to apply to the refs (starts with).
var includeLinks = true; // bool | [optional] Specifies if referenceLinks should be included in the result. default is false.
var includeStatuses = true; // bool | [optional] Includes up to the first 1000 commit statuses for each ref. The default value is false.
var includeMyBranches = true; // bool | [optional] Includes only branches that the user owns, the branches the user favorites, and the default branch. The default value is false. Cannot be combined with the filter parameter.
var latestStatusesOnly = true; // bool | [optional] True to include only the tip commit status for each ref. This option requires `includeStatuses` to be true. The default value is false.
var peelTags = true; // bool | [optional] Annotated tags will populate the PeeledObjectId property. default is false.
var filterContains = filterContains_example; // String | [optional] A filter to apply to the refs (contains).
var $top = 56; // int | [optional] Maximum number of refs to return. It cannot be bigger than 1000. If it is not provided but continuationToken is, top will default to 100.
var continuationToken = continuationToken_example; // String | The continuation token used for pagination.

try { 
    var result = api_instance.list(organization, repositoryId, project, apiVersion, filter, includeLinks, includeStatuses, includeMyBranches, latestStatusesOnly, peelTags, filterContains, $top, continuationToken);
    print(result);
} catch (e) {
    print("Exception when calling RefsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **filter** | **String**| [optional] A filter to apply to the refs (starts with). | [optional] [default to null]
 **includeLinks** | **bool**| [optional] Specifies if referenceLinks should be included in the result. default is false. | [optional] [default to null]
 **includeStatuses** | **bool**| [optional] Includes up to the first 1000 commit statuses for each ref. The default value is false. | [optional] [default to null]
 **includeMyBranches** | **bool**| [optional] Includes only branches that the user owns, the branches the user favorites, and the default branch. The default value is false. Cannot be combined with the filter parameter. | [optional] [default to null]
 **latestStatusesOnly** | **bool**| [optional] True to include only the tip commit status for each ref. This option requires &#x60;includeStatuses&#x60; to be true. The default value is false. | [optional] [default to null]
 **peelTags** | **bool**| [optional] Annotated tags will populate the PeeledObjectId property. default is false. | [optional] [default to null]
 **filterContains** | **String**| [optional] A filter to apply to the refs (contains). | [optional] [default to null]
 **$top** | **int**| [optional] Maximum number of refs to return. It cannot be bigger than 1000. If it is not provided but continuationToken is, top will default to 100. | [optional] [default to null]
 **continuationToken** | **String**| The continuation token used for pagination. | [optional] [default to null]

### Return type

[**List<GitRef>**](GitRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Ref**
> GitRef update Ref(organization, repositoryId, filter, project, apiVersion, body, projectId)



Lock or Unlock a branch.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RefsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var filter = filter_example; // String | The name of the branch to lock/unlock
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = GitRefUpdate(); // GitRefUpdate | The ref update action (lock/unlock) to perform
var projectId = projectId_example; // String | ID or name of the team project. Optional if specifying an ID for repository.

try { 
    var result = api_instance.update Ref(organization, repositoryId, filter, project, apiVersion, body, projectId);
    print(result);
} catch (e) {
    print("Exception when calling RefsApi->update Ref: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **filter** | **String**| The name of the branch to lock/unlock | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitRefUpdate**](GitRefUpdate.md)| The ref update action (lock/unlock) to perform | 
 **projectId** | **String**| ID or name of the team project. Optional if specifying an ID for repository. | [optional] [default to null]

### Return type

[**GitRef**](GitRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Refs**
> List<GitRefUpdateResult> update Refs(organization, repositoryId, project, apiVersion, body, projectId)



Creating, updating, or deleting refs(branches).  Updating a ref means making it point at a different commit than it used to. You must specify both the old and new commit to avoid race conditions.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RefsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = [List&lt;GitRefUpdate&gt;()]; // List<GitRefUpdate> | List of ref updates to attempt to perform
var projectId = projectId_example; // String | ID or name of the team project. Optional if specifying an ID for repository.

try { 
    var result = api_instance.update Refs(organization, repositoryId, project, apiVersion, body, projectId);
    print(result);
} catch (e) {
    print("Exception when calling RefsApi->update Refs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;GitRefUpdate&gt;**](GitRefUpdate.md)| List of ref updates to attempt to perform | 
 **projectId** | **String**| ID or name of the team project. Optional if specifying an ID for repository. | [optional] [default to null]

### Return type

[**List<GitRefUpdateResult>**](GitRefUpdateResult.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

