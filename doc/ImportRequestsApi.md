# azure_devops_sdk.api.ImportRequestsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ImportRequestsApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/importRequests/{importRequestId} | 
[**create**](ImportRequestsApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/importRequests | 
[**query**](ImportRequestsApi.md#query) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/importRequests | 
[**update**](ImportRequestsApi.md#update) | **PATCH** /{organization}/{project}/_apis/git/repositories/{repositoryId}/importRequests/{importRequestId} | 


# **callGet**
> GitImportRequest callGet(organization, project, repositoryId, importRequestId, apiVersion)



Retrieve a particular import request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ImportRequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var importRequestId = 56; // int | The unique identifier for the import request.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, repositoryId, importRequestId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ImportRequestsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **importRequestId** | **int**| The unique identifier for the import request. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**GitImportRequest**](GitImportRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> GitImportRequest create(organization, project, repositoryId, apiVersion, body)



Create an import request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ImportRequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GitImportRequest(); // GitImportRequest | The import request to create.

try { 
    var result = api_instance.create(organization, project, repositoryId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ImportRequestsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitImportRequest**](GitImportRequest.md)| The import request to create. | 

### Return type

[**GitImportRequest**](GitImportRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query**
> List<GitImportRequest> query(organization, project, repositoryId, apiVersion, includeAbandoned)



Retrieve import requests for a repository.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ImportRequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeAbandoned = true; // bool | True to include abandoned import requests in the results.

try { 
    var result = api_instance.query(organization, project, repositoryId, apiVersion, includeAbandoned);
    print(result);
} catch (e) {
    print("Exception when calling ImportRequestsApi->query: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeAbandoned** | **bool**| True to include abandoned import requests in the results. | [optional] [default to null]

### Return type

[**List<GitImportRequest>**](GitImportRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> GitImportRequest update(organization, project, repositoryId, importRequestId, apiVersion, body)



Retry or abandon a failed import request.  There can only be one active import request associated with a repository. Marking a failed import request abandoned makes it inactive.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ImportRequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var importRequestId = 56; // int | The unique identifier for the import request to update.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GitImportRequest(); // GitImportRequest | The updated version of the import request. Currently, the only change allowed is setting the Status to Queued or Abandoned.

try { 
    var result = api_instance.update(organization, project, repositoryId, importRequestId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ImportRequestsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **importRequestId** | **int**| The unique identifier for the import request to update. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitImportRequest**](GitImportRequest.md)| The updated version of the import request. Currently, the only change allowed is setting the Status to Queued or Abandoned. | 

### Return type

[**GitImportRequest**](GitImportRequest.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

