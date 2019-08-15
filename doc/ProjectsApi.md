# azure_devops_sdk.api.ProjectsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ProjectsApi.md#callGet) | **GET** /{organization}/_apis/projects/{projectId} | 
[**create**](ProjectsApi.md#create) | **POST** /{organization}/_apis/projects | 
[**delete**](ProjectsApi.md#delete) | **DELETE** /{organization}/_apis/projects/{projectId} | 
[**get Project Properties**](ProjectsApi.md#get Project Properties) | **GET** /{organization}/_apis/projects/{projectId}/properties | 
[**list**](ProjectsApi.md#list) | **GET** /{organization}/_apis/projects | 
[**set Project Properties**](ProjectsApi.md#set Project Properties) | **PATCH** /{organization}/_apis/projects/{projectId}/properties | 
[**update**](ProjectsApi.md#update) | **PATCH** /{organization}/_apis/projects/{projectId} | 


# **callGet**
> TeamProject callGet(organization, projectId, apiVersion, includeCapabilities, includeHistory)



Get project with the specified id or name, optionally including capabilities.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProjectsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = projectId_example; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var includeCapabilities = true; // bool | Include capabilities (such as source control) in the team project result (default: false).
var includeHistory = true; // bool | Search within renamed projects (that had such name in the past).

try { 
    var result = api_instance.callGet(organization, projectId, apiVersion, includeCapabilities, includeHistory);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | **String**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **includeCapabilities** | **bool**| Include capabilities (such as source control) in the team project result (default: false). | [optional] [default to null]
 **includeHistory** | **bool**| Search within renamed projects (that had such name in the past). | [optional] [default to null]

### Return type

[**TeamProject**](TeamProject.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> OperationReference create(organization, apiVersion, body)



Queues a project to be created. Use the [GetOperation](../../operations/operations/get) to periodically check for create project status.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProjectsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TeamProject(); // TeamProject | The project to create.

try { 
    var result = api_instance.create(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TeamProject**](TeamProject.md)| The project to create. | 

### Return type

[**OperationReference**](OperationReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> OperationReference delete(organization, projectId, apiVersion)



Queues a project to be deleted. Use the [GetOperation](../../operations/operations/get) to periodically check for delete project status.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProjectsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The project id of the project to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.delete(organization, projectId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | [**String**](.md)| The project id of the project to delete. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**OperationReference**](OperationReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Project Properties**
> List<ProjectProperty> get Project Properties(organization, projectId, apiVersion, keys)



Get a collection of team project properties.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProjectsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The team project ID.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var keys = keys_example; // String | A comma-delimited string of team project property names. Wildcard characters (\"?\" and \"*\") are supported. If no key is specified, all properties will be returned.

try { 
    var result = api_instance.get Project Properties(organization, projectId, apiVersion, keys);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->get Project Properties: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | [**String**](.md)| The team project ID. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **keys** | **String**| A comma-delimited string of team project property names. Wildcard characters (\&quot;?\&quot; and \&quot;*\&quot;) are supported. If no key is specified, all properties will be returned. | [optional] [default to null]

### Return type

[**List<ProjectProperty>**](ProjectProperty.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<TeamProjectReference> list(organization, apiVersion, stateFilter, $top, $skip, continuationToken, getDefaultTeamImageUrl)



Get all projects in the organization that the authenticated user has access to.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProjectsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var stateFilter = stateFilter_example; // String | Filter on team projects in a specific team project state (default: WellFormed).
var $top = 56; // int | 
var $skip = 56; // int | 
var continuationToken = continuationToken_example; // String | 
var getDefaultTeamImageUrl = true; // bool | 

try { 
    var result = api_instance.list(organization, apiVersion, stateFilter, $top, $skip, continuationToken, getDefaultTeamImageUrl);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **stateFilter** | **String**| Filter on team projects in a specific team project state (default: WellFormed). | [optional] [default to null]
 **$top** | **int**|  | [optional] [default to null]
 **$skip** | **int**|  | [optional] [default to null]
 **continuationToken** | **String**|  | [optional] [default to null]
 **getDefaultTeamImageUrl** | **bool**|  | [optional] [default to null]

### Return type

[**List<TeamProjectReference>**](TeamProjectReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set Project Properties**
> set Project Properties(organization, projectId, apiVersion, body)



Create, update, and delete team project properties.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProjectsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The team project ID.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = JsonPatchDocument(); // JsonPatchDocument | A JSON Patch document that represents an array of property operations. See RFC 6902 for more details on JSON Patch. The accepted operation verbs are Add and Remove, where Add is used for both creating and updating properties. The path consists of a forward slash and a property name.

try { 
    api_instance.set Project Properties(organization, projectId, apiVersion, body);
} catch (e) {
    print("Exception when calling ProjectsApi->set Project Properties: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | [**String**](.md)| The team project ID. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**JsonPatchDocument**](JsonPatchDocument.md)| A JSON Patch document that represents an array of property operations. See RFC 6902 for more details on JSON Patch. The accepted operation verbs are Add and Remove, where Add is used for both creating and updating properties. The path consists of a forward slash and a property name. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> OperationReference update(organization, projectId, apiVersion, body)



Update an existing project's name, abbreviation, description, or restore a project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProjectsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The project id of the project to update.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TeamProject(); // TeamProject | The updates for the project. The state must be set to wellFormed to restore the project.

try { 
    var result = api_instance.update(organization, projectId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | [**String**](.md)| The project id of the project to update. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TeamProject**](TeamProject.md)| The updates for the project. The state must be set to wellFormed to restore the project. | 

### Return type

[**OperationReference**](OperationReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

