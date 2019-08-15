# azure_devops_sdk.api.PageMovesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](PageMovesApi.md#create) | **POST** /{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pagemoves | 


# **create**
> WikiPageMove create(organization, project, wikiIdentifier, apiVersion, body, comment, versionDescriptorVersionOptions, versionDescriptorVersion, versionDescriptorVersionType)



Creates a page move operation that updates the path and order of the page as provided in the parameters.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PageMovesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var wikiIdentifier = wikiIdentifier_example; // String | Wiki Id or name.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = WikiPageMoveParameters(); // WikiPageMoveParameters | Page more operation parameters.
var comment = comment_example; // String | Comment that is to be associated with this page move.
var versionDescriptorVersionOptions = versionDescriptorVersionOptions_example; // String | Version options - Specify additional modifiers to version (e.g Previous)
var versionDescriptorVersion = versionDescriptorVersion_example; // String | Version string identifier (name of tag/branch, SHA1 of commit)
var versionDescriptorVersionType = versionDescriptorVersionType_example; // String | Version type (branch, tag, or commit). Determines how Id is interpreted

try { 
    var result = api_instance.create(organization, project, wikiIdentifier, apiVersion, body, comment, versionDescriptorVersionOptions, versionDescriptorVersion, versionDescriptorVersionType);
    print(result);
} catch (e) {
    print("Exception when calling PageMovesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **wikiIdentifier** | **String**| Wiki Id or name. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**WikiPageMoveParameters**](WikiPageMoveParameters.md)| Page more operation parameters. | 
 **comment** | **String**| Comment that is to be associated with this page move. | [optional] [default to null]
 **versionDescriptorVersionOptions** | **String**| Version options - Specify additional modifiers to version (e.g Previous) | [optional] [default to null]
 **versionDescriptorVersion** | **String**| Version string identifier (name of tag/branch, SHA1 of commit) | [optional] [default to null]
 **versionDescriptorVersionType** | **String**| Version type (branch, tag, or commit). Determines how Id is interpreted | [optional] [default to null]

### Return type

[**WikiPageMove**](WikiPageMove.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

