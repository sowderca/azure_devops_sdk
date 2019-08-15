# azure_devops_sdk.api.BuildsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](BuildsApi.md#callGet) | **GET** /{organization}/{project}/_apis/build/builds/{buildId} | 
[**delete**](BuildsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/build/builds/{buildId} | 
[**get Build Changes**](BuildsApi.md#get Build Changes) | **GET** /{organization}/{project}/_apis/build/builds/{buildId}/changes | 
[**get Build Log**](BuildsApi.md#get Build Log) | **GET** /{organization}/{project}/_apis/build/builds/{buildId}/logs/{logId} | 
[**get Build Logs**](BuildsApi.md#get Build Logs) | **GET** /{organization}/{project}/_apis/build/builds/{buildId}/logs | 
[**get Build Work Items Refs**](BuildsApi.md#get Build Work Items Refs) | **GET** /{organization}/{project}/_apis/build/builds/{buildId}/workitems | 
[**get Build Work Items Refs From Commits**](BuildsApi.md#get Build Work Items Refs From Commits) | **POST** /{organization}/{project}/_apis/build/builds/{buildId}/workitems | 
[**get Changes Between Builds**](BuildsApi.md#get Changes Between Builds) | **GET** /{organization}/{project}/_apis/build/changes | 
[**get Work Items Between Builds**](BuildsApi.md#get Work Items Between Builds) | **GET** /{organization}/{project}/_apis/build/workitems | 
[**list**](BuildsApi.md#list) | **GET** /{organization}/{project}/_apis/build/builds | 
[**queue**](BuildsApi.md#queue) | **POST** /{organization}/{project}/_apis/build/builds | 
[**update Build**](BuildsApi.md#update Build) | **PATCH** /{organization}/{project}/_apis/build/builds/{buildId} | 
[**update Builds**](BuildsApi.md#update Builds) | **PATCH** /{organization}/{project}/_apis/build/builds | 


# **callGet**
> Build callGet(organization, project, buildId, apiVersion, propertyFilters)



Gets a build

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var propertyFilters = propertyFilters_example; // String | 

try { 
    var result = api_instance.callGet(organization, project, buildId, apiVersion, propertyFilters);
    print(result);
} catch (e) {
    print("Exception when calling BuildsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **propertyFilters** | **String**|  | [optional] [default to null]

### Return type

[**Build**](Build.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, buildId, apiVersion)



Deletes a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(organization, project, buildId, apiVersion);
} catch (e) {
    print("Exception when calling BuildsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Build Changes**
> List<Change> get Build Changes(organization, project, buildId, apiVersion, continuationToken, $top, includeSourceChange)



Gets the changes associated with a build

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var continuationToken = continuationToken_example; // String | 
var $top = 56; // int | The maximum number of changes to return
var includeSourceChange = true; // bool | 

try { 
    var result = api_instance.get Build Changes(organization, project, buildId, apiVersion, continuationToken, $top, includeSourceChange);
    print(result);
} catch (e) {
    print("Exception when calling BuildsApi->get Build Changes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **continuationToken** | **String**|  | [optional] [default to null]
 **$top** | **int**| The maximum number of changes to return | [optional] [default to null]
 **includeSourceChange** | **bool**|  | [optional] [default to null]

### Return type

[**List<Change>**](Change.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Build Log**
> String get Build Log(organization, project, buildId, logId, apiVersion, startLine, endLine)



Gets an individual log file for a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var logId = 56; // int | The ID of the log file.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var startLine = 789; // int | The start line.
var endLine = 789; // int | The end line.

try { 
    var result = api_instance.get Build Log(organization, project, buildId, logId, apiVersion, startLine, endLine);
    print(result);
} catch (e) {
    print("Exception when calling BuildsApi->get Build Log: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **logId** | **int**| The ID of the log file. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **startLine** | **int**| The start line. | [optional] [default to null]
 **endLine** | **int**| The end line. | [optional] [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Build Logs**
> List<BuildLog> get Build Logs(organization, project, buildId, apiVersion)



Gets the logs for a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Build Logs(organization, project, buildId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling BuildsApi->get Build Logs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<BuildLog>**](BuildLog.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Build Work Items Refs**
> List<ResourceRef> get Build Work Items Refs(organization, project, buildId, apiVersion, $top)



Gets the work items associated with a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $top = 56; // int | The maximum number of work items to return.

try { 
    var result = api_instance.get Build Work Items Refs(organization, project, buildId, apiVersion, $top);
    print(result);
} catch (e) {
    print("Exception when calling BuildsApi->get Build Work Items Refs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$top** | **int**| The maximum number of work items to return. | [optional] [default to null]

### Return type

[**List<ResourceRef>**](ResourceRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Build Work Items Refs From Commits**
> List<ResourceRef> get Build Work Items Refs From Commits(organization, project, buildId, apiVersion, body, $top)



Gets the work items associated with a build, filtered to specific commits.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = [List&lt;String&gt;()]; // List<String> | A comma-delimited list of commit IDs.
var $top = 56; // int | The maximum number of work items to return, or the number of commits to consider if no commit IDs are specified.

try { 
    var result = api_instance.get Build Work Items Refs From Commits(organization, project, buildId, apiVersion, body, $top);
    print(result);
} catch (e) {
    print("Exception when calling BuildsApi->get Build Work Items Refs From Commits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;String&gt;**](String.md)| A comma-delimited list of commit IDs. | 
 **$top** | **int**| The maximum number of work items to return, or the number of commits to consider if no commit IDs are specified. | [optional] [default to null]

### Return type

[**List<ResourceRef>**](ResourceRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Changes Between Builds**
> List<Change> get Changes Between Builds(organization, project, apiVersion, fromBuildId, toBuildId, $top)



Gets the changes made to the repository between two given builds.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var fromBuildId = 56; // int | The ID of the first build.
var toBuildId = 56; // int | The ID of the last build.
var $top = 56; // int | The maximum number of changes to return.

try { 
    var result = api_instance.get Changes Between Builds(organization, project, apiVersion, fromBuildId, toBuildId, $top);
    print(result);
} catch (e) {
    print("Exception when calling BuildsApi->get Changes Between Builds: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **fromBuildId** | **int**| The ID of the first build. | [optional] [default to null]
 **toBuildId** | **int**| The ID of the last build. | [optional] [default to null]
 **$top** | **int**| The maximum number of changes to return. | [optional] [default to null]

### Return type

[**List<Change>**](Change.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Work Items Between Builds**
> List<ResourceRef> get Work Items Between Builds(organization, project, fromBuildId, toBuildId, apiVersion, $top)



Gets all the work items between two builds.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var fromBuildId = 56; // int | The ID of the first build.
var toBuildId = 56; // int | The ID of the last build.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var $top = 56; // int | The maximum number of work items to return.

try { 
    var result = api_instance.get Work Items Between Builds(organization, project, fromBuildId, toBuildId, apiVersion, $top);
    print(result);
} catch (e) {
    print("Exception when calling BuildsApi->get Work Items Between Builds: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **fromBuildId** | **int**| The ID of the first build. | [default to null]
 **toBuildId** | **int**| The ID of the last build. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **$top** | **int**| The maximum number of work items to return. | [optional] [default to null]

### Return type

[**List<ResourceRef>**](ResourceRef.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<Build> list(organization, project, apiVersion, definitions, queues, buildNumber, minTime, maxTime, requestedFor, reasonFilter, statusFilter, resultFilter, tagFilters, properties, $top, continuationToken, maxBuildsPerDefinition, deletedFilter, queryOrder, branchName, buildIds, repositoryId, repositoryType)



Gets a list of builds.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var definitions = definitions_example; // String | A comma-delimited list of definition IDs. If specified, filters to builds for these definitions.
var queues = queues_example; // String | A comma-delimited list of queue IDs. If specified, filters to builds that ran against these queues.
var buildNumber = buildNumber_example; // String | If specified, filters to builds that match this build number. Append * to do a prefix search.
var minTime = 2013-10-20T19:20:30+01:00; // DateTime | If specified, filters to builds that finished/started/queued after this date based on the queryOrder specified.
var maxTime = 2013-10-20T19:20:30+01:00; // DateTime | If specified, filters to builds that finished/started/queued before this date based on the queryOrder specified.
var requestedFor = requestedFor_example; // String | If specified, filters to builds requested for the specified user.
var reasonFilter = reasonFilter_example; // String | If specified, filters to builds that match this reason.
var statusFilter = statusFilter_example; // String | If specified, filters to builds that match this status.
var resultFilter = resultFilter_example; // String | If specified, filters to builds that match this result.
var tagFilters = tagFilters_example; // String | A comma-delimited list of tags. If specified, filters to builds that have the specified tags.
var properties = properties_example; // String | A comma-delimited list of properties to retrieve.
var $top = 56; // int | The maximum number of builds to return.
var continuationToken = continuationToken_example; // String | A continuation token, returned by a previous call to this method, that can be used to return the next set of builds.
var maxBuildsPerDefinition = 56; // int | The maximum number of builds to return per definition.
var deletedFilter = deletedFilter_example; // String | Indicates whether to exclude, include, or only return deleted builds.
var queryOrder = queryOrder_example; // String | The order in which builds should be returned.
var branchName = branchName_example; // String | If specified, filters to builds that built branches that built this branch.
var buildIds = buildIds_example; // String | A comma-delimited list that specifies the IDs of builds to retrieve.
var repositoryId = repositoryId_example; // String | If specified, filters to builds that built from this repository.
var repositoryType = repositoryType_example; // String | If specified, filters to builds that built from repositories of this type.

try { 
    var result = api_instance.list(organization, project, apiVersion, definitions, queues, buildNumber, minTime, maxTime, requestedFor, reasonFilter, statusFilter, resultFilter, tagFilters, properties, $top, continuationToken, maxBuildsPerDefinition, deletedFilter, queryOrder, branchName, buildIds, repositoryId, repositoryType);
    print(result);
} catch (e) {
    print("Exception when calling BuildsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **definitions** | **String**| A comma-delimited list of definition IDs. If specified, filters to builds for these definitions. | [optional] [default to null]
 **queues** | **String**| A comma-delimited list of queue IDs. If specified, filters to builds that ran against these queues. | [optional] [default to null]
 **buildNumber** | **String**| If specified, filters to builds that match this build number. Append * to do a prefix search. | [optional] [default to null]
 **minTime** | **DateTime**| If specified, filters to builds that finished/started/queued after this date based on the queryOrder specified. | [optional] [default to null]
 **maxTime** | **DateTime**| If specified, filters to builds that finished/started/queued before this date based on the queryOrder specified. | [optional] [default to null]
 **requestedFor** | **String**| If specified, filters to builds requested for the specified user. | [optional] [default to null]
 **reasonFilter** | **String**| If specified, filters to builds that match this reason. | [optional] [default to null]
 **statusFilter** | **String**| If specified, filters to builds that match this status. | [optional] [default to null]
 **resultFilter** | **String**| If specified, filters to builds that match this result. | [optional] [default to null]
 **tagFilters** | **String**| A comma-delimited list of tags. If specified, filters to builds that have the specified tags. | [optional] [default to null]
 **properties** | **String**| A comma-delimited list of properties to retrieve. | [optional] [default to null]
 **$top** | **int**| The maximum number of builds to return. | [optional] [default to null]
 **continuationToken** | **String**| A continuation token, returned by a previous call to this method, that can be used to return the next set of builds. | [optional] [default to null]
 **maxBuildsPerDefinition** | **int**| The maximum number of builds to return per definition. | [optional] [default to null]
 **deletedFilter** | **String**| Indicates whether to exclude, include, or only return deleted builds. | [optional] [default to null]
 **queryOrder** | **String**| The order in which builds should be returned. | [optional] [default to null]
 **branchName** | **String**| If specified, filters to builds that built branches that built this branch. | [optional] [default to null]
 **buildIds** | **String**| A comma-delimited list that specifies the IDs of builds to retrieve. | [optional] [default to null]
 **repositoryId** | **String**| If specified, filters to builds that built from this repository. | [optional] [default to null]
 **repositoryType** | **String**| If specified, filters to builds that built from repositories of this type. | [optional] [default to null]

### Return type

[**List<Build>**](Build.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queue**
> Build queue(organization, project, apiVersion, body, ignoreWarnings, checkInTicket, sourceBuildId)



Queues a build

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = Build(); // Build | 
var ignoreWarnings = true; // bool | 
var checkInTicket = checkInTicket_example; // String | 
var sourceBuildId = 56; // int | 

try { 
    var result = api_instance.queue(organization, project, apiVersion, body, ignoreWarnings, checkInTicket, sourceBuildId);
    print(result);
} catch (e) {
    print("Exception when calling BuildsApi->queue: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**Build**](Build.md)|  | 
 **ignoreWarnings** | **bool**|  | [optional] [default to null]
 **checkInTicket** | **String**|  | [optional] [default to null]
 **sourceBuildId** | **int**|  | [optional] [default to null]

### Return type

[**Build**](Build.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Build**
> Build update Build(organization, project, buildId, apiVersion, body, retry)



Updates a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = Build(); // Build | The build.
var retry = true; // bool | 

try { 
    var result = api_instance.update Build(organization, project, buildId, apiVersion, body, retry);
    print(result);
} catch (e) {
    print("Exception when calling BuildsApi->update Build: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**Build**](Build.md)| The build. | 
 **retry** | **bool**|  | [optional] [default to null]

### Return type

[**Build**](Build.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Builds**
> List<Build> update Builds(organization, project, apiVersion, body)



Updates multiple builds.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BuildsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = [List&lt;Build&gt;()]; // List<Build> | The builds to update.

try { 
    var result = api_instance.update Builds(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling BuildsApi->update Builds: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;Build&gt;**](Build.md)| The builds to update. | 

### Return type

[**List<Build>**](Build.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

