# azure_devops_sdk.api.CherryPicksApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CherryPicksApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/cherryPicks | 
[**get Cherry Pick**](CherryPicksApi.md#get Cherry Pick) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/cherryPicks/{cherryPickId} | 
[**get Cherry Pick For Ref Name**](CherryPicksApi.md#get Cherry Pick For Ref Name) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/cherryPicks | 


# **create**
> GitCherryPick create(organization, project, repositoryId, apiVersion, body)



Cherry pick a specific commit or commits that are associated to a pull request into a new branch.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CherryPicksApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repositoryId = repositoryId_example; // String | ID of the repository.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GitAsyncRefOperationParameters(); // GitAsyncRefOperationParameters | 

try { 
    var result = api_instance.create(organization, project, repositoryId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling CherryPicksApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repositoryId** | **String**| ID of the repository. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitAsyncRefOperationParameters**](GitAsyncRefOperationParameters.md)|  | 

### Return type

[**GitCherryPick**](GitCherryPick.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Cherry Pick**
> GitCherryPick get Cherry Pick(organization, project, cherryPickId, repositoryId, apiVersion)



Retrieve information about a cherry pick by cherry pick Id.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CherryPicksApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var cherryPickId = 56; // int | ID of the cherry pick.
var repositoryId = repositoryId_example; // String | ID of the repository.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Cherry Pick(organization, project, cherryPickId, repositoryId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling CherryPicksApi->get Cherry Pick: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **cherryPickId** | **int**| ID of the cherry pick. | [default to null]
 **repositoryId** | **String**| ID of the repository. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**GitCherryPick**](GitCherryPick.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Cherry Pick For Ref Name**
> GitCherryPick get Cherry Pick For Ref Name(organization, project, repositoryId, refName, apiVersion)



Retrieve information about a cherry pick for a specific branch.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CherryPicksApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repositoryId = repositoryId_example; // String | ID of the repository.
var refName = refName_example; // String | The GitAsyncRefOperationParameters generatedRefName used for the cherry pick operation.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Cherry Pick For Ref Name(organization, project, repositoryId, refName, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling CherryPicksApi->get Cherry Pick For Ref Name: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repositoryId** | **String**| ID of the repository. | [default to null]
 **refName** | **String**| The GitAsyncRefOperationParameters generatedRefName used for the cherry pick operation. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**GitCherryPick**](GitCherryPick.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

