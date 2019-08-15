# azure_devops_sdk.api.NuGetApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete Package Version**](NuGetApi.md#delete Package Version) | **DELETE** /{organization}/{project}/_apis/packaging/feeds/{feedId}/nuget/packages/{packageName}/versions/{packageVersion} | 
[**delete Package Version From Recycle Bin**](NuGetApi.md#delete Package Version From Recycle Bin) | **DELETE** /{organization}/{project}/_apis/packaging/feeds/{feedId}/nuget/RecycleBin/packages/{packageName}/versions/{packageVersion} | 
[**download Package**](NuGetApi.md#download Package) | **GET** /{organization}/{project}/_apis/packaging/feeds/{feedId}/nuget/packages/{packageName}/versions/{packageVersion}/content | 
[**get Package Version**](NuGetApi.md#get Package Version) | **GET** /{organization}/{project}/_apis/packaging/feeds/{feedId}/nuget/packages/{packageName}/versions/{packageVersion} | 
[**getPackageVersionFromRecycleBin**](NuGetApi.md#getPackageVersionFromRecycleBin) | **GET** /{organization}/{project}/_apis/packaging/feeds/{feedId}/nuget/RecycleBin/packages/{packageName}/versions/{packageVersion} | 
[**restore Package Version From Recycle Bin**](NuGetApi.md#restore Package Version From Recycle Bin) | **PATCH** /{organization}/{project}/_apis/packaging/feeds/{feedId}/nuget/RecycleBin/packages/{packageName}/versions/{packageVersion} | 
[**update Package Version**](NuGetApi.md#update Package Version) | **PATCH** /{organization}/{project}/_apis/packaging/feeds/{feedId}/nuget/packages/{packageName}/versions/{packageVersion} | 
[**update Package Versions**](NuGetApi.md#update Package Versions) | **POST** /{organization}/{project}/_apis/packaging/feeds/{feedId}/nuget/packagesbatch | 


# **delete Package Version**
> Package delete Package Version(organization, feedId, packageName, packageVersion, project, apiVersion)



Send a package version from the feed to its paired recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NuGetApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package to delete.
var packageVersion = packageVersion_example; // String | Version of the package to delete.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.delete Package Version(organization, feedId, packageName, packageVersion, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NuGetApi->delete Package Version: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package to delete. | [default to null]
 **packageVersion** | **String**| Version of the package to delete. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**Package**](Package.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete Package Version From Recycle Bin**
> delete Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, project, apiVersion)



Delete a package version from a feed's recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NuGetApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, project, apiVersion);
} catch (e) {
    print("Exception when calling NuGetApi->delete Package Version From Recycle Bin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package. | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download Package**
> String download Package(organization, feedId, packageName, packageVersion, project, apiVersion, sourceProtocolVersion)



Download a package version directly.  This API is intended for manual UI download options, not for programmatic access and scripting.  You may be heavily throttled if accessing this api for scripting purposes.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NuGetApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var sourceProtocolVersion = sourceProtocolVersion_example; // String | Unused

try { 
    var result = api_instance.download Package(organization, feedId, packageName, packageVersion, project, apiVersion, sourceProtocolVersion);
    print(result);
} catch (e) {
    print("Exception when calling NuGetApi->download Package: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package. | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **sourceProtocolVersion** | **String**| Unused | [optional] [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Package Version**
> Package get Package Version(organization, feedId, packageName, packageVersion, project, apiVersion, showDeleted)



Get information about a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NuGetApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var showDeleted = true; // bool | True to include deleted packages in the response.

try { 
    var result = api_instance.get Package Version(organization, feedId, packageName, packageVersion, project, apiVersion, showDeleted);
    print(result);
} catch (e) {
    print("Exception when calling NuGetApi->get Package Version: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package. | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **showDeleted** | **bool**| True to include deleted packages in the response. | [optional] [default to null]

### Return type

[**Package**](Package.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackageVersionFromRecycleBin**
> NuGetPackageVersionDeletionState getPackageVersionFromRecycleBin(organization, feedId, packageName, packageVersion, project, apiVersion)



View a package version's deletion/recycled status  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NuGetApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.getPackageVersionFromRecycleBin(organization, feedId, packageName, packageVersion, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NuGetApi->getPackageVersionFromRecycleBin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package. | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**NuGetPackageVersionDeletionState**](NuGetPackageVersionDeletionState.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore Package Version From Recycle Bin**
> restore Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, project, apiVersion, body)



Restore a package version from a feed's recycle bin back into the active feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NuGetApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = NuGetRecycleBinPackageVersionDetails(); // NuGetRecycleBinPackageVersionDetails | Set the 'Deleted' member to 'false' to apply the restore operation

try { 
    api_instance.restore Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, project, apiVersion, body);
} catch (e) {
    print("Exception when calling NuGetApi->restore Package Version From Recycle Bin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package. | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**NuGetRecycleBinPackageVersionDetails**](NuGetRecycleBinPackageVersionDetails.md)| Set the &#39;Deleted&#39; member to &#39;false&#39; to apply the restore operation | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Package Version**
> update Package Version(organization, feedId, packageName, packageVersion, project, apiVersion, body)



Set mutable state on a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NuGetApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package to update.
var packageVersion = packageVersion_example; // String | Version of the package to update.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = PackageVersionDetails(); // PackageVersionDetails | New state to apply to the referenced package.

try { 
    api_instance.update Package Version(organization, feedId, packageName, packageVersion, project, apiVersion, body);
} catch (e) {
    print("Exception when calling NuGetApi->update Package Version: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package to update. | [default to null]
 **packageVersion** | **String**| Version of the package to update. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**PackageVersionDetails**](PackageVersionDetails.md)| New state to apply to the referenced package. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Package Versions**
> update Package Versions(organization, feedId, project, apiVersion, body)



Update several packages from a single feed in a single request. The updates to the packages do not happen atomically.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NuGetApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = NuGetPackagesBatchRequest(); // NuGetPackagesBatchRequest | Information about the packages to update, the operation to perform, and its associated data.

try { 
    api_instance.update Package Versions(organization, feedId, project, apiVersion, body);
} catch (e) {
    print("Exception when calling NuGetApi->update Package Versions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**NuGetPackagesBatchRequest**](NuGetPackagesBatchRequest.md)| Information about the packages to update, the operation to perform, and its associated data. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

