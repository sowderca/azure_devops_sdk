# azure_devops_sdk.api.FeedManagementApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create Feed**](FeedManagementApi.md#create Feed) | **POST** /{organization}/{project}/_apis/packaging/feeds | 
[**create Feed View**](FeedManagementApi.md#create Feed View) | **POST** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/views | 
[**delete Feed**](FeedManagementApi.md#delete Feed) | **DELETE** /{organization}/{project}/_apis/packaging/feeds/{feedId} | 
[**delete Feed View**](FeedManagementApi.md#delete Feed View) | **DELETE** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/views/{viewId} | 
[**get Feed**](FeedManagementApi.md#get Feed) | **GET** /{organization}/{project}/_apis/packaging/feeds/{feedId} | 
[**get Feed Permissions**](FeedManagementApi.md#get Feed Permissions) | **GET** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/permissions | 
[**get Feed View**](FeedManagementApi.md#get Feed View) | **GET** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/views/{viewId} | 
[**get Feed Views**](FeedManagementApi.md#get Feed Views) | **GET** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/views | 
[**get Feeds**](FeedManagementApi.md#get Feeds) | **GET** /{organization}/{project}/_apis/packaging/feeds | 
[**set Feed Permissions**](FeedManagementApi.md#set Feed Permissions) | **PATCH** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/permissions | 
[**update Feed**](FeedManagementApi.md#update Feed) | **PATCH** /{organization}/{project}/_apis/packaging/feeds/{feedId} | 
[**update Feed View**](FeedManagementApi.md#update Feed View) | **PATCH** /{organization}/{project}/_apis/packaging/Feeds/{feedId}/views/{viewId} | 


# **create Feed**
> Feed create Feed(organization, project, apiVersion, body)



Create a feed, a container for various package types.  Feeds can be created in a project if the project parameter is included in the request url. If the project parameter is omitted, the feed will not be associated with a project and will be created at the organization level. Creating project-scoped feeds is in prerelease, and may not yet be available in your organization.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FeedManagementApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Feed(); // Feed | A JSON object containing both required and optional attributes for the feed. Name is the only required value.

try { 
    var result = api_instance.create Feed(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling FeedManagementApi->create Feed: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**Feed**](Feed.md)| A JSON object containing both required and optional attributes for the feed. Name is the only required value. | 

### Return type

[**Feed**](Feed.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create Feed View**
> FeedView create Feed View(organization, feedId, project, apiVersion, body)



Create a new view on the referenced feed.  The project parameter must be supplied if the feed was created in a project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FeedManagementApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = FeedView(); // FeedView | View to be created.

try { 
    var result = api_instance.create Feed View(organization, feedId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling FeedManagementApi->create Feed View: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**FeedView**](FeedView.md)| View to be created. | 

### Return type

[**FeedView**](FeedView.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete Feed**
> delete Feed(organization, feedId, project, apiVersion)



Remove a feed and all its packages. The action does not result in packages moving to the RecycleBin and is not reversible.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FeedManagementApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete Feed(organization, feedId, project, apiVersion);
} catch (e) {
    print("Exception when calling FeedManagementApi->delete Feed: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
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

# **delete Feed View**
> delete Feed View(organization, feedId, viewId, project, apiVersion)



Delete a feed view.  The project parameter must be supplied if the feed was created in a project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FeedManagementApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var viewId = viewId_example; // String | Name or Id of the view.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete Feed View(organization, feedId, viewId, project, apiVersion);
} catch (e) {
    print("Exception when calling FeedManagementApi->delete Feed View: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **viewId** | **String**| Name or Id of the view. | [default to null]
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

# **get Feed**
> Feed get Feed(organization, feedId, project, apiVersion, includeDeletedUpstreams)



Get the settings for a specific feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FeedManagementApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeDeletedUpstreams = true; // bool | Include upstreams that have been deleted in the response.

try { 
    var result = api_instance.get Feed(organization, feedId, project, apiVersion, includeDeletedUpstreams);
    print(result);
} catch (e) {
    print("Exception when calling FeedManagementApi->get Feed: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeDeletedUpstreams** | **bool**| Include upstreams that have been deleted in the response. | [optional] [default to null]

### Return type

[**Feed**](Feed.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Feed Permissions**
> List<FeedPermission> get Feed Permissions(organization, feedId, project, apiVersion, includeIds, excludeInheritedPermissions, identityDescriptor)



Get the permissions for a feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FeedManagementApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeIds = true; // bool | True to include user Ids in the response.  Default is false.
var excludeInheritedPermissions = true; // bool | True to only return explicitly set permissions on the feed.  Default is false.
var identityDescriptor = identityDescriptor_example; // String | Filter permissions to the provided identity.

try { 
    var result = api_instance.get Feed Permissions(organization, feedId, project, apiVersion, includeIds, excludeInheritedPermissions, identityDescriptor);
    print(result);
} catch (e) {
    print("Exception when calling FeedManagementApi->get Feed Permissions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeIds** | **bool**| True to include user Ids in the response.  Default is false. | [optional] [default to null]
 **excludeInheritedPermissions** | **bool**| True to only return explicitly set permissions on the feed.  Default is false. | [optional] [default to null]
 **identityDescriptor** | **String**| Filter permissions to the provided identity. | [optional] [default to null]

### Return type

[**List<FeedPermission>**](FeedPermission.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Feed View**
> FeedView get Feed View(organization, feedId, viewId, project, apiVersion)



Get a view by Id.  The project parameter must be supplied if the feed was created in a project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FeedManagementApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var viewId = viewId_example; // String | Name or Id of the view.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Feed View(organization, feedId, viewId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling FeedManagementApi->get Feed View: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **viewId** | **String**| Name or Id of the view. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**FeedView**](FeedView.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Feed Views**
> List<FeedView> get Feed Views(organization, feedId, project, apiVersion)



Get all views for a feed.  The project parameter must be supplied if the feed was created in a project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FeedManagementApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Feed Views(organization, feedId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling FeedManagementApi->get Feed Views: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<FeedView>**](FeedView.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Feeds**
> List<Feed> get Feeds(organization, project, apiVersion, feedRole, includeDeletedUpstreams)



Get all feeds in an account where you have the provided role access.  If the project parameter is present, gets all feeds in the given project. If omitted, gets all feeds in the organization.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FeedManagementApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var feedRole = feedRole_example; // String | Filter by this role, either Administrator(4), Contributor(3), or Reader(2) level permissions.
var includeDeletedUpstreams = true; // bool | Include upstreams that have been deleted in the response.

try { 
    var result = api_instance.get Feeds(organization, project, apiVersion, feedRole, includeDeletedUpstreams);
    print(result);
} catch (e) {
    print("Exception when calling FeedManagementApi->get Feeds: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **feedRole** | **String**| Filter by this role, either Administrator(4), Contributor(3), or Reader(2) level permissions. | [optional] [default to null]
 **includeDeletedUpstreams** | **bool**| Include upstreams that have been deleted in the response. | [optional] [default to null]

### Return type

[**List<Feed>**](Feed.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set Feed Permissions**
> List<FeedPermission> set Feed Permissions(organization, feedId, project, apiVersion, body)



Update the permissions on a feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FeedManagementApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = [List&lt;FeedPermission&gt;()]; // List<FeedPermission> | Permissions to set.

try { 
    var result = api_instance.set Feed Permissions(organization, feedId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling FeedManagementApi->set Feed Permissions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;FeedPermission&gt;**](FeedPermission.md)| Permissions to set. | 

### Return type

[**List<FeedPermission>**](FeedPermission.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Feed**
> Feed update Feed(organization, feedId, project, apiVersion, body)



Change the attributes of a feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FeedManagementApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = FeedUpdate(); // FeedUpdate | A JSON object containing the feed settings to be updated.

try { 
    var result = api_instance.update Feed(organization, feedId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling FeedManagementApi->update Feed: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**FeedUpdate**](FeedUpdate.md)| A JSON object containing the feed settings to be updated. | 

### Return type

[**Feed**](Feed.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Feed View**
> FeedView update Feed View(organization, feedId, viewId, project, apiVersion, body)



Update a view.  The project parameter must be supplied if the feed was created in a project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FeedManagementApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var feedId = feedId_example; // String | Name or Id of the feed.
var viewId = viewId_example; // String | Name or Id of the view.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = FeedView(); // FeedView | New settings to apply to the specified view.

try { 
    var result = api_instance.update Feed View(organization, feedId, viewId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling FeedManagementApi->update Feed View: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **feedId** | **String**| Name or Id of the feed. | [default to null]
 **viewId** | **String**| Name or Id of the view. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**FeedView**](FeedView.md)| New settings to apply to the specified view. | 

### Return type

[**FeedView**](FeedView.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

