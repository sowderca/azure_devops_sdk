# azure_devops_sdk.api.MavenApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePackageVersion**](MavenApi.md#deletePackageVersion) | **DELETE** /{organization}/{project}/_apis/packaging/feeds/{feed}/maven/groups/{groupId}/artifacts/{artifactId}/versions/{version} | 
[**deletePackageVersionFromRecycleBin**](MavenApi.md#deletePackageVersionFromRecycleBin) | **DELETE** /{organization}/{project}/_apis/packaging/feeds/{feed}/maven/RecycleBin/groups/{groupId}/artifacts/{artifactId}/versions/{version} | 
[**downloadPackage**](MavenApi.md#downloadPackage) | **GET** /{organization}/{project}/_apis/packaging/feeds/{feedId}/maven/{groupId}/{artifactId}/{version}/{fileName}/content | 
[**get Package Version**](MavenApi.md#get Package Version) | **GET** /{organization}/{project}/_apis/packaging/feeds/{feed}/maven/groups/{groupId}/artifacts/{artifactId}/versions/{version} | 
[**getPackageVersionFromRecycleBin**](MavenApi.md#getPackageVersionFromRecycleBin) | **GET** /{organization}/{project}/_apis/packaging/feeds/{feed}/maven/RecycleBin/groups/{groupId}/artifacts/{artifactId}/versions/{version} | 
[**restore Package Version From Recycle Bin**](MavenApi.md#restore Package Version From Recycle Bin) | **PATCH** /{organization}/{project}/_apis/packaging/feeds/{feed}/maven/RecycleBin/groups/{groupId}/artifacts/{artifactId}/versions/{version} | 


# **deletePackageVersion**
> deletePackageVersion(organization, feed, groupId, artifactId, version, project, apiVersion)



Delete a package version from the feed and move it to the feed's recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MavenApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feed = feed_example; // String | Name or ID of the feed.
var groupId = groupId_example; // String | Group ID of the package.
var artifactId = artifactId_example; // String | Artifact ID of the package.
var version = version_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.deletePackageVersion(organization, feed, groupId, artifactId, version, project, apiVersion);
} catch (e) {
    print("Exception when calling MavenApi->deletePackageVersion: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feed** | **String**| Name or ID of the feed. | [default to null]
 **groupId** | **String**| Group ID of the package. | [default to null]
 **artifactId** | **String**| Artifact ID of the package. | [default to null]
 **version** | **String**| Version of the package. | [default to null]
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

# **deletePackageVersionFromRecycleBin**
> deletePackageVersionFromRecycleBin(organization, feed, groupId, artifactId, version, project, apiVersion)



Permanently delete a package from a feed's recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MavenApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feed = feed_example; // String | Name or ID of the feed.
var groupId = groupId_example; // String | Group ID of the package.
var artifactId = artifactId_example; // String | Artifact ID of the package.
var version = version_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.deletePackageVersionFromRecycleBin(organization, feed, groupId, artifactId, version, project, apiVersion);
} catch (e) {
    print("Exception when calling MavenApi->deletePackageVersionFromRecycleBin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feed** | **String**| Name or ID of the feed. | [default to null]
 **groupId** | **String**| Group ID of the package. | [default to null]
 **artifactId** | **String**| Artifact ID of the package. | [default to null]
 **version** | **String**| Version of the package. | [default to null]
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

# **downloadPackage**
> String downloadPackage(organization, feedId, groupId, artifactId, version, fileName, project, apiVersion)



Fulfills Maven package file download requests by either returning the URL of the requested package file or, in the case of Azure DevOps Server (OnPrem), returning the content as a stream.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MavenApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var groupId = groupId_example; // String | GroupId of the maven package
var artifactId = artifactId_example; // String | ArtifactId of the maven package
var version = version_example; // String | Version of the package
var fileName = fileName_example; // String | File name to download
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.downloadPackage(organization, feedId, groupId, artifactId, version, fileName, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling MavenApi->downloadPackage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **groupId** | **String**| GroupId of the maven package | [default to null]
 **artifactId** | **String**| ArtifactId of the maven package | [default to null]
 **version** | **String**| Version of the package | [default to null]
 **fileName** | **String**| File name to download | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Package Version**
> Package get Package Version(organization, feed, groupId, artifactId, version, project, apiVersion, showDeleted)



Get information about a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MavenApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feed = feed_example; // String | Name or ID of the feed.
var groupId = groupId_example; // String | Group ID of the package.
var artifactId = artifactId_example; // String | Artifact ID of the package.
var version = version_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var showDeleted = true; // bool | True to show information for deleted packages.

try { 
    var result = api_instance.get Package Version(organization, feed, groupId, artifactId, version, project, apiVersion, showDeleted);
    print(result);
} catch (e) {
    print("Exception when calling MavenApi->get Package Version: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feed** | **String**| Name or ID of the feed. | [default to null]
 **groupId** | **String**| Group ID of the package. | [default to null]
 **artifactId** | **String**| Artifact ID of the package. | [default to null]
 **version** | **String**| Version of the package. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **showDeleted** | **bool**| True to show information for deleted packages. | [optional] [default to null]

### Return type

[**Package**](Package.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackageVersionFromRecycleBin**
> MavenPackageVersionDeletionState getPackageVersionFromRecycleBin(organization, feed, groupId, artifactId, version, project, apiVersion)



Get information about a package version in the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MavenApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feed = feed_example; // String | Name or ID of the feed.
var groupId = groupId_example; // String | Group ID of the package.
var artifactId = artifactId_example; // String | Artifact ID of the package.
var version = version_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.getPackageVersionFromRecycleBin(organization, feed, groupId, artifactId, version, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling MavenApi->getPackageVersionFromRecycleBin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feed** | **String**| Name or ID of the feed. | [default to null]
 **groupId** | **String**| Group ID of the package. | [default to null]
 **artifactId** | **String**| Artifact ID of the package. | [default to null]
 **version** | **String**| Version of the package. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**MavenPackageVersionDeletionState**](MavenPackageVersionDeletionState.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore Package Version From Recycle Bin**
> restore Package Version From Recycle Bin(organization, feed, groupId, artifactId, version, project, apiVersion, body)



Restore a package version from the recycle bin to its associated feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MavenApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feed = feed_example; // String | Name or ID of the feed.
var groupId = groupId_example; // String | Group ID of the package.
var artifactId = artifactId_example; // String | Artifact ID of the package.
var version = version_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = MavenRecycleBinPackageVersionDetails(); // MavenRecycleBinPackageVersionDetails | Set the 'Deleted' property to false to restore the package.

try { 
    api_instance.restore Package Version From Recycle Bin(organization, feed, groupId, artifactId, version, project, apiVersion, body);
} catch (e) {
    print("Exception when calling MavenApi->restore Package Version From Recycle Bin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feed** | **String**| Name or ID of the feed. | [default to null]
 **groupId** | **String**| Group ID of the package. | [default to null]
 **artifactId** | **String**| Artifact ID of the package. | [default to null]
 **version** | **String**| Version of the package. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**MavenRecycleBinPackageVersionDetails**](MavenRecycleBinPackageVersionDetails.md)| Set the &#39;Deleted&#39; property to false to restore the package. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

