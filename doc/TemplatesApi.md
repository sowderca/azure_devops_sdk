# azure_devops_sdk.api.TemplatesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](TemplatesApi.md#callGet) | **GET** /{organization}/{project}/_apis/build/definitions/templates/{templateId} | 
[**callGet_0**](TemplatesApi.md#callGet_0) | **GET** /{organization}/{project}/{team}/_apis/wit/templates/{templateId} | 
[**create**](TemplatesApi.md#create) | **POST** /{organization}/{project}/{team}/_apis/wit/templates | 
[**delete**](TemplatesApi.md#delete) | **DELETE** /{organization}/{project}/_apis/build/definitions/templates/{templateId} | 
[**delete_0**](TemplatesApi.md#delete_0) | **DELETE** /{organization}/{project}/{team}/_apis/wit/templates/{templateId} | 
[**list**](TemplatesApi.md#list) | **GET** /{organization}/{project}/_apis/build/definitions/templates | 
[**list_0**](TemplatesApi.md#list_0) | **GET** /{organization}/{project}/{team}/_apis/wit/templates | 
[**replace Template**](TemplatesApi.md#replace Template) | **PUT** /{organization}/{project}/{team}/_apis/wit/templates/{templateId} | 
[**save Template**](TemplatesApi.md#save Template) | **PUT** /{organization}/{project}/_apis/build/definitions/templates/{templateId} | 


# **callGet**
> BuildDefinitionTemplate callGet(organization, project, templateId, apiVersion)



Gets a specific build definition template.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TemplatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var templateId = templateId_example; // String | The ID of the requested template.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, templateId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TemplatesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **templateId** | **String**| The ID of the requested template. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**BuildDefinitionTemplate**](BuildDefinitionTemplate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> WorkItemTemplate callGet_0(organization, project, team, templateId, apiVersion)



Gets the template with specified id

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TemplatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var templateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Template Id
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet_0(organization, project, team, templateId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TemplatesApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **templateId** | [**String**](.md)| Template Id | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**WorkItemTemplate**](WorkItemTemplate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> WorkItemTemplate create(organization, project, team, apiVersion, body)



Creates a template

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TemplatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = WorkItemTemplate(); // WorkItemTemplate | Template contents

try { 
    var result = api_instance.create(organization, project, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TemplatesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**WorkItemTemplate**](WorkItemTemplate.md)| Template contents | 

### Return type

[**WorkItemTemplate**](WorkItemTemplate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, templateId, apiVersion)



Deletes a build definition template.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TemplatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var templateId = templateId_example; // String | The ID of the template.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(organization, project, templateId, apiVersion);
} catch (e) {
    print("Exception when calling TemplatesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **templateId** | **String**| The ID of the template. | [default to null]
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
> delete_0(organization, project, team, templateId, apiVersion)



Deletes the template with given id

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TemplatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var templateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Template id
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete_0(organization, project, team, templateId, apiVersion);
} catch (e) {
    print("Exception when calling TemplatesApi->delete_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **templateId** | [**String**](.md)| Template id | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<BuildDefinitionTemplate> list(organization, project, apiVersion)



Gets all definition templates.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TemplatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TemplatesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<BuildDefinitionTemplate>**](BuildDefinitionTemplate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_0**
> List<WorkItemTemplateReference> list_0(organization, project, team, apiVersion, workitemtypename)



Gets template

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TemplatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var workitemtypename = workitemtypename_example; // String | Optional, When specified returns templates for given Work item type.

try { 
    var result = api_instance.list_0(organization, project, team, apiVersion, workitemtypename);
    print(result);
} catch (e) {
    print("Exception when calling TemplatesApi->list_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **workitemtypename** | **String**| Optional, When specified returns templates for given Work item type. | [optional] [default to null]

### Return type

[**List<WorkItemTemplateReference>**](WorkItemTemplateReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replace Template**
> WorkItemTemplate replace Template(organization, project, team, templateId, apiVersion, body)



Replace template contents

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TemplatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var templateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Template id
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = WorkItemTemplate(); // WorkItemTemplate | Template contents to replace with

try { 
    var result = api_instance.replace Template(organization, project, team, templateId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TemplatesApi->replace Template: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **templateId** | [**String**](.md)| Template id | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**WorkItemTemplate**](WorkItemTemplate.md)| Template contents to replace with | 

### Return type

[**WorkItemTemplate**](WorkItemTemplate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **save Template**
> BuildDefinitionTemplate save Template(organization, project, templateId, apiVersion, body)



Updates an existing build definition template.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TemplatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var templateId = templateId_example; // String | The ID of the template.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = BuildDefinitionTemplate(); // BuildDefinitionTemplate | The new version of the template.

try { 
    var result = api_instance.save Template(organization, project, templateId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TemplatesApi->save Template: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **templateId** | **String**| The ID of the template. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**BuildDefinitionTemplate**](BuildDefinitionTemplate.md)| The new version of the template. | 

### Return type

[**BuildDefinitionTemplate**](BuildDefinitionTemplate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

