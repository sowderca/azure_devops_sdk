# azure_devops_sdk.api.UniversalApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete Package Version**](UniversalApi.md#delete Package Version) | **DELETE** /{organization}/_apis/packaging/feeds/{feedId}/upack/packages/{packageName}/versions/{packageVersion} | 
[**delete Package Version From Recycle Bin**](UniversalApi.md#delete Package Version From Recycle Bin) | **DELETE** /{organization}/_apis/packaging/feeds/{feedId}/upack/RecycleBin/packages/{packageName}/versions/{packageVersion} | 
[**get Package Version**](UniversalApi.md#get Package Version) | **GET** /{organization}/_apis/packaging/feeds/{feedId}/upack/packages/{packageName}/versions/{packageVersion} | 
[**getPackageVersionFromRecycleBin**](UniversalApi.md#getPackageVersionFromRecycleBin) | **GET** /{organization}/_apis/packaging/feeds/{feedId}/upack/RecycleBin/packages/{packageName}/versions/{packageVersion} | 
[**restore Package Version From Recycle Bin**](UniversalApi.md#restore Package Version From Recycle Bin) | **PATCH** /{organization}/_apis/packaging/feeds/{feedId}/upack/RecycleBin/packages/{packageName}/versions/{packageVersion} | 
[**update Package Version**](UniversalApi.md#update Package Version) | **PATCH** /{organization}/_apis/packaging/feeds/{feedId}/upack/packages/{packageName}/versions/{packageVersion} | 


# **delete Package Version**
> Package delete Package Version(organization, feedId, packageName, packageVersion, apiVersion)



Delete a package version from a feed's recycle bin.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UniversalApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.delete Package Version(organization, feedId, packageName, packageVersion, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling UniversalApi->delete Package Version: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package. | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
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
> delete Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, apiVersion)



Delete a package version from the recycle bin.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UniversalApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, apiVersion);
} catch (e) {
    print("Exception when calling UniversalApi->delete Package Version From Recycle Bin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package. | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Package Version**
> Package get Package Version(organization, feedId, packageName, packageVersion, apiVersion, showDeleted)



Show information about a package version.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UniversalApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var showDeleted = true; // bool | True to show information for deleted versions

try { 
    var result = api_instance.get Package Version(organization, feedId, packageName, packageVersion, apiVersion, showDeleted);
    print(result);
} catch (e) {
    print("Exception when calling UniversalApi->get Package Version: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package. | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **showDeleted** | **bool**| True to show information for deleted versions | [optional] [default to null]

### Return type

[**Package**](Package.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackageVersionFromRecycleBin**
> UPackPackageVersionDeletionState getPackageVersionFromRecycleBin(organization, feedId, packageName, packageVersion, apiVersion)



Get information about a package version in the recycle bin.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UniversalApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.getPackageVersionFromRecycleBin(organization, feedId, packageName, packageVersion, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling UniversalApi->getPackageVersionFromRecycleBin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package. | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**UPackPackageVersionDeletionState**](UPackPackageVersionDeletionState.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore Package Version From Recycle Bin**
> restore Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, apiVersion, body)



Restore a package version from the recycle bin to its associated feed.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UniversalApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = UPackRecycleBinPackageVersionDetails(); // UPackRecycleBinPackageVersionDetails | Set the 'Deleted' property to 'false' to restore the package.

try { 
    api_instance.restore Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, apiVersion, body);
} catch (e) {
    print("Exception when calling UniversalApi->restore Package Version From Recycle Bin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package. | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**UPackRecycleBinPackageVersionDetails**](UPackRecycleBinPackageVersionDetails.md)| Set the &#39;Deleted&#39; property to &#39;false&#39; to restore the package. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Package Version**
> update Package Version(organization, feedId, packageName, packageVersion, apiVersion, body)



Update information for a package version.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UniversalApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = PackageVersionDetails(); // PackageVersionDetails | 

try { 
    api_instance.update Package Version(organization, feedId, packageName, packageVersion, apiVersion, body);
} catch (e) {
    print("Exception when calling UniversalApi->update Package Version: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageName** | **String**| Name of the package. | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**PackageVersionDetails**](PackageVersionDetails.md)|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

