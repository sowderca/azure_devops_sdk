# azure_devops_sdk.api.ChangesetsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ChangesetsApi.md#callGet) | **GET** /{organization}/{project}/_apis/tfvc/changesets/{id} | 
[**create**](ChangesetsApi.md#create) | **POST** /{organization}/{project}/_apis/tfvc/changesets | 
[**get Batched Changesets**](ChangesetsApi.md#get Batched Changesets) | **POST** /{organization}/_apis/tfvc/changesetsbatch | 
[**get Changeset Changes**](ChangesetsApi.md#get Changeset Changes) | **GET** /{organization}/_apis/tfvc/changesets/{id}/changes | 
[**get Changeset Work Items**](ChangesetsApi.md#get Changeset Work Items) | **GET** /{organization}/_apis/tfvc/changesets/{id}/workItems | 
[**get Changesets**](ChangesetsApi.md#get Changesets) | **GET** /{organization}/{project}/_apis/tfvc/changesets | 


# **callGet**
> TfvcChangeset callGet(organization, id, project, apiVersion, maxChangeCount, includeDetails, includeWorkItems, maxCommentLength, includeSourceRename, $skip, $top, $orderby, searchCriteriaMappings, searchCriteriaIncludeLinks, searchCriteriaFollowRenames, searchCriteriaToId, searchCriteriaFromId, searchCriteriaToDate, searchCriteriaFromDate, searchCriteriaAuthor, searchCriteriaItemPath)



Retrieve a Tfvc Changeset

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChangesetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | Changeset Id to retrieve.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var maxChangeCount = 56; // int | Number of changes to return (maximum 100 changes) Default: 0
var includeDetails = true; // bool | Include policy details and check-in notes in the response. Default: false
var includeWorkItems = true; // bool | Include workitems. Default: false
var maxCommentLength = 56; // int | Include details about associated work items in the response. Default: null
var includeSourceRename = true; // bool | Include renames.  Default: false
var $skip = 56; // int | Number of results to skip. Default: null
var $top = 56; // int | The maximum number of results to return. Default: null
var $orderby = $orderby_example; // String | Results are sorted by ID in descending order by default. Use id asc to sort by ID in ascending order.
var searchCriteriaMappings = ; // Object | Following criteria available (.itemPath, .version, .versionType, .versionOption, .author, .fromId, .toId, .fromDate, .toDate) Default: null
var searchCriteriaIncludeLinks = true; // bool | Whether to include the _links field on the shallow references
var searchCriteriaFollowRenames = true; // bool | Whether or not to follow renames for the given item being queried
var searchCriteriaToId = 56; // int | If provided, a version descriptor for the latest change list to include
var searchCriteriaFromId = 56; // int | If provided, only include changesets after this changesetID
var searchCriteriaToDate = searchCriteriaToDate_example; // String | If provided, only include changesets created before this date (string) Think of a better name for this.
var searchCriteriaFromDate = searchCriteriaFromDate_example; // String | If provided, only include changesets created after this date (string) Think of a better name for this.
var searchCriteriaAuthor = searchCriteriaAuthor_example; // String | Alias or display name of user who made the changes
var searchCriteriaItemPath = searchCriteriaItemPath_example; // String | Path of item to search under

try { 
    var result = api_instance.callGet(organization, id, project, apiVersion, maxChangeCount, includeDetails, includeWorkItems, maxCommentLength, includeSourceRename, $skip, $top, $orderby, searchCriteriaMappings, searchCriteriaIncludeLinks, searchCriteriaFollowRenames, searchCriteriaToId, searchCriteriaFromId, searchCriteriaToDate, searchCriteriaFromDate, searchCriteriaAuthor, searchCriteriaItemPath);
    print(result);
} catch (e) {
    print("Exception when calling ChangesetsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | **int**| Changeset Id to retrieve. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **maxChangeCount** | **int**| Number of changes to return (maximum 100 changes) Default: 0 | [optional] [default to null]
 **includeDetails** | **bool**| Include policy details and check-in notes in the response. Default: false | [optional] [default to null]
 **includeWorkItems** | **bool**| Include workitems. Default: false | [optional] [default to null]
 **maxCommentLength** | **int**| Include details about associated work items in the response. Default: null | [optional] [default to null]
 **includeSourceRename** | **bool**| Include renames.  Default: false | [optional] [default to null]
 **$skip** | **int**| Number of results to skip. Default: null | [optional] [default to null]
 **$top** | **int**| The maximum number of results to return. Default: null | [optional] [default to null]
 **$orderby** | **String**| Results are sorted by ID in descending order by default. Use id asc to sort by ID in ascending order. | [optional] [default to null]
 **searchCriteriaMappings** | [**Object**](.md)| Following criteria available (.itemPath, .version, .versionType, .versionOption, .author, .fromId, .toId, .fromDate, .toDate) Default: null | [optional] [default to null]
 **searchCriteriaIncludeLinks** | **bool**| Whether to include the _links field on the shallow references | [optional] [default to null]
 **searchCriteriaFollowRenames** | **bool**| Whether or not to follow renames for the given item being queried | [optional] [default to null]
 **searchCriteriaToId** | **int**| If provided, a version descriptor for the latest change list to include | [optional] [default to null]
 **searchCriteriaFromId** | **int**| If provided, only include changesets after this changesetID | [optional] [default to null]
 **searchCriteriaToDate** | **String**| If provided, only include changesets created before this date (string) Think of a better name for this. | [optional] [default to null]
 **searchCriteriaFromDate** | **String**| If provided, only include changesets created after this date (string) Think of a better name for this. | [optional] [default to null]
 **searchCriteriaAuthor** | **String**| Alias or display name of user who made the changes | [optional] [default to null]
 **searchCriteriaItemPath** | **String**| Path of item to search under | [optional] [default to null]

### Return type

[**TfvcChangeset**](TfvcChangeset.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> TfvcChangesetRef create(organization, project, apiVersion, body)



Create a new changeset.  Accepts TfvcChangesetToCreate as JSON body

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChangesetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TfvcChangeset(); // TfvcChangeset | 

try { 
    var result = api_instance.create(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ChangesetsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TfvcChangeset**](TfvcChangeset.md)|  | 

### Return type

[**TfvcChangesetRef**](TfvcChangesetRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Batched Changesets**
> List<TfvcChangesetRef> get Batched Changesets(organization, apiVersion, body)



Returns changesets for a given list of changeset Ids.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChangesetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TfvcChangesetsRequestData(); // TfvcChangesetsRequestData | List of changeset IDs.

try { 
    var result = api_instance.get Batched Changesets(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ChangesetsApi->get Batched Changesets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TfvcChangesetsRequestData**](TfvcChangesetsRequestData.md)| List of changeset IDs. | 

### Return type

[**List<TfvcChangesetRef>**](TfvcChangesetRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Changeset Changes**
> List<TfvcChange> get Changeset Changes(organization, id, apiVersion, $skip, $top)



Retrieve Tfvc changes for a given changeset.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChangesetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | ID of the changeset. Default: null
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $skip = 56; // int | Number of results to skip. Default: null
var $top = 56; // int | The maximum number of results to return. Default: null

try { 
    var result = api_instance.get Changeset Changes(organization, id, apiVersion, $skip, $top);
    print(result);
} catch (e) {
    print("Exception when calling ChangesetsApi->get Changeset Changes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | **int**| ID of the changeset. Default: null | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$skip** | **int**| Number of results to skip. Default: null | [optional] [default to null]
 **$top** | **int**| The maximum number of results to return. Default: null | [optional] [default to null]

### Return type

[**List<TfvcChange>**](TfvcChange.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Changeset Work Items**
> List<AssociatedWorkItem> get Changeset Work Items(organization, id, apiVersion)



Retrieves the work items associated with a particular changeset.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChangesetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | ID of the changeset. Default: null
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Changeset Work Items(organization, id, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ChangesetsApi->get Changeset Work Items: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | **int**| ID of the changeset. Default: null | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<AssociatedWorkItem>**](AssociatedWorkItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Changesets**
> List<TfvcChangesetRef> get Changesets(organization, project, apiVersion, maxCommentLength, $skip, $top, $orderby, searchCriteriaMappings, searchCriteriaIncludeLinks, searchCriteriaFollowRenames, searchCriteriaToId, searchCriteriaFromId, searchCriteriaToDate, searchCriteriaFromDate, searchCriteriaAuthor, searchCriteriaItemPath)



Retrieve Tfvc Changesets  Note: This is a new version of the GetChangesets API that doesn't expose the unneeded queryParams present in the 1.0 version of the API.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChangesetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var maxCommentLength = 56; // int | Include details about associated work items in the response. Default: null
var $skip = 56; // int | Number of results to skip. Default: null
var $top = 56; // int | The maximum number of results to return. Default: null
var $orderby = $orderby_example; // String | Results are sorted by ID in descending order by default. Use id asc to sort by ID in ascending order.
var searchCriteriaMappings = ; // Object | Following criteria available (.itemPath, .version, .versionType, .versionOption, .author, .fromId, .toId, .fromDate, .toDate) Default: null
var searchCriteriaIncludeLinks = true; // bool | Whether to include the _links field on the shallow references
var searchCriteriaFollowRenames = true; // bool | Whether or not to follow renames for the given item being queried
var searchCriteriaToId = 56; // int | If provided, a version descriptor for the latest change list to include
var searchCriteriaFromId = 56; // int | If provided, only include changesets after this changesetID
var searchCriteriaToDate = searchCriteriaToDate_example; // String | If provided, only include changesets created before this date (string) Think of a better name for this.
var searchCriteriaFromDate = searchCriteriaFromDate_example; // String | If provided, only include changesets created after this date (string) Think of a better name for this.
var searchCriteriaAuthor = searchCriteriaAuthor_example; // String | Alias or display name of user who made the changes
var searchCriteriaItemPath = searchCriteriaItemPath_example; // String | Path of item to search under

try { 
    var result = api_instance.get Changesets(organization, project, apiVersion, maxCommentLength, $skip, $top, $orderby, searchCriteriaMappings, searchCriteriaIncludeLinks, searchCriteriaFollowRenames, searchCriteriaToId, searchCriteriaFromId, searchCriteriaToDate, searchCriteriaFromDate, searchCriteriaAuthor, searchCriteriaItemPath);
    print(result);
} catch (e) {
    print("Exception when calling ChangesetsApi->get Changesets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **maxCommentLength** | **int**| Include details about associated work items in the response. Default: null | [optional] [default to null]
 **$skip** | **int**| Number of results to skip. Default: null | [optional] [default to null]
 **$top** | **int**| The maximum number of results to return. Default: null | [optional] [default to null]
 **$orderby** | **String**| Results are sorted by ID in descending order by default. Use id asc to sort by ID in ascending order. | [optional] [default to null]
 **searchCriteriaMappings** | [**Object**](.md)| Following criteria available (.itemPath, .version, .versionType, .versionOption, .author, .fromId, .toId, .fromDate, .toDate) Default: null | [optional] [default to null]
 **searchCriteriaIncludeLinks** | **bool**| Whether to include the _links field on the shallow references | [optional] [default to null]
 **searchCriteriaFollowRenames** | **bool**| Whether or not to follow renames for the given item being queried | [optional] [default to null]
 **searchCriteriaToId** | **int**| If provided, a version descriptor for the latest change list to include | [optional] [default to null]
 **searchCriteriaFromId** | **int**| If provided, only include changesets after this changesetID | [optional] [default to null]
 **searchCriteriaToDate** | **String**| If provided, only include changesets created before this date (string) Think of a better name for this. | [optional] [default to null]
 **searchCriteriaFromDate** | **String**| If provided, only include changesets created after this date (string) Think of a better name for this. | [optional] [default to null]
 **searchCriteriaAuthor** | **String**| Alias or display name of user who made the changes | [optional] [default to null]
 **searchCriteriaItemPath** | **String**| Path of item to search under | [optional] [default to null]

### Return type

[**List<TfvcChangesetRef>**](TfvcChangesetRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

