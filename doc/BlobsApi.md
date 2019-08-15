# azure_devops_sdk.api.BlobsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Blob**](BlobsApi.md#get Blob) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/blobs/{sha1} | 
[**get Blobs Zip**](BlobsApi.md#get Blobs Zip) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/blobs | 


# **get Blob**
> GitBlobRef get Blob(organization, repositoryId, sha1, project, apiVersion, download, fileName, $format, resolveLfs)



Get a single blob.  Repositories have both a name and an identifier. Identifiers are globally unique, but several projects may contain a repository of the same name. You don't need to include the project if you specify a repository by ID. However, if you specify a repository by name, you must also specify the project (by name or ID).

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BlobsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var sha1 = sha1_example; // String | SHA1 hash of the file. You can get the SHA1 of a file using the \"Git/Items/Get Item\" endpoint.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var download = true; // bool | If true, prompt for a download rather than rendering in a browser. Note: this value defaults to true if $format is zip
var fileName = fileName_example; // String | Provide a fileName to use for a download.
var $format = $format_example; // String | Options: json, zip, text, octetstream. If not set, defaults to the MIME type set in the Accept header.
var resolveLfs = true; // bool | If true, try to resolve a blob to its LFS contents, if it's an LFS pointer file. Only compatible with octet-stream Accept headers or $format types

try { 
    var result = api_instance.get Blob(organization, repositoryId, sha1, project, apiVersion, download, fileName, $format, resolveLfs);
    print(result);
} catch (e) {
    print("Exception when calling BlobsApi->get Blob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **sha1** | **String**| SHA1 hash of the file. You can get the SHA1 of a file using the \&quot;Git/Items/Get Item\&quot; endpoint. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **download** | **bool**| If true, prompt for a download rather than rendering in a browser. Note: this value defaults to true if $format is zip | [optional] [default to null]
 **fileName** | **String**| Provide a fileName to use for a download. | [optional] [default to null]
 **$format** | **String**| Options: json, zip, text, octetstream. If not set, defaults to the MIME type set in the Accept header. | [optional] [default to null]
 **resolveLfs** | **bool**| If true, try to resolve a blob to its LFS contents, if it&#39;s an LFS pointer file. Only compatible with octet-stream Accept headers or $format types | [optional] [default to null]

### Return type

[**GitBlobRef**](GitBlobRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Blobs Zip**
> String get Blobs Zip(organization, repositoryId, project, apiVersion, body, filename)



Gets one or more blobs in a zip file download.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BlobsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = [List&lt;String&gt;()]; // List<String> | Blob IDs (SHA1 hashes) to be returned in the zip file.
var filename = filename_example; // String | 

try { 
    var result = api_instance.get Blobs Zip(organization, repositoryId, project, apiVersion, body, filename);
    print(result);
} catch (e) {
    print("Exception when calling BlobsApi->get Blobs Zip: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;String&gt;**](String.md)| Blob IDs (SHA1 hashes) to be returned in the zip file. | 
 **filename** | **String**|  | [optional] [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

