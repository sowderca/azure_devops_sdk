# azure_devops_sdk.api.ChangeTrackingApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Feed Change**](ChangeTrackingApi.md#get Feed Change) | **GET** /{organization}/{project}/_apis/packaging/feedchanges/{feedId} | 
[**get Feed Changes**](ChangeTrackingApi.md#get Feed Changes) | **GET** /{organization}/{project}/_apis/packaging/feedchanges | 
[**get Package Changes**](ChangeTrackingApi.md#get Package Changes) | **GET** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/packagechanges | 


# **get Feed Change**
> FeedChange get Feed Change(organization, feedId, project, apiVersion)



Query a feed to determine its current state.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChangeTrackingApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Feed Change(organization, feedId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ChangeTrackingApi->get Feed Change: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**FeedChange**](FeedChange.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Feed Changes**
> FeedChangesResponse get Feed Changes(organization, project, apiVersion, includeDeleted, continuationToken, batchSize)



Query to determine which feeds have changed since the last call, tracked through the provided continuationToken. Only changes to a feed itself are returned and impact the continuationToken, not additions or alterations to packages within the feeds.  If the project parameter is present, gets all feed changes in the given project. If omitted, gets all feed changes in the organization.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChangeTrackingApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeDeleted = true; // bool | If true, get changes for all feeds including deleted feeds. The default value is false.
var continuationToken = 789; // int | A continuation token which acts as a bookmark to a previously retrieved change. This token allows the user to continue retrieving changes in batches, picking up where the previous batch left off. If specified, all the changes that occur strictly after the token will be returned. If not specified or 0, iteration will start with the first change.
var batchSize = 56; // int | Number of package changes to fetch. The default value is 1000. The maximum value is 2000.

try { 
    var result = api_instance.get Feed Changes(organization, project, apiVersion, includeDeleted, continuationToken, batchSize);
    print(result);
} catch (e) {
    print("Exception when calling ChangeTrackingApi->get Feed Changes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeDeleted** | **bool**| If true, get changes for all feeds including deleted feeds. The default value is false. | [optional] [default to null]
 **continuationToken** | **int**| A continuation token which acts as a bookmark to a previously retrieved change. This token allows the user to continue retrieving changes in batches, picking up where the previous batch left off. If specified, all the changes that occur strictly after the token will be returned. If not specified or 0, iteration will start with the first change. | [optional] [default to null]
 **batchSize** | **int**| Number of package changes to fetch. The default value is 1000. The maximum value is 2000. | [optional] [default to null]

### Return type

[**FeedChangesResponse**](FeedChangesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Package Changes**
> PackageChangesResponse get Package Changes(organization, feedId, project, apiVersion, continuationToken, batchSize)



Get a batch of package changes made to a feed.  The changes returned are 'most recent change' so if an Add is followed by an Update before you begin enumerating, you'll only see one change in the batch.  While consuming batches using the continuation token, you may see changes to the same package version multiple times if they are happening as you enumerate.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChangeTrackingApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var continuationToken = 789; // int | A continuation token which acts as a bookmark to a previously retrieved change. This token allows the user to continue retrieving changes in batches, picking up where the previous batch left off. If specified, all the changes that occur strictly after the token will be returned. If not specified or 0, iteration will start with the first change.
var batchSize = 56; // int | Number of package changes to fetch. The default value is 1000. The maximum value is 2000.

try { 
    var result = api_instance.get Package Changes(organization, feedId, project, apiVersion, continuationToken, batchSize);
    print(result);
} catch (e) {
    print("Exception when calling ChangeTrackingApi->get Package Changes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **continuationToken** | **int**| A continuation token which acts as a bookmark to a previously retrieved change. This token allows the user to continue retrieving changes in batches, picking up where the previous batch left off. If specified, all the changes that occur strictly after the token will be returned. If not specified or 0, iteration will start with the first change. | [optional] [default to null]
 **batchSize** | **int**| Number of package changes to fetch. The default value is 1000. The maximum value is 2000. | [optional] [default to null]

### Return type

[**PackageChangesResponse**](PackageChangesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

