# azure_devops_sdk.api.DefinitionsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](DefinitionsApi.md#callGet) | **GET** /{organization}/{project}/_apis/build/definitions/{definitionId} | 
[**callGet_0**](DefinitionsApi.md#callGet_0) | **GET** /{organization}/{project}/_apis/release/definitions/{definitionId} | 
[**create**](DefinitionsApi.md#create) | **POST** /{organization}/{project}/_apis/build/definitions | 
[**create_0**](DefinitionsApi.md#create_0) | **POST** /{organization}/{project}/_apis/release/definitions | 
[**delete**](DefinitionsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/build/definitions/{definitionId} | 
[**delete_0**](DefinitionsApi.md#delete_0) | **DELETE** /{organization}/{project}/_apis/release/definitions/{definitionId} | 
[**get Definition Revision**](DefinitionsApi.md#get Definition Revision) | **GET** /{organization}/{project}/_apis/Release/definitions/{definitionId}/revisions/{revision} | 
[**get Definition Revisions**](DefinitionsApi.md#get Definition Revisions) | **GET** /{organization}/{project}/_apis/build/definitions/{definitionId}/revisions | 
[**get Release Definition History**](DefinitionsApi.md#get Release Definition History) | **GET** /{organization}/{project}/_apis/Release/definitions/{definitionId}/revisions | 
[**list**](DefinitionsApi.md#list) | **GET** /{organization}/{project}/_apis/build/definitions | 
[**list_0**](DefinitionsApi.md#list_0) | **GET** /{organization}/{project}/_apis/release/definitions | 
[**restore Definition**](DefinitionsApi.md#restore Definition) | **PATCH** /{organization}/{project}/_apis/build/definitions/{definitionId} | 
[**update**](DefinitionsApi.md#update) | **PUT** /{organization}/{project}/_apis/build/definitions/{definitionId} | 
[**update_0**](DefinitionsApi.md#update_0) | **PUT** /{organization}/{project}/_apis/release/definitions | 


# **callGet**
> BuildDefinition callGet(organization, project, definitionId, apiVersion, revision, minMetricsTime, propertyFilters, includeLatestBuilds)



Gets a definition, optionally at a specific revision.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | The ID of the definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var revision = 56; // int | The revision number to retrieve. If this is not specified, the latest version will be returned.
var minMetricsTime = 2013-10-20T19:20:30+01:00; // DateTime | If specified, indicates the date from which metrics should be included.
var propertyFilters = propertyFilters_example; // String | A comma-delimited list of properties to include in the results.
var includeLatestBuilds = true; // bool | 

try { 
    var result = api_instance.callGet(organization, project, definitionId, apiVersion, revision, minMetricsTime, propertyFilters, includeLatestBuilds);
    print(result);
} catch (e) {
    print("Exception when calling DefinitionsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| The ID of the definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **revision** | **int**| The revision number to retrieve. If this is not specified, the latest version will be returned. | [optional] [default to null]
 **minMetricsTime** | **DateTime**| If specified, indicates the date from which metrics should be included. | [optional] [default to null]
 **propertyFilters** | **String**| A comma-delimited list of properties to include in the results. | [optional] [default to null]
 **includeLatestBuilds** | **bool**|  | [optional] [default to null]

### Return type

[**BuildDefinition**](BuildDefinition.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> ReleaseDefinition callGet_0(organization, project, definitionId, apiVersion, propertyFilters)



Get a release definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | Id of the release definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var propertyFilters = propertyFilters_example; // String | A comma-delimited list of extended properties to be retrieved. If set, the returned Release Definition will contain values for the specified property Ids (if they exist). If not set, properties will not be included.

try { 
    var result = api_instance.callGet_0(organization, project, definitionId, apiVersion, propertyFilters);
    print(result);
} catch (e) {
    print("Exception when calling DefinitionsApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| Id of the release definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **propertyFilters** | **String**| A comma-delimited list of extended properties to be retrieved. If set, the returned Release Definition will contain values for the specified property Ids (if they exist). If not set, properties will not be included. | [optional] [default to null]

### Return type

[**ReleaseDefinition**](ReleaseDefinition.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> BuildDefinition create(organization, project, apiVersion, body, definitionToCloneId, definitionToCloneRevision)



Creates a new definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = BuildDefinition(); // BuildDefinition | The definition.
var definitionToCloneId = 56; // int | 
var definitionToCloneRevision = 56; // int | 

try { 
    var result = api_instance.create(organization, project, apiVersion, body, definitionToCloneId, definitionToCloneRevision);
    print(result);
} catch (e) {
    print("Exception when calling DefinitionsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**BuildDefinition**](BuildDefinition.md)| The definition. | 
 **definitionToCloneId** | **int**|  | [optional] [default to null]
 **definitionToCloneRevision** | **int**|  | [optional] [default to null]

### Return type

[**BuildDefinition**](BuildDefinition.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_0**
> ReleaseDefinition create_0(organization, project, apiVersion, body)



Create a release definition

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = ReleaseDefinition(); // ReleaseDefinition | release definition object to create.

try { 
    var result = api_instance.create_0(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling DefinitionsApi->create_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**ReleaseDefinition**](ReleaseDefinition.md)| release definition object to create. | 

### Return type

[**ReleaseDefinition**](ReleaseDefinition.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, definitionId, apiVersion)



Deletes a definition and all associated builds.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | The ID of the definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(organization, project, definitionId, apiVersion);
} catch (e) {
    print("Exception when calling DefinitionsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| The ID of the definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_0**
> delete_0(organization, project, definitionId, apiVersion, comment, forceDelete)



Delete a release definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | Id of the release definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var comment = comment_example; // String | Comment for deleting a release definition.
var forceDelete = true; // bool | 'true' to automatically cancel any in-progress release deployments and proceed with release definition deletion . Default is 'false'.

try { 
    api_instance.delete_0(organization, project, definitionId, apiVersion, comment, forceDelete);
} catch (e) {
    print("Exception when calling DefinitionsApi->delete_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| Id of the release definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **comment** | **String**| Comment for deleting a release definition. | [optional] [default to null]
 **forceDelete** | **bool**| &#39;true&#39; to automatically cancel any in-progress release deployments and proceed with release definition deletion . Default is &#39;false&#39;. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Definition Revision**
> String get Definition Revision(organization, project, definitionId, revision, apiVersion)



Get release definition for a given definitionId and revision

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | Id of the definition.
var revision = 56; // int | Id of the revision.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Definition Revision(organization, project, definitionId, revision, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling DefinitionsApi->get Definition Revision: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| Id of the definition. | [default to null]
 **revision** | **int**| Id of the revision. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Definition Revisions**
> List<BuildDefinitionRevision> get Definition Revisions(organization, project, definitionId, apiVersion)



Gets all revisions of a definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | The ID of the definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Definition Revisions(organization, project, definitionId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling DefinitionsApi->get Definition Revisions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| The ID of the definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<BuildDefinitionRevision>**](BuildDefinitionRevision.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Release Definition History**
> List<ReleaseDefinitionRevision> get Release Definition History(organization, project, definitionId, apiVersion)



Get revision history for a release definition

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | Id of the definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Release Definition History(organization, project, definitionId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling DefinitionsApi->get Release Definition History: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| Id of the definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<ReleaseDefinitionRevision>**](ReleaseDefinitionRevision.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<BuildDefinitionReference> list(organization, project, apiVersion, name, repositoryId, repositoryType, queryOrder, $top, continuationToken, minMetricsTime, definitionIds, path, builtAfter, notBuiltAfter, includeAllProperties, includeLatestBuilds, taskIdFilter, processType, yamlFilename)



Gets a list of definitions.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var name = name_example; // String | If specified, filters to definitions whose names match this pattern.
var repositoryId = repositoryId_example; // String | A repository ID. If specified, filters to definitions that use this repository.
var repositoryType = repositoryType_example; // String | If specified, filters to definitions that have a repository of this type.
var queryOrder = queryOrder_example; // String | Indicates the order in which definitions should be returned.
var $top = 56; // int | The maximum number of definitions to return.
var continuationToken = continuationToken_example; // String | A continuation token, returned by a previous call to this method, that can be used to return the next set of definitions.
var minMetricsTime = 2013-10-20T19:20:30+01:00; // DateTime | If specified, indicates the date from which metrics should be included.
var definitionIds = definitionIds_example; // String | A comma-delimited list that specifies the IDs of definitions to retrieve.
var path = path_example; // String | If specified, filters to definitions under this folder.
var builtAfter = 2013-10-20T19:20:30+01:00; // DateTime | If specified, filters to definitions that have builds after this date.
var notBuiltAfter = 2013-10-20T19:20:30+01:00; // DateTime | If specified, filters to definitions that do not have builds after this date.
var includeAllProperties = true; // bool | Indicates whether the full definitions should be returned. By default, shallow representations of the definitions are returned.
var includeLatestBuilds = true; // bool | Indicates whether to return the latest and latest completed builds for this definition.
var taskIdFilter = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If specified, filters to definitions that use the specified task.
var processType = 56; // int | If specified, filters to definitions with the given process type.
var yamlFilename = yamlFilename_example; // String | If specified, filters to YAML definitions that match the given filename.

try { 
    var result = api_instance.list(organization, project, apiVersion, name, repositoryId, repositoryType, queryOrder, $top, continuationToken, minMetricsTime, definitionIds, path, builtAfter, notBuiltAfter, includeAllProperties, includeLatestBuilds, taskIdFilter, processType, yamlFilename);
    print(result);
} catch (e) {
    print("Exception when calling DefinitionsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **name** | **String**| If specified, filters to definitions whose names match this pattern. | [optional] [default to null]
 **repositoryId** | **String**| A repository ID. If specified, filters to definitions that use this repository. | [optional] [default to null]
 **repositoryType** | **String**| If specified, filters to definitions that have a repository of this type. | [optional] [default to null]
 **queryOrder** | **String**| Indicates the order in which definitions should be returned. | [optional] [default to null]
 **$top** | **int**| The maximum number of definitions to return. | [optional] [default to null]
 **continuationToken** | **String**| A continuation token, returned by a previous call to this method, that can be used to return the next set of definitions. | [optional] [default to null]
 **minMetricsTime** | **DateTime**| If specified, indicates the date from which metrics should be included. | [optional] [default to null]
 **definitionIds** | **String**| A comma-delimited list that specifies the IDs of definitions to retrieve. | [optional] [default to null]
 **path** | **String**| If specified, filters to definitions under this folder. | [optional] [default to null]
 **builtAfter** | **DateTime**| If specified, filters to definitions that have builds after this date. | [optional] [default to null]
 **notBuiltAfter** | **DateTime**| If specified, filters to definitions that do not have builds after this date. | [optional] [default to null]
 **includeAllProperties** | **bool**| Indicates whether the full definitions should be returned. By default, shallow representations of the definitions are returned. | [optional] [default to null]
 **includeLatestBuilds** | **bool**| Indicates whether to return the latest and latest completed builds for this definition. | [optional] [default to null]
 **taskIdFilter** | [**String**](.md)| If specified, filters to definitions that use the specified task. | [optional] [default to null]
 **processType** | **int**| If specified, filters to definitions with the given process type. | [optional] [default to null]
 **yamlFilename** | **String**| If specified, filters to YAML definitions that match the given filename. | [optional] [default to null]

### Return type

[**List<BuildDefinitionReference>**](BuildDefinitionReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_0**
> List<ReleaseDefinition> list_0(organization, project, apiVersion, searchText, $expand, artifactType, artifactSourceId, $top, continuationToken, queryOrder, path, isExactNameMatch, tagFilter, propertyFilters, definitionIdFilter, isDeleted, searchTextContainsFolderName)



Get a list of release definitions.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var searchText = searchText_example; // String | Get release definitions with names containing searchText.
var $expand = $expand_example; // String | The properties that should be expanded in the list of Release definitions.
var artifactType = artifactType_example; // String | Release definitions with given artifactType will be returned. Values can be Build, Jenkins, GitHub, Nuget, Team Build (external), ExternalTFSBuild, Git, TFVC, ExternalTfsXamlBuild.
var artifactSourceId = artifactSourceId_example; // String | Release definitions with given artifactSourceId will be returned. e.g. For build it would be {projectGuid}:{BuildDefinitionId}, for Jenkins it would be {JenkinsConnectionId}:{JenkinsDefinitionId}, for TfsOnPrem it would be {TfsOnPremConnectionId}:{ProjectName}:{TfsOnPremDefinitionId}. For third-party artifacts e.g. TeamCity, BitBucket you may refer 'uniqueSourceIdentifier' inside vss-extension.json at https://github.com/Microsoft/vsts-rm-extensions/blob/master/Extensions.
var $top = 56; // int | Number of release definitions to get.
var continuationToken = continuationToken_example; // String | Gets the release definitions after the continuation token provided.
var queryOrder = queryOrder_example; // String | Gets the results in the defined order. Default is 'IdAscending'.
var path = path_example; // String | Gets the release definitions under the specified path.
var isExactNameMatch = true; // bool | 'true'to gets the release definitions with exact match as specified in searchText. Default is 'false'.
var tagFilter = tagFilter_example; // String | A comma-delimited list of tags. Only release definitions with these tags will be returned.
var propertyFilters = propertyFilters_example; // String | A comma-delimited list of extended properties to be retrieved. If set, the returned Release Definitions will contain values for the specified property Ids (if they exist). If not set, properties will not be included. Note that this will not filter out any Release Definition from results irrespective of whether it has property set or not.
var definitionIdFilter = definitionIdFilter_example; // String | A comma-delimited list of release definitions to retrieve.
var isDeleted = true; // bool | 'true' to get release definitions that has been deleted. Default is 'false'
var searchTextContainsFolderName = true; // bool | 'true' to get the release definitions under the folder with name as specified in searchText. Default is 'false'.

try { 
    var result = api_instance.list_0(organization, project, apiVersion, searchText, $expand, artifactType, artifactSourceId, $top, continuationToken, queryOrder, path, isExactNameMatch, tagFilter, propertyFilters, definitionIdFilter, isDeleted, searchTextContainsFolderName);
    print(result);
} catch (e) {
    print("Exception when calling DefinitionsApi->list_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **searchText** | **String**| Get release definitions with names containing searchText. | [optional] [default to null]
 **$expand** | **String**| The properties that should be expanded in the list of Release definitions. | [optional] [default to null]
 **artifactType** | **String**| Release definitions with given artifactType will be returned. Values can be Build, Jenkins, GitHub, Nuget, Team Build (external), ExternalTFSBuild, Git, TFVC, ExternalTfsXamlBuild. | [optional] [default to null]
 **artifactSourceId** | **String**| Release definitions with given artifactSourceId will be returned. e.g. For build it would be {projectGuid}:{BuildDefinitionId}, for Jenkins it would be {JenkinsConnectionId}:{JenkinsDefinitionId}, for TfsOnPrem it would be {TfsOnPremConnectionId}:{ProjectName}:{TfsOnPremDefinitionId}. For third-party artifacts e.g. TeamCity, BitBucket you may refer &#39;uniqueSourceIdentifier&#39; inside vss-extension.json at https://github.com/Microsoft/vsts-rm-extensions/blob/master/Extensions. | [optional] [default to null]
 **$top** | **int**| Number of release definitions to get. | [optional] [default to null]
 **continuationToken** | **String**| Gets the release definitions after the continuation token provided. | [optional] [default to null]
 **queryOrder** | **String**| Gets the results in the defined order. Default is &#39;IdAscending&#39;. | [optional] [default to null]
 **path** | **String**| Gets the release definitions under the specified path. | [optional] [default to null]
 **isExactNameMatch** | **bool**| &#39;true&#39;to gets the release definitions with exact match as specified in searchText. Default is &#39;false&#39;. | [optional] [default to null]
 **tagFilter** | **String**| A comma-delimited list of tags. Only release definitions with these tags will be returned. | [optional] [default to null]
 **propertyFilters** | **String**| A comma-delimited list of extended properties to be retrieved. If set, the returned Release Definitions will contain values for the specified property Ids (if they exist). If not set, properties will not be included. Note that this will not filter out any Release Definition from results irrespective of whether it has property set or not. | [optional] [default to null]
 **definitionIdFilter** | **String**| A comma-delimited list of release definitions to retrieve. | [optional] [default to null]
 **isDeleted** | **bool**| &#39;true&#39; to get release definitions that has been deleted. Default is &#39;false&#39; | [optional] [default to null]
 **searchTextContainsFolderName** | **bool**| &#39;true&#39; to get the release definitions under the folder with name as specified in searchText. Default is &#39;false&#39;. | [optional] [default to null]

### Return type

[**List<ReleaseDefinition>**](ReleaseDefinition.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore Definition**
> BuildDefinition restore Definition(organization, project, definitionId, deleted, apiVersion)



Restores a deleted definition

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | The identifier of the definition to restore.
var deleted = true; // bool | When false, restores a deleted definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.restore Definition(organization, project, definitionId, deleted, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling DefinitionsApi->restore Definition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| The identifier of the definition to restore. | [default to null]
 **deleted** | **bool**| When false, restores a deleted definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**BuildDefinition**](BuildDefinition.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> BuildDefinition update(organization, project, definitionId, apiVersion, body, secretsSourceDefinitionId, secretsSourceDefinitionRevision)



Updates an existing definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | The ID of the definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = BuildDefinition(); // BuildDefinition | The new version of the defintion.
var secretsSourceDefinitionId = 56; // int | 
var secretsSourceDefinitionRevision = 56; // int | 

try { 
    var result = api_instance.update(organization, project, definitionId, apiVersion, body, secretsSourceDefinitionId, secretsSourceDefinitionRevision);
    print(result);
} catch (e) {
    print("Exception when calling DefinitionsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| The ID of the definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**BuildDefinition**](BuildDefinition.md)| The new version of the defintion. | 
 **secretsSourceDefinitionId** | **int**|  | [optional] [default to null]
 **secretsSourceDefinitionRevision** | **int**|  | [optional] [default to null]

### Return type

[**BuildDefinition**](BuildDefinition.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_0**
> ReleaseDefinition update_0(organization, project, apiVersion, body)



Update a release definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DefinitionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = ReleaseDefinition(); // ReleaseDefinition | Release definition object to update.

try { 
    var result = api_instance.update_0(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling DefinitionsApi->update_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**ReleaseDefinition**](ReleaseDefinition.md)| Release definition object to update. | 

### Return type

[**ReleaseDefinition**](ReleaseDefinition.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

