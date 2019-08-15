# azure_devops_sdk.api.NpmApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete Package Version From Recycle Bin**](NpmApi.md#delete Package Version From Recycle Bin) | **DELETE** /{organization}/_apis/packaging/feeds/{feedId}/npm/RecycleBin/packages/{packageName}/versions/{packageVersion} | 
[**delete Scoped Package Version From Recycle Bin**](NpmApi.md#delete Scoped Package Version From Recycle Bin) | **DELETE** /{organization}/_apis/packaging/feeds/{feedId}/npm/RecycleBin/packages/@{packageScope}/{unscopedPackageName}/versions/{packageVersion} | 
[**downloadPackage**](NpmApi.md#downloadPackage) | **GET** /{organization}/_apis/packaging/feeds/{feedId}/npm/packages/{packageName}/versions/{packageVersion}/content | 
[**downloadScopedPackage**](NpmApi.md#downloadScopedPackage) | **GET** /{organization}/_apis/packaging/feeds/{feedId}/npm/packages/@{packageScope}/{unscopedPackageName}/versions/{packageVersion}/content | 
[**getPackageReadme**](NpmApi.md#getPackageReadme) | **GET** /{organization}/_apis/packaging/feeds/{feedId}/npm/packages/{packageName}/versions/{packageVersion}/readme | 
[**getPackageVersion**](NpmApi.md#getPackageVersion) | **GET** /{organization}/_apis/packaging/feeds/{feedId}/npm/{packageName}/versions/{packageVersion} | 
[**getPackageVersionFromRecycleBin**](NpmApi.md#getPackageVersionFromRecycleBin) | **GET** /{organization}/_apis/packaging/feeds/{feedId}/npm/RecycleBin/packages/{packageName}/versions/{packageVersion} | 
[**getScopedPackageReadme**](NpmApi.md#getScopedPackageReadme) | **GET** /{organization}/_apis/packaging/feeds/{feedId}/npm/packages/@{packageScope}/{unscopedPackageName}/versions/{packageVersion}/readme | 
[**getScopedPackageVersion**](NpmApi.md#getScopedPackageVersion) | **GET** /{organization}/_apis/packaging/feeds/{feedId}/npm/@{packageScope}/{unscopedPackageName}/versions/{packageVersion} | 
[**getScopedPackageVersionFromRecycleBin**](NpmApi.md#getScopedPackageVersionFromRecycleBin) | **GET** /{organization}/_apis/packaging/feeds/{feedId}/npm/RecycleBin/packages/@{packageScope}/{unscopedPackageName}/versions/{packageVersion} | 
[**restore Package Version From Recycle Bin**](NpmApi.md#restore Package Version From Recycle Bin) | **PATCH** /{organization}/_apis/packaging/feeds/{feedId}/npm/RecycleBin/packages/{packageName}/versions/{packageVersion} | 
[**restore Scoped Package Version From Recycle Bin**](NpmApi.md#restore Scoped Package Version From Recycle Bin) | **PATCH** /{organization}/_apis/packaging/feeds/{feedId}/npm/RecycleBin/packages/@{packageScope}/{unscopedPackageName}/versions/{packageVersion} | 
[**unpublish Package**](NpmApi.md#unpublish Package) | **DELETE** /{organization}/_apis/packaging/feeds/{feedId}/npm/{packageName}/versions/{packageVersion} | 
[**unpublish Scoped Package**](NpmApi.md#unpublish Scoped Package) | **DELETE** /{organization}/_apis/packaging/feeds/{feedId}/npm/@{packageScope}/{unscopedPackageName}/versions/{packageVersion} | 
[**update Package**](NpmApi.md#update Package) | **PATCH** /{organization}/_apis/packaging/feeds/{feedId}/npm/{packageName}/versions/{packageVersion} | 
[**update Packages**](NpmApi.md#update Packages) | **POST** /{organization}/_apis/packaging/feeds/{feedId}/npm/packagesbatch | 
[**update Scoped Package**](NpmApi.md#update Scoped Package) | **PATCH** /{organization}/_apis/packaging/feeds/{feedId}/npm/@{packageScope}/{unscopedPackageName}/versions/{packageVersion} | 


# **delete Package Version From Recycle Bin**
> delete Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, apiVersion)



Delete a package version without an npm scope from the recycle bin.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, apiVersion);
} catch (e) {
    print("Exception when calling NpmApi->delete Package Version From Recycle Bin: $e\n");
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

# **delete Scoped Package Version From Recycle Bin**
> delete Scoped Package Version From Recycle Bin(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion)



Delete a package version with an npm scope from the recycle bin.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageScope = packageScope_example; // String | Scope of the package (the 'scope' part of @scope/name).
var unscopedPackageName = unscopedPackageName_example; // String | Name of the package (the 'name' part of @scope/name).
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete Scoped Package Version From Recycle Bin(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion);
} catch (e) {
    print("Exception when calling NpmApi->delete Scoped Package Version From Recycle Bin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageScope** | **String**| Scope of the package (the &#39;scope&#39; part of @scope/name). | [default to null]
 **unscopedPackageName** | **String**| Name of the package (the &#39;name&#39; part of @scope/name). | [default to null]
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

# **downloadPackage**
> String downloadPackage(organization, feedId, packageName, packageVersion, apiVersion)



Get an unscoped npm package.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.downloadPackage(organization, feedId, packageName, packageVersion, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NpmApi->downloadPackage: $e\n");
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

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadScopedPackage**
> String downloadScopedPackage(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | 
var packageScope = packageScope_example; // String | 
var unscopedPackageName = unscopedPackageName_example; // String | 
var packageVersion = packageVersion_example; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.downloadScopedPackage(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NpmApi->downloadScopedPackage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**|  | [default to null]
 **packageScope** | **String**|  | [default to null]
 **unscopedPackageName** | **String**|  | [default to null]
 **packageVersion** | **String**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackageReadme**
> String getPackageReadme(organization, feedId, packageName, packageVersion, apiVersion)



Get the Readme for a package version that has no npm scope.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.getPackageReadme(organization, feedId, packageName, packageVersion, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NpmApi->getPackageReadme: $e\n");
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

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackageVersion**
> Package getPackageVersion(organization, feedId, packageName, packageVersion, apiVersion)



Get information about an unscoped package version.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.getPackageVersion(organization, feedId, packageName, packageVersion, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NpmApi->getPackageVersion: $e\n");
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

# **getPackageVersionFromRecycleBin**
> NpmPackageVersionDeletionState getPackageVersionFromRecycleBin(organization, feedId, packageName, packageVersion, apiVersion)



Get information about an unscoped package version in the recycle bin.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.getPackageVersionFromRecycleBin(organization, feedId, packageName, packageVersion, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NpmApi->getPackageVersionFromRecycleBin: $e\n");
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

[**NpmPackageVersionDeletionState**](NpmPackageVersionDeletionState.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScopedPackageReadme**
> String getScopedPackageReadme(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion)



Get the Readme for a package version with an npm scope.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageScope = packageScope_example; // String | Scope of the package (the 'scope' part of @scope\\name)
var unscopedPackageName = unscopedPackageName_example; // String | Name of the package (the 'name' part of @scope\\name)
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.getScopedPackageReadme(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NpmApi->getScopedPackageReadme: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageScope** | **String**| Scope of the package (the &#39;scope&#39; part of @scope\\name) | [default to null]
 **unscopedPackageName** | **String**| Name of the package (the &#39;name&#39; part of @scope\\name) | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScopedPackageVersion**
> Package getScopedPackageVersion(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion)



Get information about a scoped package version (such as @scope/name).

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageScope = packageScope_example; // String | Scope of the package (the 'scope' part of @scope/name).
var unscopedPackageName = unscopedPackageName_example; // String | Name of the package (the 'name' part of @scope/name).
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.getScopedPackageVersion(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NpmApi->getScopedPackageVersion: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageScope** | **String**| Scope of the package (the &#39;scope&#39; part of @scope/name). | [default to null]
 **unscopedPackageName** | **String**| Name of the package (the &#39;name&#39; part of @scope/name). | [default to null]
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

# **getScopedPackageVersionFromRecycleBin**
> NpmPackageVersionDeletionState getScopedPackageVersionFromRecycleBin(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion)



Get information about a scoped package version in the recycle bin.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageScope = packageScope_example; // String | Scope of the package (the 'scope' part of @scope/name)
var unscopedPackageName = unscopedPackageName_example; // String | Name of the package (the 'name' part of @scope/name).
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.getScopedPackageVersionFromRecycleBin(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NpmApi->getScopedPackageVersionFromRecycleBin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageScope** | **String**| Scope of the package (the &#39;scope&#39; part of @scope/name) | [default to null]
 **unscopedPackageName** | **String**| Name of the package (the &#39;name&#39; part of @scope/name). | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**NpmPackageVersionDeletionState**](NpmPackageVersionDeletionState.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore Package Version From Recycle Bin**
> restore Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, apiVersion, body)



Restore a package version without an npm scope from the recycle bin to its feed.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = NpmRecycleBinPackageVersionDetails(); // NpmRecycleBinPackageVersionDetails | 

try { 
    api_instance.restore Package Version From Recycle Bin(organization, feedId, packageName, packageVersion, apiVersion, body);
} catch (e) {
    print("Exception when calling NpmApi->restore Package Version From Recycle Bin: $e\n");
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
 **body** | [**NpmRecycleBinPackageVersionDetails**](NpmRecycleBinPackageVersionDetails.md)|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore Scoped Package Version From Recycle Bin**
> restore Scoped Package Version From Recycle Bin(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion, body)



Restore a package version with an npm scope from the recycle bin to its feed.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageScope = packageScope_example; // String | Scope of the package (the 'scope' part of @scope/name).
var unscopedPackageName = unscopedPackageName_example; // String | Name of the package (the 'name' part of @scope/name).
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = NpmRecycleBinPackageVersionDetails(); // NpmRecycleBinPackageVersionDetails | 

try { 
    api_instance.restore Scoped Package Version From Recycle Bin(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion, body);
} catch (e) {
    print("Exception when calling NpmApi->restore Scoped Package Version From Recycle Bin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageScope** | **String**| Scope of the package (the &#39;scope&#39; part of @scope/name). | [default to null]
 **unscopedPackageName** | **String**| Name of the package (the &#39;name&#39; part of @scope/name). | [default to null]
 **packageVersion** | **String**| Version of the package. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**NpmRecycleBinPackageVersionDetails**](NpmRecycleBinPackageVersionDetails.md)|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unpublish Package**
> Package unpublish Package(organization, feedId, packageName, packageVersion, apiVersion)



Unpublish an unscoped package version.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageName = packageName_example; // String | Name of the package.
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.unpublish Package(organization, feedId, packageName, packageVersion, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NpmApi->unpublish Package: $e\n");
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

# **unpublish Scoped Package**
> Package unpublish Scoped Package(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion)



Unpublish a scoped package version (such as @scope/name).

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var packageScope = packageScope_example; // String | Scope of the package (the 'scope' part of @scope/name).
var unscopedPackageName = unscopedPackageName_example; // String | Name of the package (the 'name' part of @scope/name).
var packageVersion = packageVersion_example; // String | Version of the package.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.unpublish Scoped Package(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NpmApi->unpublish Scoped Package: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **packageScope** | **String**| Scope of the package (the &#39;scope&#39; part of @scope/name). | [default to null]
 **unscopedPackageName** | **String**| Name of the package (the &#39;name&#39; part of @scope/name). | [default to null]
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

# **update Package**
> Package update Package(organization, feedId, packageName, packageVersion, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | 
var packageName = packageName_example; // String | 
var packageVersion = packageVersion_example; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = PackageVersionDetails(); // PackageVersionDetails | 

try { 
    var result = api_instance.update Package(organization, feedId, packageName, packageVersion, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling NpmApi->update Package: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**|  | [default to null]
 **packageName** | **String**|  | [default to null]
 **packageVersion** | **String**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**PackageVersionDetails**](PackageVersionDetails.md)|  | 

### Return type

[**Package**](Package.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Packages**
> update Packages(organization, feedId, apiVersion, body)



Update several packages from a single feed in a single request. The updates to the packages do not happen atomically.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or ID of the feed.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = NpmPackagesBatchRequest(); // NpmPackagesBatchRequest | Information about the packages to update, the operation to perform, and its associated data.

try { 
    api_instance.update Packages(organization, feedId, apiVersion, body);
} catch (e) {
    print("Exception when calling NpmApi->update Packages: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or ID of the feed. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**NpmPackagesBatchRequest**](NpmPackagesBatchRequest.md)| Information about the packages to update, the operation to perform, and its associated data. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Scoped Package**
> Package update Scoped Package(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NpmApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | 
var packageScope = packageScope_example; // String | 
var unscopedPackageName = unscopedPackageName_example; // String | 
var packageVersion = packageVersion_example; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = PackageVersionDetails(); // PackageVersionDetails | 

try { 
    var result = api_instance.update Scoped Package(organization, feedId, packageScope, unscopedPackageName, packageVersion, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling NpmApi->update Scoped Package: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**|  | [default to null]
 **packageScope** | **String**|  | [default to null]
 **unscopedPackageName** | **String**|  | [default to null]
 **packageVersion** | **String**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**PackageVersionDetails**](PackageVersionDetails.md)|  | 

### Return type

[**Package**](Package.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

