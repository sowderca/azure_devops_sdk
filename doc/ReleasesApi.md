# azure_devops_sdk.api.ReleasesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ReleasesApi.md#create) | **POST** /{organization}/{project}/_apis/release/releases | 
[**get Logs**](ReleasesApi.md#get Logs) | **GET** /{organization}/{project}/_apis/release/releases/{releaseId}/logs | 
[**get Release Environment**](ReleasesApi.md#get Release Environment) | **GET** /{organization}/{project}/_apis/Release/releases/{releaseId}/environments/{environmentId} | 
[**get Release Revision**](ReleasesApi.md#get Release Revision) | **GET** /{organization}/{project}/_apis/release/releases/{releaseId} | 
[**get Task Log**](ReleasesApi.md#get Task Log) | **GET** /{organization}/{project}/_apis/release/releases/{releaseId}/environments/{environmentId}/deployPhases/{releaseDeployPhaseId}/tasks/{taskId}/logs | 
[**list**](ReleasesApi.md#list) | **GET** /{organization}/{project}/_apis/release/releases | 
[**update Release**](ReleasesApi.md#update Release) | **PUT** /{organization}/{project}/_apis/release/releases/{releaseId} | 
[**update Release Environment**](ReleasesApi.md#update Release Environment) | **PATCH** /{organization}/{project}/_apis/Release/releases/{releaseId}/environments/{environmentId} | 
[**update Release Resource**](ReleasesApi.md#update Release Resource) | **PATCH** /{organization}/{project}/_apis/release/releases/{releaseId} | 


# **create**
> Release create(organization, project, apiVersion, body)



Create a release.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReleasesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = ReleaseStartMetadata(); // ReleaseStartMetadata | Metadata to create a release.

try { 
    var result = api_instance.create(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ReleasesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**ReleaseStartMetadata**](ReleaseStartMetadata.md)| Metadata to create a release. | 

### Return type

[**Release**](Release.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Logs**
> String get Logs(organization, project, releaseId, apiVersion)



Get logs for a release Id.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReleasesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.get Logs(organization, project, releaseId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ReleasesApi->get Logs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Release Environment**
> ReleaseEnvironment get Release Environment(organization, project, releaseId, environmentId, apiVersion)



Get a release environment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReleasesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release.
var environmentId = 56; // int | Id of the release environment.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.6' to use this version of the api.

try { 
    var result = api_instance.get Release Environment(organization, project, releaseId, environmentId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ReleasesApi->get Release Environment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release. | [default to null]
 **environmentId** | **int**| Id of the release environment. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.6&#39; to use this version of the api. | [default to null]

### Return type

[**ReleaseEnvironment**](ReleaseEnvironment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Release Revision**
> String get Release Revision(organization, project, releaseId, definitionSnapshotRevision, apiVersion)



Get release for a given revision number.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReleasesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release.
var definitionSnapshotRevision = 56; // int | Definition snapshot revision number.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Release Revision(organization, project, releaseId, definitionSnapshotRevision, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ReleasesApi->get Release Revision: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release. | [default to null]
 **definitionSnapshotRevision** | **int**| Definition snapshot revision number. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Task Log**
> String get Task Log(organization, project, releaseId, environmentId, releaseDeployPhaseId, taskId, apiVersion, startLine, endLine)



Gets the task log of a release as a plain text file.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReleasesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release.
var environmentId = 56; // int | Id of release environment.
var releaseDeployPhaseId = 56; // int | Release deploy phase Id.
var taskId = 56; // int | ReleaseTask Id for the log.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var startLine = 789; // int | Starting line number for logs
var endLine = 789; // int | Ending line number for logs

try { 
    var result = api_instance.get Task Log(organization, project, releaseId, environmentId, releaseDeployPhaseId, taskId, apiVersion, startLine, endLine);
    print(result);
} catch (e) {
    print("Exception when calling ReleasesApi->get Task Log: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release. | [default to null]
 **environmentId** | **int**| Id of release environment. | [default to null]
 **releaseDeployPhaseId** | **int**| Release deploy phase Id. | [default to null]
 **taskId** | **int**| ReleaseTask Id for the log. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **startLine** | **int**| Starting line number for logs | [optional] [default to null]
 **endLine** | **int**| Ending line number for logs | [optional] [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<Release> list(organization, project, apiVersion, definitionId, definitionEnvironmentId, searchText, createdBy, statusFilter, environmentStatusFilter, minCreatedTime, maxCreatedTime, queryOrder, $top, continuationToken, $expand, artifactTypeId, sourceId, artifactVersionId, sourceBranchFilter, isDeleted, tagFilter, propertyFilters, releaseIdFilter, path)



Get a list of releases

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReleasesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var definitionId = 56; // int | Releases from this release definition Id.
var definitionEnvironmentId = 56; // int | 
var searchText = searchText_example; // String | Releases with names containing searchText.
var createdBy = createdBy_example; // String | Releases created by this user.
var statusFilter = statusFilter_example; // String | Releases that have this status.
var environmentStatusFilter = 56; // int | 
var minCreatedTime = 2013-10-20T19:20:30+01:00; // DateTime | Releases that were created after this time.
var maxCreatedTime = 2013-10-20T19:20:30+01:00; // DateTime | Releases that were created before this time.
var queryOrder = queryOrder_example; // String | Gets the results in the defined order of created date for releases. Default is descending.
var $top = 56; // int | Number of releases to get. Default is 50.
var continuationToken = 56; // int | Gets the releases after the continuation token provided.
var $expand = $expand_example; // String | The property that should be expanded in the list of releases.
var artifactTypeId = artifactTypeId_example; // String | Releases with given artifactTypeId will be returned. Values can be Build, Jenkins, GitHub, Nuget, Team Build (external), ExternalTFSBuild, Git, TFVC, ExternalTfsXamlBuild.
var sourceId = sourceId_example; // String | Unique identifier of the artifact used. e.g. For build it would be {projectGuid}:{BuildDefinitionId}, for Jenkins it would be {JenkinsConnectionId}:{JenkinsDefinitionId}, for TfsOnPrem it would be {TfsOnPremConnectionId}:{ProjectName}:{TfsOnPremDefinitionId}. For third-party artifacts e.g. TeamCity, BitBucket you may refer 'uniqueSourceIdentifier' inside vss-extension.json https://github.com/Microsoft/vsts-rm-extensions/blob/master/Extensions.
var artifactVersionId = artifactVersionId_example; // String | Releases with given artifactVersionId will be returned. E.g. in case of Build artifactType, it is buildId.
var sourceBranchFilter = sourceBranchFilter_example; // String | Releases with given sourceBranchFilter will be returned.
var isDeleted = true; // bool | Gets the soft deleted releases, if true.
var tagFilter = tagFilter_example; // String | A comma-delimited list of tags. Only releases with these tags will be returned.
var propertyFilters = propertyFilters_example; // String | A comma-delimited list of extended properties to be retrieved. If set, the returned Releases will contain values for the specified property Ids (if they exist). If not set, properties will not be included. Note that this will not filter out any Release from results irrespective of whether it has property set or not.
var releaseIdFilter = releaseIdFilter_example; // String | A comma-delimited list of releases Ids. Only releases with these Ids will be returned.
var path = path_example; // String | Releases under this folder path will be returned

try { 
    var result = api_instance.list(organization, project, apiVersion, definitionId, definitionEnvironmentId, searchText, createdBy, statusFilter, environmentStatusFilter, minCreatedTime, maxCreatedTime, queryOrder, $top, continuationToken, $expand, artifactTypeId, sourceId, artifactVersionId, sourceBranchFilter, isDeleted, tagFilter, propertyFilters, releaseIdFilter, path);
    print(result);
} catch (e) {
    print("Exception when calling ReleasesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **definitionId** | **int**| Releases from this release definition Id. | [optional] [default to null]
 **definitionEnvironmentId** | **int**|  | [optional] [default to null]
 **searchText** | **String**| Releases with names containing searchText. | [optional] [default to null]
 **createdBy** | **String**| Releases created by this user. | [optional] [default to null]
 **statusFilter** | **String**| Releases that have this status. | [optional] [default to null]
 **environmentStatusFilter** | **int**|  | [optional] [default to null]
 **minCreatedTime** | **DateTime**| Releases that were created after this time. | [optional] [default to null]
 **maxCreatedTime** | **DateTime**| Releases that were created before this time. | [optional] [default to null]
 **queryOrder** | **String**| Gets the results in the defined order of created date for releases. Default is descending. | [optional] [default to null]
 **$top** | **int**| Number of releases to get. Default is 50. | [optional] [default to null]
 **continuationToken** | **int**| Gets the releases after the continuation token provided. | [optional] [default to null]
 **$expand** | **String**| The property that should be expanded in the list of releases. | [optional] [default to null]
 **artifactTypeId** | **String**| Releases with given artifactTypeId will be returned. Values can be Build, Jenkins, GitHub, Nuget, Team Build (external), ExternalTFSBuild, Git, TFVC, ExternalTfsXamlBuild. | [optional] [default to null]
 **sourceId** | **String**| Unique identifier of the artifact used. e.g. For build it would be {projectGuid}:{BuildDefinitionId}, for Jenkins it would be {JenkinsConnectionId}:{JenkinsDefinitionId}, for TfsOnPrem it would be {TfsOnPremConnectionId}:{ProjectName}:{TfsOnPremDefinitionId}. For third-party artifacts e.g. TeamCity, BitBucket you may refer &#39;uniqueSourceIdentifier&#39; inside vss-extension.json https://github.com/Microsoft/vsts-rm-extensions/blob/master/Extensions. | [optional] [default to null]
 **artifactVersionId** | **String**| Releases with given artifactVersionId will be returned. E.g. in case of Build artifactType, it is buildId. | [optional] [default to null]
 **sourceBranchFilter** | **String**| Releases with given sourceBranchFilter will be returned. | [optional] [default to null]
 **isDeleted** | **bool**| Gets the soft deleted releases, if true. | [optional] [default to null]
 **tagFilter** | **String**| A comma-delimited list of tags. Only releases with these tags will be returned. | [optional] [default to null]
 **propertyFilters** | **String**| A comma-delimited list of extended properties to be retrieved. If set, the returned Releases will contain values for the specified property Ids (if they exist). If not set, properties will not be included. Note that this will not filter out any Release from results irrespective of whether it has property set or not. | [optional] [default to null]
 **releaseIdFilter** | **String**| A comma-delimited list of releases Ids. Only releases with these Ids will be returned. | [optional] [default to null]
 **path** | **String**| Releases under this folder path will be returned | [optional] [default to null]

### Return type

[**List<Release>**](Release.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Release**
> Release update Release(organization, project, releaseId, apiVersion, body)



Update a complete release object.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReleasesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release to update.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = Release(); // Release | Release object for update.

try { 
    var result = api_instance.update Release(organization, project, releaseId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ReleasesApi->update Release: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release to update. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**Release**](Release.md)| Release object for update. | 

### Return type

[**Release**](Release.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Release Environment**
> ReleaseEnvironment update Release Environment(organization, project, releaseId, environmentId, apiVersion, body)



Update the status of a release environment

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReleasesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release.
var environmentId = 56; // int | Id of release environment.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.6' to use this version of the api.
var body = ReleaseEnvironmentUpdateMetadata(); // ReleaseEnvironmentUpdateMetadata | Environment update meta data.

try { 
    var result = api_instance.update Release Environment(organization, project, releaseId, environmentId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ReleasesApi->update Release Environment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release. | [default to null]
 **environmentId** | **int**| Id of release environment. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.6&#39; to use this version of the api. | [default to null]
 **body** | [**ReleaseEnvironmentUpdateMetadata**](ReleaseEnvironmentUpdateMetadata.md)| Environment update meta data. | 

### Return type

[**ReleaseEnvironment**](ReleaseEnvironment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Release Resource**
> Release update Release Resource(organization, project, releaseId, apiVersion, body)



Update few properties of a release.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReleasesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release to update.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = ReleaseUpdateMetadata(); // ReleaseUpdateMetadata | Properties of release to update.

try { 
    var result = api_instance.update Release Resource(organization, project, releaseId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ReleasesApi->update Release Resource: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release to update. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**ReleaseUpdateMetadata**](ReleaseUpdateMetadata.md)| Properties of release to update. | 

### Return type

[**Release**](Release.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

