# azure_devops_sdk.api.ItemsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Items Batch**](ItemsApi.md#get Items Batch) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/itemsbatch | 
[**get Items Batch_0**](ItemsApi.md#get Items Batch_0) | **POST** /{organization}/{project}/_apis/tfvc/itembatch | 
[**list**](ItemsApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/items | 
[**list_0**](ItemsApi.md#list_0) | **GET** /{organization}/{project}/_apis/tfvc/items | 


# **get Items Batch**
> List<List<String>> get Items Batch(organization, repositoryId, project, apiVersion, body)



Post for retrieving a creating a batch out of a set of items in a repo / project given a list of paths or a long path

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ItemsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = GitItemRequestData(); // GitItemRequestData | Request data attributes: ItemDescriptors, IncludeContentMetadata, LatestProcessedChange, IncludeLinks. ItemDescriptors: Collection of items to fetch, including path, version, and recursion level. IncludeContentMetadata: Whether to include metadata for all items LatestProcessedChange: Whether to include shallow ref to commit that last changed each item. IncludeLinks: Whether to include the _links field on the shallow references.

try { 
    var result = api_instance.get Items Batch(organization, repositoryId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ItemsApi->get Items Batch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitItemRequestData**](GitItemRequestData.md)| Request data attributes: ItemDescriptors, IncludeContentMetadata, LatestProcessedChange, IncludeLinks. ItemDescriptors: Collection of items to fetch, including path, version, and recursion level. IncludeContentMetadata: Whether to include metadata for all items LatestProcessedChange: Whether to include shallow ref to commit that last changed each item. IncludeLinks: Whether to include the _links field on the shallow references. | 

### Return type

[**List<List<String>>**](List.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Items Batch_0**
> List<List<String>> get Items Batch_0(organization, project, apiVersion, body)



Post for retrieving a set of items given a list of paths or a long path. Allows for specifying the recursionLevel and version descriptors for each path.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ItemsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TfvcItemRequestData(); // TfvcItemRequestData | 

try { 
    var result = api_instance.get Items Batch_0(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ItemsApi->get Items Batch_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TfvcItemRequestData**](TfvcItemRequestData.md)|  | 

### Return type

[**List<List<String>>**](List.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<GitItem> list(organization, repositoryId, project, apiVersion, scopePath, recursionLevel, includeContentMetadata, latestProcessedChange, download, includeLinks, $format, versionDescriptorVersionOptions, versionDescriptorVersion, versionDescriptorVersionType)



Get Item Metadata and/or Content for a collection of items. The download parameter is to indicate whether the content should be available as a download or just sent as a stream in the response. Doesn't apply to zipped content which is always returned as a download.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ItemsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var scopePath = scopePath_example; // String | The path scope.  The default is null.
var recursionLevel = recursionLevel_example; // String | The recursion level of this request. The default is 'none', no recursion.
var includeContentMetadata = true; // bool | Set to true to include content metadata.  Default is false.
var latestProcessedChange = true; // bool | Set to true to include the latest changes.  Default is false.
var download = true; // bool | Set to true to download the response as a file.  Default is false.
var includeLinks = true; // bool | Set to true to include links to items.  Default is false.
var $format = $format_example; // String | If specified, this overrides the HTTP Accept request header to return either 'json' or 'zip'. If $format is specified, then api-version should also be specified as a query parameter.
var versionDescriptorVersionOptions = versionDescriptorVersionOptions_example; // String | Version options - Specify additional modifiers to version (e.g Previous)
var versionDescriptorVersion = versionDescriptorVersion_example; // String | Version string identifier (name of tag/branch, SHA1 of commit)
var versionDescriptorVersionType = versionDescriptorVersionType_example; // String | Version type (branch, tag, or commit). Determines how Id is interpreted

try { 
    var result = api_instance.list(organization, repositoryId, project, apiVersion, scopePath, recursionLevel, includeContentMetadata, latestProcessedChange, download, includeLinks, $format, versionDescriptorVersionOptions, versionDescriptorVersion, versionDescriptorVersionType);
    print(result);
} catch (e) {
    print("Exception when calling ItemsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **scopePath** | **String**| The path scope.  The default is null. | [optional] [default to null]
 **recursionLevel** | **String**| The recursion level of this request. The default is &#39;none&#39;, no recursion. | [optional] [default to null]
 **includeContentMetadata** | **bool**| Set to true to include content metadata.  Default is false. | [optional] [default to null]
 **latestProcessedChange** | **bool**| Set to true to include the latest changes.  Default is false. | [optional] [default to null]
 **download** | **bool**| Set to true to download the response as a file.  Default is false. | [optional] [default to null]
 **includeLinks** | **bool**| Set to true to include links to items.  Default is false. | [optional] [default to null]
 **$format** | **String**| If specified, this overrides the HTTP Accept request header to return either &#39;json&#39; or &#39;zip&#39;. If $format is specified, then api-version should also be specified as a query parameter. | [optional] [default to null]
 **versionDescriptorVersionOptions** | **String**| Version options - Specify additional modifiers to version (e.g Previous) | [optional] [default to null]
 **versionDescriptorVersion** | **String**| Version string identifier (name of tag/branch, SHA1 of commit) | [optional] [default to null]
 **versionDescriptorVersionType** | **String**| Version type (branch, tag, or commit). Determines how Id is interpreted | [optional] [default to null]

### Return type

[**List<GitItem>**](GitItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_0**
> List<TfvcItem> list_0(organization, project, apiVersion, scopePath, recursionLevel, includeLinks, versionDescriptorVersion, versionDescriptorVersionType, versionDescriptorVersionOption)



Get a list of Tfvc items

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ItemsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var scopePath = scopePath_example; // String | Version control path of a folder to return multiple items.
var recursionLevel = recursionLevel_example; // String | None (just the item), or OneLevel (contents of a folder).
var includeLinks = true; // bool | True to include links.
var versionDescriptorVersion = versionDescriptorVersion_example; // String | 
var versionDescriptorVersionType = versionDescriptorVersionType_example; // String | 
var versionDescriptorVersionOption = versionDescriptorVersionOption_example; // String | 

try { 
    var result = api_instance.list_0(organization, project, apiVersion, scopePath, recursionLevel, includeLinks, versionDescriptorVersion, versionDescriptorVersionType, versionDescriptorVersionOption);
    print(result);
} catch (e) {
    print("Exception when calling ItemsApi->list_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **scopePath** | **String**| Version control path of a folder to return multiple items. | [optional] [default to null]
 **recursionLevel** | **String**| None (just the item), or OneLevel (contents of a folder). | [optional] [default to null]
 **includeLinks** | **bool**| True to include links. | [optional] [default to null]
 **versionDescriptorVersion** | **String**|  | [optional] [default to null]
 **versionDescriptorVersionType** | **String**|  | [optional] [default to null]
 **versionDescriptorVersionOption** | **String**|  | [optional] [default to null]

### Return type

[**List<TfvcItem>**](TfvcItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

