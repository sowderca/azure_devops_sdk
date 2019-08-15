# azure_devops_sdk.api.PullRequestsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](PullRequestsApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullrequests | 
[**get Pull Request**](PullRequestsApi.md#get Pull Request) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullrequests/{pullRequestId} | 
[**get Pull Request By Id**](PullRequestsApi.md#get Pull Request By Id) | **GET** /{organization}/{project}/_apis/git/pullrequests/{pullRequestId} | 
[**get Pull Requests**](PullRequestsApi.md#get Pull Requests) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullrequests | 
[**get Pull Requests By Project**](PullRequestsApi.md#get Pull Requests By Project) | **GET** /{organization}/{project}/_apis/git/pullrequests | 
[**update**](PullRequestsApi.md#update) | **PATCH** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullrequests/{pullRequestId} | 


# **create**
> GitPullRequest create(organization, repositoryId, project, apiVersion, body, supportsIterations)



Create a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = GitPullRequest(); // GitPullRequest | The pull request to create.
var supportsIterations = true; // bool | If true, subsequent pushes to the pull request will be individually reviewable. Set this to false for large pull requests for performance reasons if this functionality is not needed.

try { 
    var result = api_instance.create(organization, repositoryId, project, apiVersion, body, supportsIterations);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitPullRequest**](GitPullRequest.md)| The pull request to create. | 
 **supportsIterations** | **bool**| If true, subsequent pushes to the pull request will be individually reviewable. Set this to false for large pull requests for performance reasons if this functionality is not needed. | [optional] [default to null]

### Return type

[**GitPullRequest**](GitPullRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Pull Request**
> GitPullRequest get Pull Request(organization, repositoryId, pullRequestId, project, apiVersion, maxCommentLength, $skip, $top, includeCommits, includeWorkItemRefs)



Retrieve a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | The ID of the pull request to retrieve.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var maxCommentLength = 56; // int | Not used.
var $skip = 56; // int | Not used.
var $top = 56; // int | Not used.
var includeCommits = true; // bool | If true, the pull request will be returned with the associated commits.
var includeWorkItemRefs = true; // bool | If true, the pull request will be returned with the associated work item references.

try { 
    var result = api_instance.get Pull Request(organization, repositoryId, pullRequestId, project, apiVersion, maxCommentLength, $skip, $top, includeCommits, includeWorkItemRefs);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestsApi->get Pull Request: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| The ID of the pull request to retrieve. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **maxCommentLength** | **int**| Not used. | [optional] [default to null]
 **$skip** | **int**| Not used. | [optional] [default to null]
 **$top** | **int**| Not used. | [optional] [default to null]
 **includeCommits** | **bool**| If true, the pull request will be returned with the associated commits. | [optional] [default to null]
 **includeWorkItemRefs** | **bool**| If true, the pull request will be returned with the associated work item references. | [optional] [default to null]

### Return type

[**GitPullRequest**](GitPullRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Pull Request By Id**
> GitPullRequest get Pull Request By Id(organization, pullRequestId, project, apiVersion)



Retrieve a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var pullRequestId = 56; // int | The ID of the pull request to retrieve.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Pull Request By Id(organization, pullRequestId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestsApi->get Pull Request By Id: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **pullRequestId** | **int**| The ID of the pull request to retrieve. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**GitPullRequest**](GitPullRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Pull Requests**
> List<GitPullRequest> get Pull Requests(organization, repositoryId, project, apiVersion, searchCriteriaIncludeLinks, searchCriteriaSourceRefName, searchCriteriaSourceRepositoryId, searchCriteriaTargetRefName, searchCriteriaStatus, searchCriteriaReviewerId, searchCriteriaCreatorId, searchCriteriaRepositoryId, maxCommentLength, $skip, $top)



Retrieve all pull requests matching a specified criteria.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var searchCriteriaIncludeLinks = true; // bool | Whether to include the _links field on the shallow references
var searchCriteriaSourceRefName = searchCriteriaSourceRefName_example; // String | If set, search for pull requests from this branch.
var searchCriteriaSourceRepositoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If set, search for pull requests whose source branch is in this repository.
var searchCriteriaTargetRefName = searchCriteriaTargetRefName_example; // String | If set, search for pull requests into this branch.
var searchCriteriaStatus = searchCriteriaStatus_example; // String | If set, search for pull requests that are in this state. Defaults to Active if unset.
var searchCriteriaReviewerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If set, search for pull requests that have this identity as a reviewer.
var searchCriteriaCreatorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If set, search for pull requests that were created by this identity.
var searchCriteriaRepositoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If set, search for pull requests whose target branch is in this repository.
var maxCommentLength = 56; // int | Not used.
var $skip = 56; // int | The number of pull requests to ignore. For example, to retrieve results 101-150, set top to 50 and skip to 100.
var $top = 56; // int | The number of pull requests to retrieve.

try { 
    var result = api_instance.get Pull Requests(organization, repositoryId, project, apiVersion, searchCriteriaIncludeLinks, searchCriteriaSourceRefName, searchCriteriaSourceRepositoryId, searchCriteriaTargetRefName, searchCriteriaStatus, searchCriteriaReviewerId, searchCriteriaCreatorId, searchCriteriaRepositoryId, maxCommentLength, $skip, $top);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestsApi->get Pull Requests: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **searchCriteriaIncludeLinks** | **bool**| Whether to include the _links field on the shallow references | [optional] [default to null]
 **searchCriteriaSourceRefName** | **String**| If set, search for pull requests from this branch. | [optional] [default to null]
 **searchCriteriaSourceRepositoryId** | [**String**](.md)| If set, search for pull requests whose source branch is in this repository. | [optional] [default to null]
 **searchCriteriaTargetRefName** | **String**| If set, search for pull requests into this branch. | [optional] [default to null]
 **searchCriteriaStatus** | **String**| If set, search for pull requests that are in this state. Defaults to Active if unset. | [optional] [default to null]
 **searchCriteriaReviewerId** | [**String**](.md)| If set, search for pull requests that have this identity as a reviewer. | [optional] [default to null]
 **searchCriteriaCreatorId** | [**String**](.md)| If set, search for pull requests that were created by this identity. | [optional] [default to null]
 **searchCriteriaRepositoryId** | [**String**](.md)| If set, search for pull requests whose target branch is in this repository. | [optional] [default to null]
 **maxCommentLength** | **int**| Not used. | [optional] [default to null]
 **$skip** | **int**| The number of pull requests to ignore. For example, to retrieve results 101-150, set top to 50 and skip to 100. | [optional] [default to null]
 **$top** | **int**| The number of pull requests to retrieve. | [optional] [default to null]

### Return type

[**List<GitPullRequest>**](GitPullRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Pull Requests By Project**
> List<GitPullRequest> get Pull Requests By Project(organization, project, apiVersion, searchCriteriaIncludeLinks, searchCriteriaSourceRefName, searchCriteriaSourceRepositoryId, searchCriteriaTargetRefName, searchCriteriaStatus, searchCriteriaReviewerId, searchCriteriaCreatorId, searchCriteriaRepositoryId, maxCommentLength, $skip, $top)



Retrieve all pull requests matching a specified criteria.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var searchCriteriaIncludeLinks = true; // bool | Whether to include the _links field on the shallow references
var searchCriteriaSourceRefName = searchCriteriaSourceRefName_example; // String | If set, search for pull requests from this branch.
var searchCriteriaSourceRepositoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If set, search for pull requests whose source branch is in this repository.
var searchCriteriaTargetRefName = searchCriteriaTargetRefName_example; // String | If set, search for pull requests into this branch.
var searchCriteriaStatus = searchCriteriaStatus_example; // String | If set, search for pull requests that are in this state. Defaults to Active if unset.
var searchCriteriaReviewerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If set, search for pull requests that have this identity as a reviewer.
var searchCriteriaCreatorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If set, search for pull requests that were created by this identity.
var searchCriteriaRepositoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If set, search for pull requests whose target branch is in this repository.
var maxCommentLength = 56; // int | Not used.
var $skip = 56; // int | The number of pull requests to ignore. For example, to retrieve results 101-150, set top to 50 and skip to 100.
var $top = 56; // int | The number of pull requests to retrieve.

try { 
    var result = api_instance.get Pull Requests By Project(organization, project, apiVersion, searchCriteriaIncludeLinks, searchCriteriaSourceRefName, searchCriteriaSourceRepositoryId, searchCriteriaTargetRefName, searchCriteriaStatus, searchCriteriaReviewerId, searchCriteriaCreatorId, searchCriteriaRepositoryId, maxCommentLength, $skip, $top);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestsApi->get Pull Requests By Project: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **searchCriteriaIncludeLinks** | **bool**| Whether to include the _links field on the shallow references | [optional] [default to null]
 **searchCriteriaSourceRefName** | **String**| If set, search for pull requests from this branch. | [optional] [default to null]
 **searchCriteriaSourceRepositoryId** | [**String**](.md)| If set, search for pull requests whose source branch is in this repository. | [optional] [default to null]
 **searchCriteriaTargetRefName** | **String**| If set, search for pull requests into this branch. | [optional] [default to null]
 **searchCriteriaStatus** | **String**| If set, search for pull requests that are in this state. Defaults to Active if unset. | [optional] [default to null]
 **searchCriteriaReviewerId** | [**String**](.md)| If set, search for pull requests that have this identity as a reviewer. | [optional] [default to null]
 **searchCriteriaCreatorId** | [**String**](.md)| If set, search for pull requests that were created by this identity. | [optional] [default to null]
 **searchCriteriaRepositoryId** | [**String**](.md)| If set, search for pull requests whose target branch is in this repository. | [optional] [default to null]
 **maxCommentLength** | **int**| Not used. | [optional] [default to null]
 **$skip** | **int**| The number of pull requests to ignore. For example, to retrieve results 101-150, set top to 50 and skip to 100. | [optional] [default to null]
 **$top** | **int**| The number of pull requests to retrieve. | [optional] [default to null]

### Return type

[**List<GitPullRequest>**](GitPullRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> GitPullRequest update(organization, repositoryId, pullRequestId, project, apiVersion, body)



Update a pull request  These are the properties that can be updated with the API:  - Status  - Title  - Description (up to 4000 characters)  - CompletionOptions  - MergeOptions  - AutoCompleteSetBy.Id  - TargetRefName (when the PR retargeting feature is enabled)  Attempting to update other properties outside of this list will either cause the server to throw an `InvalidArgumentValueException`,  or to silently ignore the update.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request to update.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = GitPullRequest(); // GitPullRequest | The pull request content that should be updated.

try { 
    var result = api_instance.update(organization, repositoryId, pullRequestId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request to update. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitPullRequest**](GitPullRequest.md)| The pull request content that should be updated. | 

### Return type

[**GitPullRequest**](GitPullRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

