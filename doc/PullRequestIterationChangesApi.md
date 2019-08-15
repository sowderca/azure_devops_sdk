# azure_devops_sdk.api.PullRequestIterationChangesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](PullRequestIterationChangesApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/iterations/{iterationId}/changes | 


# **callGet**
> GitPullRequestIterationChanges callGet(organization, repositoryId, pullRequestId, iterationId, project, apiVersion, $top, $skip, $compareTo)



Retrieve the changes made in a pull request between two iterations.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestIterationChangesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var iterationId = 56; // int | ID of the pull request iteration. <br /> Iteration IDs are zero-based with zero indicating the common commit between the source and target branches. Iteration one is the head of the source branch at the time the pull request is created and subsequent iterations are created when there are pushes to the source branch.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $top = 56; // int | Optional. The number of changes to retrieve.  The default value is 100 and the maximum value is 2000.
var $skip = 56; // int | Optional. The number of changes to ignore.  For example, to retrieve changes 101-150, set top 50 and skip to 100.
var $compareTo = 56; // int | ID of the pull request iteration to compare against.  The default value is zero which indicates the comparison is made against the common commit between the source and target branches

try { 
    var result = api_instance.callGet(organization, repositoryId, pullRequestId, iterationId, project, apiVersion, $top, $skip, $compareTo);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestIterationChangesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **iterationId** | **int**| ID of the pull request iteration. &lt;br /&gt; Iteration IDs are zero-based with zero indicating the common commit between the source and target branches. Iteration one is the head of the source branch at the time the pull request is created and subsequent iterations are created when there are pushes to the source branch. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$top** | **int**| Optional. The number of changes to retrieve.  The default value is 100 and the maximum value is 2000. | [optional] [default to null]
 **$skip** | **int**| Optional. The number of changes to ignore.  For example, to retrieve changes 101-150, set top 50 and skip to 100. | [optional] [default to null]
 **$compareTo** | **int**| ID of the pull request iteration to compare against.  The default value is zero which indicates the comparison is made against the common commit between the source and target branches | [optional] [default to null]

### Return type

[**GitPullRequestIterationChanges**](GitPullRequestIterationChanges.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

