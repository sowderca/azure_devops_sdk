# azure_devops_sdk.api.TreesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](TreesApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/trees/{sha1} | 


# **callGet**
> GitTreeRef callGet(organization, repositoryId, sha1, project, apiVersion, projectId, recursive, fileName, $format)



The Tree endpoint returns the collection of objects underneath the specified tree. Trees are folders in a Git repository.  Repositories have both a name and an identifier. Identifiers are globally unique, but several projects may contain a repository of the same name. You don't need to include the project if you specify a repository by ID. However, if you specify a repository by name, you must also specify the project (by name or ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TreesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | Repository Id.
var sha1 = sha1_example; // String | SHA1 hash of the tree object.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var projectId = projectId_example; // String | Project Id.
var recursive = true; // bool | Search recursively. Include trees underneath this tree. Default is false.
var fileName = fileName_example; // String | Name to use if a .zip file is returned. Default is the object ID.
var $format = $format_example; // String | Use \"zip\". Defaults to the MIME type set in the Accept header.

try { 
    var result = api_instance.callGet(organization, repositoryId, sha1, project, apiVersion, projectId, recursive, fileName, $format);
    print(result);
} catch (e) {
    print("Exception when calling TreesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| Repository Id. | [default to null]
 **sha1** | **String**| SHA1 hash of the tree object. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **projectId** | **String**| Project Id. | [optional] [default to null]
 **recursive** | **bool**| Search recursively. Include trees underneath this tree. Default is false. | [optional] [default to null]
 **fileName** | **String**| Name to use if a .zip file is returned. Default is the object ID. | [optional] [default to null]
 **$format** | **String**| Use \&quot;zip\&quot;. Defaults to the MIME type set in the Accept header. | [optional] [default to null]

### Return type

[**GitTreeRef**](GitTreeRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

