# azure_devops_sdk.api.RepositoriesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](RepositoriesApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories | 
[**delete**](RepositoriesApi.md#delete) | **DELETE** /{organization}/{project}/_apis/git/repositories/{repositoryId} | 
[**delete Repository From Recycle Bin**](RepositoriesApi.md#delete Repository From Recycle Bin) | **DELETE** /{organization}/{project}/_apis/git/recycleBin/repositories/{repositoryId} | 
[**get Deleted Repositories**](RepositoriesApi.md#get Deleted Repositories) | **GET** /{organization}/{project}/_apis/git/deletedrepositories | 
[**get Recycle Bin Repositories**](RepositoriesApi.md#get Recycle Bin Repositories) | **GET** /{organization}/{project}/_apis/git/recycleBin/repositories | 
[**get Repository**](RepositoriesApi.md#get Repository) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId} | 
[**list**](RepositoriesApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories | 
[**restore Repository From Recycle Bin**](RepositoriesApi.md#restore Repository From Recycle Bin) | **PATCH** /{organization}/{project}/_apis/git/recycleBin/repositories/{repositoryId} | 
[**update**](RepositoriesApi.md#update) | **PATCH** /{organization}/{project}/_apis/git/repositories/{repositoryId} | 


# **create**
> GitRepository create(organization, project, apiVersion, body, sourceRef)



Create a git repository in a team project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RepositoriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = GitRepositoryCreateOptions(); // GitRepositoryCreateOptions | Specify the repo name, team project and/or parent repository. Team project information can be ommitted from gitRepositoryToCreate if the request is project-scoped (i.e., includes project Id).
var sourceRef = sourceRef_example; // String | [optional] Specify the source refs to use while creating a fork repo

try { 
    var result = api_instance.create(organization, project, apiVersion, body, sourceRef);
    print(result);
} catch (e) {
    print("Exception when calling RepositoriesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitRepositoryCreateOptions**](GitRepositoryCreateOptions.md)| Specify the repo name, team project and/or parent repository. Team project information can be ommitted from gitRepositoryToCreate if the request is project-scoped (i.e., includes project Id). | 
 **sourceRef** | **String**| [optional] Specify the source refs to use while creating a fork repo | [optional] [default to null]

### Return type

[**GitRepository**](GitRepository.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, repositoryId, project, apiVersion)



Delete a git repository

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RepositoriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(organization, repositoryId, project, apiVersion);
} catch (e) {
    print("Exception when calling RepositoriesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | [**String**](.md)| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete Repository From Recycle Bin**
> delete Repository From Recycle Bin(organization, project, repositoryId, apiVersion)



Destroy (hard delete) a soft-deleted Git repository.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RepositoriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repositoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the repository.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete Repository From Recycle Bin(organization, project, repositoryId, apiVersion);
} catch (e) {
    print("Exception when calling RepositoriesApi->delete Repository From Recycle Bin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repositoryId** | [**String**](.md)| The ID of the repository. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Deleted Repositories**
> List<GitDeletedRepository> get Deleted Repositories(organization, project, apiVersion)



Retrieve deleted git repositories.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = RepositoriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Deleted Repositories(organization, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RepositoriesApi->get Deleted Repositories: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<GitDeletedRepository>**](GitDeletedRepository.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Recycle Bin Repositories**
> List<GitDeletedRepository> get Recycle Bin Repositories(organization, project, apiVersion)



Retrieve soft-deleted git repositories from the recycle bin.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RepositoriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Recycle Bin Repositories(organization, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RepositoriesApi->get Recycle Bin Repositories: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<GitDeletedRepository>**](GitDeletedRepository.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Repository**
> GitRepository get Repository(organization, repositoryId, project, apiVersion)



Retrieve a git repository.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RepositoriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Repository(organization, repositoryId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RepositoriesApi->get Repository: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**GitRepository**](GitRepository.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<GitRepository> list(organization, project, apiVersion, includeLinks, includeAllUrls, includeHidden)



Retrieve git repositories.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RepositoriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var includeLinks = true; // bool | [optional] True to include reference links. The default value is false.
var includeAllUrls = true; // bool | [optional] True to include all remote URLs. The default value is false.
var includeHidden = true; // bool | [optional] True to include hidden repositories. The default value is false.

try { 
    var result = api_instance.list(organization, project, apiVersion, includeLinks, includeAllUrls, includeHidden);
    print(result);
} catch (e) {
    print("Exception when calling RepositoriesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **includeLinks** | **bool**| [optional] True to include reference links. The default value is false. | [optional] [default to null]
 **includeAllUrls** | **bool**| [optional] True to include all remote URLs. The default value is false. | [optional] [default to null]
 **includeHidden** | **bool**| [optional] True to include hidden repositories. The default value is false. | [optional] [default to null]

### Return type

[**List<GitRepository>**](GitRepository.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore Repository From Recycle Bin**
> GitRepository restore Repository From Recycle Bin(organization, project, repositoryId, apiVersion, body)



Recover a soft-deleted Git repository. Recently deleted repositories go into a soft-delete state for a period of time before they are hard deleted and become unrecoverable.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RepositoriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repositoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the repository.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GitRecycleBinRepositoryDetails(); // GitRecycleBinRepositoryDetails | 

try { 
    var result = api_instance.restore Repository From Recycle Bin(organization, project, repositoryId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoriesApi->restore Repository From Recycle Bin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repositoryId** | [**String**](.md)| The ID of the repository. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitRecycleBinRepositoryDetails**](GitRecycleBinRepositoryDetails.md)|  | 

### Return type

[**GitRepository**](GitRepository.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> GitRepository update(organization, repositoryId, project, apiVersion, body)



Updates the Git repository with either a new repo name or a new default branch.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RepositoriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The name or ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = GitRepository(); // GitRepository | Specify a new repo name or a new default branch of the repository

try { 
    var result = api_instance.update(organization, repositoryId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoriesApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | [**String**](.md)| The name or ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitRepository**](GitRepository.md)| Specify a new repo name or a new default branch of the repository | 

### Return type

[**GitRepository**](GitRepository.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

