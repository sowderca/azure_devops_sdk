# azure_devops_sdk.api.PythonApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete Package Version**](PythonApi.md#delete Package Version) | **DELETE** /{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/packages/{packageName}/versions/{packageVersion} | 
[**delete Package Version From Recycle Bin**](PythonApi.md#delete Package Version From Recycle Bin) | **DELETE** /{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/RecycleBin/packages/{packageName}/versions/{packageVersion} | 
[**download Package**](PythonApi.md#download Package) | **GET** /{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/packages/{packageName}/versions/{packageVersion}/{fileName}/content | 
[**get Package Version**](PythonApi.md#get Package Version) | **GET** /{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/packages/{packageName}/versions/{packageVersion} | 
[**getPackageVersionFromRecycleBin**](PythonApi.md#getPackageVersionFromRecycleBin) | **GET** /{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/RecycleBin/packages/{packageName}/versions/{packageVersion} | 
[**restore Package Version From Recycle Bin**](PythonApi.md#restore Package Version From Recycle Bin) | **PATCH** /{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/RecycleBin/packages/{packageName}/versions/{packageVersion} | 
[**update Package Version**](PythonApi.md#update Package Version) | **PATCH** /{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/packages/{packageName}/versions/{packageVersion} | 


# **delete Package Version**
> Package delete Package Version(organization, feedId, packageName, packageVersion, project, apiVersion)



Delete a package version, moving it to the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PythonApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.delete Package Version(organization, feedId, packageName, packageVersion, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PythonApi->delete Package Version: $e\n");
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

[**Package**](Package.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete Package Version From Recycle Bin**
> delete Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, project, apiVersion)



Delete a package version from the feed, moving it to the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PythonApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, project, apiVersion);
} catch (e) {
    print("Exception when calling PythonApi->delete Package Version From Recycle Bin: $e\n");
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
> String download Package(organization, feedId, packageName, packageVersion, fileName, project, apiVersion)



Download a python package file directly. This API is intended for manual UI download options, not for programmatic access and scripting.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PythonApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var fileName = fileName_example; // String | Name of the file in the package
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.download Package(organization, feedId, packageName, packageVersion, fileName, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PythonApi->download Package: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package. | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **fileName** | **String**| Name of the file in the package | [default to null]
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
> Package get Package Version(organization, feedId, packageName, packageVersion, project, apiVersion, showDeleted)



Get information about a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PythonApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var showDeleted = true; // bool | True to show information for deleted package versions.

try { 
    var result = api_instance.get Package Version(organization, feedId, packageName, packageVersion, project, apiVersion, showDeleted);
    print(result);
} catch (e) {
    print("Exception when calling PythonApi->get Package Version: $e\n");
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
 **showDeleted** | **bool**| True to show information for deleted package versions. | [optional] [default to null]

### Return type

[**Package**](Package.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackageVersionFromRecycleBin**
> PyPiPackageVersionDeletionState getPackageVersionFromRecycleBin(organization, feedId, packageName, packageVersion, project, apiVersion)



Get information about a package version in the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PythonApi();
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
    print("Exception when calling PythonApi->getPackageVersionFromRecycleBin: $e\n");
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

[**PyPiPackageVersionDeletionState**](PyPiPackageVersionDeletionState.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore Package Version From Recycle Bin**
> restore Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, project, apiVersion, body)



Restore a package version from the recycle bin to its associated feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PythonApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = PyPiRecycleBinPackageVersionDetails(); // PyPiRecycleBinPackageVersionDetails | Set the 'Deleted' state to 'false' to restore the package to its feed.

try { 
    api_instance.restore Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, project, apiVersion, body);
} catch (e) {
    print("Exception when calling PythonApi->restore Package Version From Recycle Bin: $e\n");
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
 **body** | [**PyPiRecycleBinPackageVersionDetails**](PyPiRecycleBinPackageVersionDetails.md)| Set the &#39;Deleted&#39; state to &#39;false&#39; to restore the package to its feed. | 

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



Update state for a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PythonApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = PackageVersionDetails(); // PackageVersionDetails | Details to be updated.

try { 
    api_instance.update Package Version(organization, feedId, packageName, packageVersion, project, apiVersion, body);
} catch (e) {
    print("Exception when calling PythonApi->update Package Version: $e\n");
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
 **body** | [**PackageVersionDetails**](PackageVersionDetails.md)| Details to be updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

