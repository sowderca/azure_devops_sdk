# azure_devops_sdk.api.SourceProvidersApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get File Contents**](SourceProvidersApi.md#get File Contents) | **GET** /{organization}/{project}/_apis/sourceProviders/{providerName}/filecontents | 
[**get Path Contents**](SourceProvidersApi.md#get Path Contents) | **GET** /{organization}/{project}/_apis/sourceProviders/{providerName}/pathcontents | 
[**get Pull Request**](SourceProvidersApi.md#get Pull Request) | **GET** /{organization}/{project}/_apis/sourceProviders/{providerName}/pullrequests/{pullRequestId} | 
[**list**](SourceProvidersApi.md#list) | **GET** /{organization}/{project}/_apis/sourceproviders | 
[**list Branches**](SourceProvidersApi.md#list Branches) | **GET** /{organization}/{project}/_apis/sourceProviders/{providerName}/branches | 
[**list Repositories**](SourceProvidersApi.md#list Repositories) | **GET** /{organization}/{project}/_apis/sourceProviders/{providerName}/repositories | 
[**list Webhooks**](SourceProvidersApi.md#list Webhooks) | **GET** /{organization}/{project}/_apis/sourceProviders/{providerName}/webhooks | 
[**restore Webhooks**](SourceProvidersApi.md#restore Webhooks) | **POST** /{organization}/{project}/_apis/sourceProviders/{providerName}/webhooks | 


# **get File Contents**
> String get File Contents(organization, project, providerName, apiVersion, serviceEndpointId, repository, commitOrBranch, path)



Gets the contents of a file in the given source code repository.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SourceProvidersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var providerName = providerName_example; // String | The name of the source provider.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var serviceEndpointId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit.
var repository = repository_example; // String | If specified, the vendor-specific identifier or the name of the repository to get branches. Can only be omitted for providers that do not support multiple repositories.
var commitOrBranch = commitOrBranch_example; // String | The identifier of the commit or branch from which a file's contents are retrieved.
var path = path_example; // String | The path to the file to retrieve, relative to the root of the repository.

try { 
    var result = api_instance.get File Contents(organization, project, providerName, apiVersion, serviceEndpointId, repository, commitOrBranch, path);
    print(result);
} catch (e) {
    print("Exception when calling SourceProvidersApi->get File Contents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **providerName** | **String**| The name of the source provider. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **serviceEndpointId** | [**String**](.md)| If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit. | [optional] [default to null]
 **repository** | **String**| If specified, the vendor-specific identifier or the name of the repository to get branches. Can only be omitted for providers that do not support multiple repositories. | [optional] [default to null]
 **commitOrBranch** | **String**| The identifier of the commit or branch from which a file&#39;s contents are retrieved. | [optional] [default to null]
 **path** | **String**| The path to the file to retrieve, relative to the root of the repository. | [optional] [default to null]

### Return type

**String**

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Path Contents**
> List<SourceRepositoryItem> get Path Contents(organization, project, providerName, apiVersion, serviceEndpointId, repository, commitOrBranch, path)



Gets the contents of a directory in the given source code repository.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SourceProvidersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var providerName = providerName_example; // String | The name of the source provider.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var serviceEndpointId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit.
var repository = repository_example; // String | If specified, the vendor-specific identifier or the name of the repository to get branches. Can only be omitted for providers that do not support multiple repositories.
var commitOrBranch = commitOrBranch_example; // String | The identifier of the commit or branch from which a file's contents are retrieved.
var path = path_example; // String | The path contents to list, relative to the root of the repository.

try { 
    var result = api_instance.get Path Contents(organization, project, providerName, apiVersion, serviceEndpointId, repository, commitOrBranch, path);
    print(result);
} catch (e) {
    print("Exception when calling SourceProvidersApi->get Path Contents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **providerName** | **String**| The name of the source provider. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **serviceEndpointId** | [**String**](.md)| If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit. | [optional] [default to null]
 **repository** | **String**| If specified, the vendor-specific identifier or the name of the repository to get branches. Can only be omitted for providers that do not support multiple repositories. | [optional] [default to null]
 **commitOrBranch** | **String**| The identifier of the commit or branch from which a file&#39;s contents are retrieved. | [optional] [default to null]
 **path** | **String**| The path contents to list, relative to the root of the repository. | [optional] [default to null]

### Return type

[**List<SourceRepositoryItem>**](SourceRepositoryItem.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Pull Request**
> PullRequest get Pull Request(organization, project, providerName, pullRequestId, apiVersion, repositoryId, serviceEndpointId)



Gets a pull request object from source provider.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SourceProvidersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var providerName = providerName_example; // String | The name of the source provider.
var pullRequestId = pullRequestId_example; // String | Vendor-specific id of the pull request.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var repositoryId = repositoryId_example; // String | Vendor-specific identifier or the name of the repository that contains the pull request.
var serviceEndpointId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit.

try { 
    var result = api_instance.get Pull Request(organization, project, providerName, pullRequestId, apiVersion, repositoryId, serviceEndpointId);
    print(result);
} catch (e) {
    print("Exception when calling SourceProvidersApi->get Pull Request: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **providerName** | **String**| The name of the source provider. | [default to null]
 **pullRequestId** | **String**| Vendor-specific id of the pull request. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **repositoryId** | **String**| Vendor-specific identifier or the name of the repository that contains the pull request. | [optional] [default to null]
 **serviceEndpointId** | [**String**](.md)| If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit. | [optional] [default to null]

### Return type

[**PullRequest**](PullRequest.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<SourceProviderAttributes> list(organization, project, apiVersion)



Get a list of source providers and their capabilities.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SourceProvidersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling SourceProvidersApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<SourceProviderAttributes>**](SourceProviderAttributes.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list Branches**
> List<String> list Branches(organization, project, providerName, apiVersion, serviceEndpointId, repository, branchName)



Gets a list of branches for the given source code repository.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SourceProvidersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var providerName = providerName_example; // String | The name of the source provider.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var serviceEndpointId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit.
var repository = repository_example; // String | The vendor-specific identifier or the name of the repository to get branches. Can only be omitted for providers that do not support multiple repositories.
var branchName = branchName_example; // String | If supplied, the name of the branch to check for specifically.

try { 
    var result = api_instance.list Branches(organization, project, providerName, apiVersion, serviceEndpointId, repository, branchName);
    print(result);
} catch (e) {
    print("Exception when calling SourceProvidersApi->list Branches: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **providerName** | **String**| The name of the source provider. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **serviceEndpointId** | [**String**](.md)| If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit. | [optional] [default to null]
 **repository** | **String**| The vendor-specific identifier or the name of the repository to get branches. Can only be omitted for providers that do not support multiple repositories. | [optional] [default to null]
 **branchName** | **String**| If supplied, the name of the branch to check for specifically. | [optional] [default to null]

### Return type

**List<String>**

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list Repositories**
> SourceRepositories list Repositories(organization, project, providerName, apiVersion, serviceEndpointId, repository, resultSet, pageResults, continuationToken)



Gets a list of source code repositories.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SourceProvidersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var providerName = providerName_example; // String | The name of the source provider.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var serviceEndpointId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit.
var repository = repository_example; // String | If specified, the vendor-specific identifier or the name of a single repository to get.
var resultSet = resultSet_example; // String | 'top' for the repositories most relevant for the endpoint. If not set, all repositories are returned. Ignored if 'repository' is set.
var pageResults = true; // bool | If set to true, this will limit the set of results and will return a continuation token to continue the query.
var continuationToken = continuationToken_example; // String | When paging results, this is a continuation token, returned by a previous call to this method, that can be used to return the next set of repositories.

try { 
    var result = api_instance.list Repositories(organization, project, providerName, apiVersion, serviceEndpointId, repository, resultSet, pageResults, continuationToken);
    print(result);
} catch (e) {
    print("Exception when calling SourceProvidersApi->list Repositories: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **providerName** | **String**| The name of the source provider. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **serviceEndpointId** | [**String**](.md)| If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit. | [optional] [default to null]
 **repository** | **String**| If specified, the vendor-specific identifier or the name of a single repository to get. | [optional] [default to null]
 **resultSet** | **String**| &#39;top&#39; for the repositories most relevant for the endpoint. If not set, all repositories are returned. Ignored if &#39;repository&#39; is set. | [optional] [default to null]
 **pageResults** | **bool**| If set to true, this will limit the set of results and will return a continuation token to continue the query. | [optional] [default to null]
 **continuationToken** | **String**| When paging results, this is a continuation token, returned by a previous call to this method, that can be used to return the next set of repositories. | [optional] [default to null]

### Return type

[**SourceRepositories**](SourceRepositories.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list Webhooks**
> List<RepositoryWebhook> list Webhooks(organization, project, providerName, apiVersion, serviceEndpointId, repository)



Gets a list of webhooks installed in the given source code repository.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SourceProvidersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var providerName = providerName_example; // String | The name of the source provider.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var serviceEndpointId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit.
var repository = repository_example; // String | If specified, the vendor-specific identifier or the name of the repository to get webhooks. Can only be omitted for providers that do not support multiple repositories.

try { 
    var result = api_instance.list Webhooks(organization, project, providerName, apiVersion, serviceEndpointId, repository);
    print(result);
} catch (e) {
    print("Exception when calling SourceProvidersApi->list Webhooks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **providerName** | **String**| The name of the source provider. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **serviceEndpointId** | [**String**](.md)| If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit. | [optional] [default to null]
 **repository** | **String**| If specified, the vendor-specific identifier or the name of the repository to get webhooks. Can only be omitted for providers that do not support multiple repositories. | [optional] [default to null]

### Return type

[**List<RepositoryWebhook>**](RepositoryWebhook.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore Webhooks**
> restore Webhooks(organization, project, providerName, apiVersion, body, serviceEndpointId, repository)



Recreates the webhooks for the specified triggers in the given source code repository.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SourceProvidersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var providerName = providerName_example; // String | The name of the source provider.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = [List&lt;String&gt;()]; // List<String> | The types of triggers to restore webhooks for.
var serviceEndpointId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit.
var repository = repository_example; // String | If specified, the vendor-specific identifier or the name of the repository to get webhooks. Can only be omitted for providers that do not support multiple repositories.

try { 
    api_instance.restore Webhooks(organization, project, providerName, apiVersion, body, serviceEndpointId, repository);
} catch (e) {
    print("Exception when calling SourceProvidersApi->restore Webhooks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **providerName** | **String**| The name of the source provider. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;String&gt;**](String.md)| The types of triggers to restore webhooks for. | 
 **serviceEndpointId** | [**String**](.md)| If specified, the ID of the service endpoint to query. Can only be omitted for providers that do not use service endpoints, e.g. TFVC or TFGit. | [optional] [default to null]
 **repository** | **String**| If specified, the vendor-specific identifier or the name of the repository to get webhooks. Can only be omitted for providers that do not support multiple repositories. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

