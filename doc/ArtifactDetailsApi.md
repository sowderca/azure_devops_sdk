# azure_devops_sdk.api.ArtifactDetailsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Badge**](ArtifactDetailsApi.md#get Badge) | **GET** /{organization}/{project}/_apis/public/packaging/Feeds/{feedId}/Packages/{packageId}/badge | 
[**get Package**](ArtifactDetailsApi.md#get Package) | **GET** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/packages/{packageId} | 
[**get Package Version**](ArtifactDetailsApi.md#get Package Version) | **GET** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/Packages/{packageId}/versions/{packageVersionId} | 
[**get Package Versions**](ArtifactDetailsApi.md#get Package Versions) | **GET** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/Packages/{packageId}/versions | 
[**get Packages**](ArtifactDetailsApi.md#get Packages) | **GET** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/packages | 
[**getPackageVersionProvenance**](ArtifactDetailsApi.md#getPackageVersionProvenance) | **GET** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/Packages/{packageId}/Versions/{packageVersionId}/provenance | 
[**query Package Metrics**](ArtifactDetailsApi.md#query Package Metrics) | **POST** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/packagemetricsbatch | 
[**query Package Version Metrics**](ArtifactDetailsApi.md#query Package Version Metrics) | **POST** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/Packages/{packageId}/versionmetricsbatch | 


# **get Badge**
> String get Badge(organization, feedId, packageId, project, apiVersion)



Generate a SVG badge for the latest version of a package.  The generated SVG is typically used as the image in an HTML link which takes users to the feed containing the package to accelerate discovery and consumption.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = ArtifactDetailsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var packageId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the package (GUID Id, not name).
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Badge(organization, feedId, packageId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ArtifactDetailsApi->get Badge: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **packageId** | [**String**](.md)| Id of the package (GUID Id, not name). | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Package**
> Package get Package(organization, feedId, packageId, project, apiVersion, includeAllVersions, includeUrls, isListed, isRelease, includeDeleted, includeDescription)



Get details about a specific package.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArtifactDetailsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var packageId = packageId_example; // String | The package Id (GUID Id, not the package name).
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeAllVersions = true; // bool | True to return all versions of the package in the response. Default is false (latest version only).
var includeUrls = true; // bool | True to return REST Urls with the response. Default is True.
var isListed = true; // bool | Only applicable for NuGet packages, setting it for other package types will result in a 404. If false, delisted package versions will be returned. Use this to filter the response when includeAllVersions is set to true. Default is unset (do not return delisted packages).
var isRelease = true; // bool | Only applicable for Nuget packages. Use this to filter the response when includeAllVersions is set to true.  Default is True (only return packages without prerelease versioning).
var includeDeleted = true; // bool | Return deleted or unpublished versions of packages in the response. Default is False.
var includeDescription = true; // bool | Return the description for every version of each package in the response. Default is False.

try { 
    var result = api_instance.get Package(organization, feedId, packageId, project, apiVersion, includeAllVersions, includeUrls, isListed, isRelease, includeDeleted, includeDescription);
    print(result);
} catch (e) {
    print("Exception when calling ArtifactDetailsApi->get Package: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **packageId** | **String**| The package Id (GUID Id, not the package name). | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeAllVersions** | **bool**| True to return all versions of the package in the response. Default is false (latest version only). | [optional] [default to null]
 **includeUrls** | **bool**| True to return REST Urls with the response. Default is True. | [optional] [default to null]
 **isListed** | **bool**| Only applicable for NuGet packages, setting it for other package types will result in a 404. If false, delisted package versions will be returned. Use this to filter the response when includeAllVersions is set to true. Default is unset (do not return delisted packages). | [optional] [default to null]
 **isRelease** | **bool**| Only applicable for Nuget packages. Use this to filter the response when includeAllVersions is set to true.  Default is True (only return packages without prerelease versioning). | [optional] [default to null]
 **includeDeleted** | **bool**| Return deleted or unpublished versions of packages in the response. Default is False. | [optional] [default to null]
 **includeDescription** | **bool**| Return the description for every version of each package in the response. Default is False. | [optional] [default to null]

### Return type

[**Package**](Package.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Package Version**
> PackageVersion get Package Version(organization, feedId, packageId, packageVersionId, project, apiVersion, includeUrls, isListed, isDeleted)



Get details about a specific package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArtifactDetailsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var packageId = packageId_example; // String | Id of the package (GUID Id, not name).
var packageVersionId = packageVersionId_example; // String | Id of the package version (GUID Id, not name).
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeUrls = true; // bool | True to include urls for each version. Default is true.
var isListed = true; // bool | Only applicable for NuGet packages. If false, delisted package versions will be returned.
var isDeleted = true; // bool | This does not have any effect on the requested package version, for other versions returned specifies whether to return only deleted or non-deleted versions of packages in the response. Default is unset (return all versions).

try { 
    var result = api_instance.get Package Version(organization, feedId, packageId, packageVersionId, project, apiVersion, includeUrls, isListed, isDeleted);
    print(result);
} catch (e) {
    print("Exception when calling ArtifactDetailsApi->get Package Version: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **packageId** | **String**| Id of the package (GUID Id, not name). | [default to null]
 **packageVersionId** | **String**| Id of the package version (GUID Id, not name). | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeUrls** | **bool**| True to include urls for each version. Default is true. | [optional] [default to null]
 **isListed** | **bool**| Only applicable for NuGet packages. If false, delisted package versions will be returned. | [optional] [default to null]
 **isDeleted** | **bool**| This does not have any effect on the requested package version, for other versions returned specifies whether to return only deleted or non-deleted versions of packages in the response. Default is unset (return all versions). | [optional] [default to null]

### Return type

[**PackageVersion**](PackageVersion.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Package Versions**
> List<PackageVersion> get Package Versions(organization, feedId, packageId, project, apiVersion, includeUrls, isListed, isDeleted)



Get a list of package versions, optionally filtering by state.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArtifactDetailsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var packageId = packageId_example; // String | Id of the package (GUID Id, not name).
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeUrls = true; // bool | True to include urls for each version. Default is true.
var isListed = true; // bool | Only applicable for NuGet packages. If false, delisted package versions will be returned.
var isDeleted = true; // bool | If set specifies whether to return only deleted or non-deleted versions of packages in the response. Default is unset (return all versions).

try { 
    var result = api_instance.get Package Versions(organization, feedId, packageId, project, apiVersion, includeUrls, isListed, isDeleted);
    print(result);
} catch (e) {
    print("Exception when calling ArtifactDetailsApi->get Package Versions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **packageId** | **String**| Id of the package (GUID Id, not name). | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeUrls** | **bool**| True to include urls for each version. Default is true. | [optional] [default to null]
 **isListed** | **bool**| Only applicable for NuGet packages. If false, delisted package versions will be returned. | [optional] [default to null]
 **isDeleted** | **bool**| If set specifies whether to return only deleted or non-deleted versions of packages in the response. Default is unset (return all versions). | [optional] [default to null]

### Return type

[**List<PackageVersion>**](PackageVersion.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Packages**
> List<Package> get Packages(organization, feedId, project, apiVersion, protocolType, packageNameQuery, normalizedPackageName, includeUrls, includeAllVersions, isListed, getTopPackageVersions, isRelease, includeDescription, $top, $skip, includeDeleted, isCached, directUpstreamId)



Get details about all of the packages in the feed. Use the various filters to include or exclude information from the result set.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArtifactDetailsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var protocolType = protocolType_example; // String | One of the supported artifact package types.
var packageNameQuery = packageNameQuery_example; // String | Filter to packages that contain the provided string. Characters in the string must conform to the package name constraints.
var normalizedPackageName = normalizedPackageName_example; // String | [Obsolete] Used for legacy scenarios and may be removed in future versions.
var includeUrls = true; // bool | True to return REST Urls with the response. Default is True.
var includeAllVersions = true; // bool | True to return all versions of the package in the response. Default is false (latest version only).
var isListed = true; // bool | Only applicable for NuGet packages, setting it for other package types will result in a 404. If false, delisted package versions will be returned. Use this to filter the response when includeAllVersions is set to true. Default is unset (do not return delisted packages).
var getTopPackageVersions = true; // bool | Changes the behavior of $top and $skip to return all versions of each package up to $top. Must be used in conjunction with includeAllVersions=true
var isRelease = true; // bool | Only applicable for Nuget packages. Use this to filter the response when includeAllVersions is set to true. Default is True (only return packages without prerelease versioning).
var includeDescription = true; // bool | Return the description for every version of each package in the response. Default is False.
var $top = 56; // int | Get the top N packages (or package versions where getTopPackageVersions=true)
var $skip = 56; // int | Skip the first N packages (or package versions where getTopPackageVersions=true)
var includeDeleted = true; // bool | Return deleted or unpublished versions of packages in the response. Default is False.
var isCached = true; // bool | [Obsolete] Used for legacy scenarios and may be removed in future versions.
var directUpstreamId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter results to return packages from a specific upstream.

try { 
    var result = api_instance.get Packages(organization, feedId, project, apiVersion, protocolType, packageNameQuery, normalizedPackageName, includeUrls, includeAllVersions, isListed, getTopPackageVersions, isRelease, includeDescription, $top, $skip, includeDeleted, isCached, directUpstreamId);
    print(result);
} catch (e) {
    print("Exception when calling ArtifactDetailsApi->get Packages: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **protocolType** | **String**| One of the supported artifact package types. | [optional] [default to null]
 **packageNameQuery** | **String**| Filter to packages that contain the provided string. Characters in the string must conform to the package name constraints. | [optional] [default to null]
 **normalizedPackageName** | **String**| [Obsolete] Used for legacy scenarios and may be removed in future versions. | [optional] [default to null]
 **includeUrls** | **bool**| True to return REST Urls with the response. Default is True. | [optional] [default to null]
 **includeAllVersions** | **bool**| True to return all versions of the package in the response. Default is false (latest version only). | [optional] [default to null]
 **isListed** | **bool**| Only applicable for NuGet packages, setting it for other package types will result in a 404. If false, delisted package versions will be returned. Use this to filter the response when includeAllVersions is set to true. Default is unset (do not return delisted packages). | [optional] [default to null]
 **getTopPackageVersions** | **bool**| Changes the behavior of $top and $skip to return all versions of each package up to $top. Must be used in conjunction with includeAllVersions&#x3D;true | [optional] [default to null]
 **isRelease** | **bool**| Only applicable for Nuget packages. Use this to filter the response when includeAllVersions is set to true. Default is True (only return packages without prerelease versioning). | [optional] [default to null]
 **includeDescription** | **bool**| Return the description for every version of each package in the response. Default is False. | [optional] [default to null]
 **$top** | **int**| Get the top N packages (or package versions where getTopPackageVersions&#x3D;true) | [optional] [default to null]
 **$skip** | **int**| Skip the first N packages (or package versions where getTopPackageVersions&#x3D;true) | [optional] [default to null]
 **includeDeleted** | **bool**| Return deleted or unpublished versions of packages in the response. Default is False. | [optional] [default to null]
 **isCached** | **bool**| [Obsolete] Used for legacy scenarios and may be removed in future versions. | [optional] [default to null]
 **directUpstreamId** | [**String**](.md)| Filter results to return packages from a specific upstream. | [optional] [default to null]

### Return type

[**List<Package>**](Package.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackageVersionProvenance**
> PackageVersionProvenance getPackageVersionProvenance(organization, feedId, packageId, packageVersionId, project, apiVersion)



Gets provenance for a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArtifactDetailsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var packageId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the package (GUID Id, not name).
var packageVersionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the package version (GUID Id, not name).
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.getPackageVersionProvenance(organization, feedId, packageId, packageVersionId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ArtifactDetailsApi->getPackageVersionProvenance: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **packageId** | [**String**](.md)| Id of the package (GUID Id, not name). | [default to null]
 **packageVersionId** | [**String**](.md)| Id of the package version (GUID Id, not name). | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**PackageVersionProvenance**](PackageVersionProvenance.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query Package Metrics**
> List<PackageMetrics> query Package Metrics(organization, feedId, project, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArtifactDetailsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | 
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = PackageMetricsQuery(); // PackageMetricsQuery | 

try { 
    var result = api_instance.query Package Metrics(organization, feedId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ArtifactDetailsApi->query Package Metrics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**|  | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**PackageMetricsQuery**](PackageMetricsQuery.md)|  | 

### Return type

[**List<PackageMetrics>**](PackageMetrics.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query Package Version Metrics**
> List<PackageVersionMetrics> query Package Version Metrics(organization, feedId, packageId, project, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArtifactDetailsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | 
var packageId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = PackageVersionMetricsQuery(); // PackageVersionMetricsQuery | 

try { 
    var result = api_instance.query Package Version Metrics(organization, feedId, packageId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ArtifactDetailsApi->query Package Version Metrics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**|  | [default to null]
 **packageId** | [**String**](.md)|  | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**PackageVersionMetricsQuery**](PackageVersionMetricsQuery.md)|  | 

### Return type

[**List<PackageVersionMetrics>**](PackageVersionMetrics.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

