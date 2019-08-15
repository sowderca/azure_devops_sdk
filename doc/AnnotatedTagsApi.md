# azure_devops_sdk.api.AnnotatedTagsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](AnnotatedTagsApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/annotatedtags/{objectId} | 
[**create**](AnnotatedTagsApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/annotatedtags | 


# **callGet**
> GitAnnotatedTag callGet(organization, project, repositoryId, objectId, apiVersion)



Get an annotated tag.  Repositories have both a name and an identifier. Identifiers are globally unique, but several projects may contain a repository of the same name. You don't need to include the project if you specify a repository by ID. However, if you specify a repository by name, you must also specify the project (by name or ID).

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AnnotatedTagsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repositoryId = repositoryId_example; // String | ID or name of the repository.
var objectId = objectId_example; // String | ObjectId (Sha1Id) of tag to get.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, repositoryId, objectId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling AnnotatedTagsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repositoryId** | **String**| ID or name of the repository. | [default to null]
 **objectId** | **String**| ObjectId (Sha1Id) of tag to get. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**GitAnnotatedTag**](GitAnnotatedTag.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> GitAnnotatedTag create(organization, project, repositoryId, apiVersion, body)



Create an annotated tag.  Repositories have both a name and an identifier. Identifiers are globally unique, but several projects may contain a repository of the same name. You don't need to include the project if you specify a repository by ID. However, if you specify a repository by name, you must also specify the project (by name or ID).

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AnnotatedTagsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repositoryId = repositoryId_example; // String | ID or name of the repository.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GitAnnotatedTag(); // GitAnnotatedTag | Object containing details of tag to be created.

try { 
    var result = api_instance.create(organization, project, repositoryId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling AnnotatedTagsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repositoryId** | **String**| ID or name of the repository. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitAnnotatedTag**](GitAnnotatedTag.md)| Object containing details of tag to be created. | 

### Return type

[**GitAnnotatedTag**](GitAnnotatedTag.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
