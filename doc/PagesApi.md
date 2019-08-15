# azure_devops_sdk.api.PagesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](PagesApi.md#add) | **POST** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/pages | 
[**create Or Update**](PagesApi.md#create Or Update) | **PUT** /{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pages | 
[**delete Page**](PagesApi.md#delete Page) | **DELETE** /{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pages | 
[**delete Page By Id**](PagesApi.md#delete Page By Id) | **DELETE** /{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pages/{id} | 
[**get Page**](PagesApi.md#get Page) | **GET** /{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pages | 
[**get Page By Id**](PagesApi.md#get Page By Id) | **GET** /{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pages/{id} | 
[**remove Page**](PagesApi.md#remove Page) | **DELETE** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/pages/{pageId} | 
[**update**](PagesApi.md#update) | **PATCH** /{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pages/{id} | 
[**update_0**](PagesApi.md#update_0) | **PATCH** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/pages | 


# **add**
> Page add(organization, processId, witRefName, apiVersion, body)



Adds a page to the work item form.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PagesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Page(); // Page | The page.

try { 
    var result = api_instance.add(organization, processId, witRefName, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PagesApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**Page**](Page.md)| The page. | 

### Return type

[**Page**](Page.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create Or Update**
> WikiPage create Or Update(organization, project, wikiIdentifier, path, version, apiVersion, body, comment, versionDescriptorVersionOptions, versionDescriptorVersion, versionDescriptorVersionType)



Creates or edits a wiki page.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PagesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var wikiIdentifier = wikiIdentifier_example; // String | Wiki Id or name.
var path = path_example; // String | Wiki page path.
var version = version_example; // String | Version of the page on which the change is to be made. Mandatory for `Edit` scenario. To be populated in the If-Match header of the request.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = WikiPageCreateOrUpdateParameters(); // WikiPageCreateOrUpdateParameters | Wiki create or update operation parameters.
var comment = comment_example; // String | Comment to be associated with the page operation.
var versionDescriptorVersionOptions = versionDescriptorVersionOptions_example; // String | Version options - Specify additional modifiers to version (e.g Previous)
var versionDescriptorVersion = versionDescriptorVersion_example; // String | Version string identifier (name of tag/branch, SHA1 of commit)
var versionDescriptorVersionType = versionDescriptorVersionType_example; // String | Version type (branch, tag, or commit). Determines how Id is interpreted

try { 
    var result = api_instance.create Or Update(organization, project, wikiIdentifier, path, version, apiVersion, body, comment, versionDescriptorVersionOptions, versionDescriptorVersion, versionDescriptorVersionType);
    print(result);
} catch (e) {
    print("Exception when calling PagesApi->create Or Update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **wikiIdentifier** | **String**| Wiki Id or name. | [default to null]
 **path** | **String**| Wiki page path. | [default to null]
 **version** | **String**| Version of the page on which the change is to be made. Mandatory for &#x60;Edit&#x60; scenario. To be populated in the If-Match header of the request. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**WikiPageCreateOrUpdateParameters**](WikiPageCreateOrUpdateParameters.md)| Wiki create or update operation parameters. | 
 **comment** | **String**| Comment to be associated with the page operation. | [optional] [default to null]
 **versionDescriptorVersionOptions** | **String**| Version options - Specify additional modifiers to version (e.g Previous) | [optional] [default to null]
 **versionDescriptorVersion** | **String**| Version string identifier (name of tag/branch, SHA1 of commit) | [optional] [default to null]
 **versionDescriptorVersionType** | **String**| Version type (branch, tag, or commit). Determines how Id is interpreted | [optional] [default to null]

### Return type

[**WikiPage**](WikiPage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete Page**
> WikiPage delete Page(organization, project, wikiIdentifier, path, apiVersion, comment, versionDescriptorVersionOptions, versionDescriptorVersion, versionDescriptorVersionType)



Deletes a wiki page.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PagesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var wikiIdentifier = wikiIdentifier_example; // String | Wiki Id or name.
var path = path_example; // String | Wiki page path.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var comment = comment_example; // String | Comment to be associated with this page delete.
var versionDescriptorVersionOptions = versionDescriptorVersionOptions_example; // String | Version options - Specify additional modifiers to version (e.g Previous)
var versionDescriptorVersion = versionDescriptorVersion_example; // String | Version string identifier (name of tag/branch, SHA1 of commit)
var versionDescriptorVersionType = versionDescriptorVersionType_example; // String | Version type (branch, tag, or commit). Determines how Id is interpreted

try { 
    var result = api_instance.delete Page(organization, project, wikiIdentifier, path, apiVersion, comment, versionDescriptorVersionOptions, versionDescriptorVersion, versionDescriptorVersionType);
    print(result);
} catch (e) {
    print("Exception when calling PagesApi->delete Page: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **wikiIdentifier** | **String**| Wiki Id or name. | [default to null]
 **path** | **String**| Wiki page path. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **comment** | **String**| Comment to be associated with this page delete. | [optional] [default to null]
 **versionDescriptorVersionOptions** | **String**| Version options - Specify additional modifiers to version (e.g Previous) | [optional] [default to null]
 **versionDescriptorVersion** | **String**| Version string identifier (name of tag/branch, SHA1 of commit) | [optional] [default to null]
 **versionDescriptorVersionType** | **String**| Version type (branch, tag, or commit). Determines how Id is interpreted | [optional] [default to null]

### Return type

[**WikiPage**](WikiPage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete Page By Id**
> WikiPage delete Page By Id(organization, project, wikiIdentifier, id, apiVersion, comment)



Deletes a wiki page.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PagesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var wikiIdentifier = wikiIdentifier_example; // String | Wiki Id or name.
var id = 56; // int | Wiki page id.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var comment = comment_example; // String | Comment to be associated with this page delete.

try { 
    var result = api_instance.delete Page By Id(organization, project, wikiIdentifier, id, apiVersion, comment);
    print(result);
} catch (e) {
    print("Exception when calling PagesApi->delete Page By Id: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **wikiIdentifier** | **String**| Wiki Id or name. | [default to null]
 **id** | **int**| Wiki page id. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **comment** | **String**| Comment to be associated with this page delete. | [optional] [default to null]

### Return type

[**WikiPage**](WikiPage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Page**
> WikiPage get Page(organization, project, wikiIdentifier, apiVersion, path, recursionLevel, versionDescriptorVersionOptions, versionDescriptorVersion, versionDescriptorVersionType, includeContent)



Gets metadata or content of the wiki page for the provided path. Content negotiation is done based on the `Accept` header sent in the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PagesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var wikiIdentifier = wikiIdentifier_example; // String | Wiki Id or name.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var path = path_example; // String | Wiki page path.
var recursionLevel = recursionLevel_example; // String | Recursion level for subpages retrieval. Defaults to `None` (Optional).
var versionDescriptorVersionOptions = versionDescriptorVersionOptions_example; // String | Version options - Specify additional modifiers to version (e.g Previous)
var versionDescriptorVersion = versionDescriptorVersion_example; // String | Version string identifier (name of tag/branch, SHA1 of commit)
var versionDescriptorVersionType = versionDescriptorVersionType_example; // String | Version type (branch, tag, or commit). Determines how Id is interpreted
var includeContent = true; // bool | True to include the content of the page in the response for Json content type. Defaults to false (Optional)

try { 
    var result = api_instance.get Page(organization, project, wikiIdentifier, apiVersion, path, recursionLevel, versionDescriptorVersionOptions, versionDescriptorVersion, versionDescriptorVersionType, includeContent);
    print(result);
} catch (e) {
    print("Exception when calling PagesApi->get Page: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **wikiIdentifier** | **String**| Wiki Id or name. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **path** | **String**| Wiki page path. | [optional] [default to null]
 **recursionLevel** | **String**| Recursion level for subpages retrieval. Defaults to &#x60;None&#x60; (Optional). | [optional] [default to null]
 **versionDescriptorVersionOptions** | **String**| Version options - Specify additional modifiers to version (e.g Previous) | [optional] [default to null]
 **versionDescriptorVersion** | **String**| Version string identifier (name of tag/branch, SHA1 of commit) | [optional] [default to null]
 **versionDescriptorVersionType** | **String**| Version type (branch, tag, or commit). Determines how Id is interpreted | [optional] [default to null]
 **includeContent** | **bool**| True to include the content of the page in the response for Json content type. Defaults to false (Optional) | [optional] [default to null]

### Return type

[**WikiPage**](WikiPage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Page By Id**
> WikiPage get Page By Id(organization, project, wikiIdentifier, id, apiVersion, recursionLevel, includeContent)



Gets metadata or content of the wiki page for the provided page id. Content negotiation is done based on the `Accept` header sent in the request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PagesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var wikiIdentifier = wikiIdentifier_example; // String | Wiki Id or name.
var id = 56; // int | Wiki page id.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var recursionLevel = recursionLevel_example; // String | Recursion level for subpages retrieval. Defaults to `None` (Optional).
var includeContent = true; // bool | True to include the content of the page in the response for Json content type. Defaults to false (Optional)

try { 
    var result = api_instance.get Page By Id(organization, project, wikiIdentifier, id, apiVersion, recursionLevel, includeContent);
    print(result);
} catch (e) {
    print("Exception when calling PagesApi->get Page By Id: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **wikiIdentifier** | **String**| Wiki Id or name. | [default to null]
 **id** | **int**| Wiki page id. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **recursionLevel** | **String**| Recursion level for subpages retrieval. Defaults to &#x60;None&#x60; (Optional). | [optional] [default to null]
 **includeContent** | **bool**| True to include the content of the page in the response for Json content type. Defaults to false (Optional) | [optional] [default to null]

### Return type

[**WikiPage**](WikiPage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove Page**
> remove Page(organization, processId, witRefName, pageId, apiVersion)



Removes a page from the work item form

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PagesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var pageId = pageId_example; // String | The ID of the page
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.remove Page(organization, processId, witRefName, pageId, apiVersion);
} catch (e) {
    print("Exception when calling PagesApi->remove Page: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **pageId** | **String**| The ID of the page | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> WikiPage update(organization, project, wikiIdentifier, id, version, apiVersion, body, comment)



Edits a wiki page.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PagesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var wikiIdentifier = wikiIdentifier_example; // String | Wiki Id or name.
var id = 56; // int | Wiki page id.
var version = version_example; // String | Version of the page on which the change is to be made. Mandatory for `Edit` scenario. To be populated in the If-Match header of the request.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = WikiPageCreateOrUpdateParameters(); // WikiPageCreateOrUpdateParameters | Wiki update operation parameters.
var comment = comment_example; // String | Comment to be associated with the page operation.

try { 
    var result = api_instance.update(organization, project, wikiIdentifier, id, version, apiVersion, body, comment);
    print(result);
} catch (e) {
    print("Exception when calling PagesApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **wikiIdentifier** | **String**| Wiki Id or name. | [default to null]
 **id** | **int**| Wiki page id. | [default to null]
 **version** | **String**| Version of the page on which the change is to be made. Mandatory for &#x60;Edit&#x60; scenario. To be populated in the If-Match header of the request. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**WikiPageCreateOrUpdateParameters**](WikiPageCreateOrUpdateParameters.md)| Wiki update operation parameters. | 
 **comment** | **String**| Comment to be associated with the page operation. | [optional] [default to null]

### Return type

[**WikiPage**](WikiPage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_0**
> Page update_0(organization, processId, witRefName, apiVersion, body)



Updates a page on the work item form

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PagesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Page(); // Page | The page

try { 
    var result = api_instance.update_0(organization, processId, witRefName, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PagesApi->update_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**Page**](Page.md)| The page | 

### Return type

[**Page**](Page.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

