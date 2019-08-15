# azure_devops_sdk.api.PushesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](PushesApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pushes/{pushId} | 
[**create**](PushesApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pushes | 
[**list**](PushesApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pushes | 


# **callGet**
> GitPush callGet(organization, repositoryId, pushId, project, apiVersion, includeCommits, includeRefUpdates)



Retrieves a particular push.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PushesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var pushId = 56; // int | ID of the push.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var includeCommits = 56; // int | The number of commits to include in the result.
var includeRefUpdates = true; // bool | If true, include the list of refs that were updated by the push.

try { 
    var result = api_instance.callGet(organization, repositoryId, pushId, project, apiVersion, includeCommits, includeRefUpdates);
    print(result);
} catch (e) {
    print("Exception when calling PushesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **pushId** | **int**| ID of the push. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **includeCommits** | **int**| The number of commits to include in the result. | [optional] [default to null]
 **includeRefUpdates** | **bool**| If true, include the list of refs that were updated by the push. | [optional] [default to null]

### Return type

[**GitPush**](GitPush.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> GitPush create(organization, repositoryId, project, apiVersion, body)



Push changes to the repository.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PushesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = GitPush(); // GitPush | 

try { 
    var result = api_instance.create(organization, repositoryId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PushesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitPush**](GitPush.md)|  | 

### Return type

[**GitPush**](GitPush.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<GitPush> list(organization, repositoryId, project, apiVersion, $skip, $top, searchCriteriaIncludeLinks, searchCriteriaIncludeRefUpdates, searchCriteriaRefName, searchCriteriaPusherId, searchCriteriaToDate, searchCriteriaFromDate)



Retrieves pushes associated with the specified repository.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PushesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $skip = 56; // int | Number of pushes to skip.
var $top = 56; // int | Number of pushes to return.
var searchCriteriaIncludeLinks = true; // bool | Whether to include the _links field on the shallow references
var searchCriteriaIncludeRefUpdates = true; // bool | Search criteria attributes: fromDate, toDate, pusherId, refName, includeRefUpdates or includeLinks. fromDate: Start date to search from. toDate: End date to search to. pusherId: Identity of the person who submitted the push. refName: Branch name to consider. includeRefUpdates: If true, include the list of refs that were updated by the push. includeLinks: Whether to include the _links field on the shallow references.
var searchCriteriaRefName = searchCriteriaRefName_example; // String | Search criteria attributes: fromDate, toDate, pusherId, refName, includeRefUpdates or includeLinks. fromDate: Start date to search from. toDate: End date to search to. pusherId: Identity of the person who submitted the push. refName: Branch name to consider. includeRefUpdates: If true, include the list of refs that were updated by the push. includeLinks: Whether to include the _links field on the shallow references.
var searchCriteriaPusherId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Search criteria attributes: fromDate, toDate, pusherId, refName, includeRefUpdates or includeLinks. fromDate: Start date to search from. toDate: End date to search to. pusherId: Identity of the person who submitted the push. refName: Branch name to consider. includeRefUpdates: If true, include the list of refs that were updated by the push. includeLinks: Whether to include the _links field on the shallow references.
var searchCriteriaToDate = 2013-10-20T19:20:30+01:00; // DateTime | Search criteria attributes: fromDate, toDate, pusherId, refName, includeRefUpdates or includeLinks. fromDate: Start date to search from. toDate: End date to search to. pusherId: Identity of the person who submitted the push. refName: Branch name to consider. includeRefUpdates: If true, include the list of refs that were updated by the push. includeLinks: Whether to include the _links field on the shallow references.
var searchCriteriaFromDate = 2013-10-20T19:20:30+01:00; // DateTime | Search criteria attributes: fromDate, toDate, pusherId, refName, includeRefUpdates or includeLinks. fromDate: Start date to search from. toDate: End date to search to. pusherId: Identity of the person who submitted the push. refName: Branch name to consider. includeRefUpdates: If true, include the list of refs that were updated by the push. includeLinks: Whether to include the _links field on the shallow references.

try { 
    var result = api_instance.list(organization, repositoryId, project, apiVersion, $skip, $top, searchCriteriaIncludeLinks, searchCriteriaIncludeRefUpdates, searchCriteriaRefName, searchCriteriaPusherId, searchCriteriaToDate, searchCriteriaFromDate);
    print(result);
} catch (e) {
    print("Exception when calling PushesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$skip** | **int**| Number of pushes to skip. | [optional] [default to null]
 **$top** | **int**| Number of pushes to return. | [optional] [default to null]
 **searchCriteriaIncludeLinks** | **bool**| Whether to include the _links field on the shallow references | [optional] [default to null]
 **searchCriteriaIncludeRefUpdates** | **bool**| Search criteria attributes: fromDate, toDate, pusherId, refName, includeRefUpdates or includeLinks. fromDate: Start date to search from. toDate: End date to search to. pusherId: Identity of the person who submitted the push. refName: Branch name to consider. includeRefUpdates: If true, include the list of refs that were updated by the push. includeLinks: Whether to include the _links field on the shallow references. | [optional] [default to null]
 **searchCriteriaRefName** | **String**| Search criteria attributes: fromDate, toDate, pusherId, refName, includeRefUpdates or includeLinks. fromDate: Start date to search from. toDate: End date to search to. pusherId: Identity of the person who submitted the push. refName: Branch name to consider. includeRefUpdates: If true, include the list of refs that were updated by the push. includeLinks: Whether to include the _links field on the shallow references. | [optional] [default to null]
 **searchCriteriaPusherId** | [**String**](.md)| Search criteria attributes: fromDate, toDate, pusherId, refName, includeRefUpdates or includeLinks. fromDate: Start date to search from. toDate: End date to search to. pusherId: Identity of the person who submitted the push. refName: Branch name to consider. includeRefUpdates: If true, include the list of refs that were updated by the push. includeLinks: Whether to include the _links field on the shallow references. | [optional] [default to null]
 **searchCriteriaToDate** | **DateTime**| Search criteria attributes: fromDate, toDate, pusherId, refName, includeRefUpdates or includeLinks. fromDate: Start date to search from. toDate: End date to search to. pusherId: Identity of the person who submitted the push. refName: Branch name to consider. includeRefUpdates: If true, include the list of refs that were updated by the push. includeLinks: Whether to include the _links field on the shallow references. | [optional] [default to null]
 **searchCriteriaFromDate** | **DateTime**| Search criteria attributes: fromDate, toDate, pusherId, refName, includeRefUpdates or includeLinks. fromDate: Start date to search from. toDate: End date to search to. pusherId: Identity of the person who submitted the push. refName: Branch name to consider. includeRefUpdates: If true, include the list of refs that were updated by the push. includeLinks: Whether to include the _links field on the shallow references. | [optional] [default to null]

### Return type

[**List<GitPush>**](GitPush.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

