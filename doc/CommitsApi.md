# azure_devops_sdk.api.CommitsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](CommitsApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/commits/{commitId} | 
[**get Changes**](CommitsApi.md#get Changes) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/commits/{commitId}/changes | 
[**get Commits Batch**](CommitsApi.md#get Commits Batch) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/commitsbatch | 
[**get Push Commits**](CommitsApi.md#get Push Commits) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/commits | 


# **callGet**
> GitCommit callGet(organization, commitId, repositoryId, project, apiVersion, changeCount)



Retrieve a particular commit.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommitsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var commitId = commitId_example; // String | The id of the commit.
var repositoryId = repositoryId_example; // String | The id or friendly name of the repository. To use the friendly name, projectId must also be specified.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var changeCount = 56; // int | The number of changes to include in the result.

try { 
    var result = api_instance.callGet(organization, commitId, repositoryId, project, apiVersion, changeCount);
    print(result);
} catch (e) {
    print("Exception when calling CommitsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **commitId** | **String**| The id of the commit. | [default to null]
 **repositoryId** | **String**| The id or friendly name of the repository. To use the friendly name, projectId must also be specified. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **changeCount** | **int**| The number of changes to include in the result. | [optional] [default to null]

### Return type

[**GitCommit**](GitCommit.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Changes**
> GitCommitChanges get Changes(organization, commitId, repositoryId, project, apiVersion, top, skip)



Retrieve changes for a particular commit.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommitsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var commitId = commitId_example; // String | The id of the commit.
var repositoryId = repositoryId_example; // String | The id or friendly name of the repository. To use the friendly name, projectId must also be specified.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var top = 56; // int | The maximum number of changes to return.
var skip = 56; // int | The number of changes to skip.

try { 
    var result = api_instance.get Changes(organization, commitId, repositoryId, project, apiVersion, top, skip);
    print(result);
} catch (e) {
    print("Exception when calling CommitsApi->get Changes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **commitId** | **String**| The id of the commit. | [default to null]
 **repositoryId** | **String**| The id or friendly name of the repository. To use the friendly name, projectId must also be specified. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **top** | **int**| The maximum number of changes to return. | [optional] [default to null]
 **skip** | **int**| The number of changes to skip. | [optional] [default to null]

### Return type

[**GitCommitChanges**](GitCommitChanges.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Commits Batch**
> List<GitCommitRef> get Commits Batch(organization, repositoryId, project, apiVersion, body, $skip, $top, includeStatuses)



Retrieve git commits for a project matching the search criteria

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommitsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = GitQueryCommitsCriteria(); // GitQueryCommitsCriteria | Search options
var $skip = 56; // int | Number of commits to skip.
var $top = 56; // int | Maximum number of commits to return.
var includeStatuses = true; // bool | True to include additional commit status information.

try { 
    var result = api_instance.get Commits Batch(organization, repositoryId, project, apiVersion, body, $skip, $top, includeStatuses);
    print(result);
} catch (e) {
    print("Exception when calling CommitsApi->get Commits Batch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitQueryCommitsCriteria**](GitQueryCommitsCriteria.md)| Search options | 
 **$skip** | **int**| Number of commits to skip. | [optional] [default to null]
 **$top** | **int**| Maximum number of commits to return. | [optional] [default to null]
 **includeStatuses** | **bool**| True to include additional commit status information. | [optional] [default to null]

### Return type

[**List<GitCommitRef>**](GitCommitRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Push Commits**
> List<GitCommitRef> get Push Commits(organization, repositoryId, pushId, project, apiVersion, top, skip, includeLinks)



Retrieve a list of commits associated with a particular push.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommitsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The id or friendly name of the repository. To use the friendly name, projectId must also be specified.
var pushId = 56; // int | The id of the push.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var top = 56; // int | The maximum number of commits to return (\"get the top x commits\").
var skip = 56; // int | The number of commits to skip.
var includeLinks = true; // bool | Set to false to avoid including REST Url links for resources. Defaults to true.

try { 
    var result = api_instance.get Push Commits(organization, repositoryId, pushId, project, apiVersion, top, skip, includeLinks);
    print(result);
} catch (e) {
    print("Exception when calling CommitsApi->get Push Commits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The id or friendly name of the repository. To use the friendly name, projectId must also be specified. | [default to null]
 **pushId** | **int**| The id of the push. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **top** | **int**| The maximum number of commits to return (\&quot;get the top x commits\&quot;). | [optional] [default to null]
 **skip** | **int**| The number of commits to skip. | [optional] [default to null]
 **includeLinks** | **bool**| Set to false to avoid including REST Url links for resources. Defaults to true. | [optional] [default to null]

### Return type

[**List<GitCommitRef>**](GitCommitRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

