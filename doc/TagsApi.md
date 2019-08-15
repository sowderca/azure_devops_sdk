# azure_devops_sdk.api.TagsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add Build Tag**](TagsApi.md#add Build Tag) | **PUT** /{organization}/{project}/_apis/build/builds/{buildId}/tags/{tag} | 
[**add Build Tags**](TagsApi.md#add Build Tags) | **POST** /{organization}/{project}/_apis/build/builds/{buildId}/tags | 
[**add Definition Tag**](TagsApi.md#add Definition Tag) | **PUT** /{organization}/{project}/_apis/build/definitions/{DefinitionId}/tags/{tag} | 
[**add Definition Tags**](TagsApi.md#add Definition Tags) | **POST** /{organization}/{project}/_apis/build/definitions/{DefinitionId}/tags | 
[**delete Build Tag**](TagsApi.md#delete Build Tag) | **DELETE** /{organization}/{project}/_apis/build/builds/{buildId}/tags/{tag} | 
[**delete Definition Tag**](TagsApi.md#delete Definition Tag) | **DELETE** /{organization}/{project}/_apis/build/definitions/{DefinitionId}/tags/{tag} | 
[**get Build Tags**](TagsApi.md#get Build Tags) | **GET** /{organization}/{project}/_apis/build/builds/{buildId}/tags | 
[**get Definition Tags**](TagsApi.md#get Definition Tags) | **GET** /{organization}/{project}/_apis/build/definitions/{DefinitionId}/tags | 
[**get Tags**](TagsApi.md#get Tags) | **GET** /{organization}/{project}/_apis/build/tags | 


# **add Build Tag**
> List<String> add Build Tag(organization, project, buildId, tag, apiVersion)



Adds a tag to a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TagsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var tag = tag_example; // String | The tag to add.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.add Build Tag(organization, project, buildId, tag, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->add Build Tag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **tag** | **String**| The tag to add. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

**List<String>**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add Build Tags**
> List<String> add Build Tags(organization, project, buildId, apiVersion, body)



Adds tags to a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TagsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = [List&lt;String&gt;()]; // List<String> | The tags to add.

try { 
    var result = api_instance.add Build Tags(organization, project, buildId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->add Build Tags: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;String&gt;**](String.md)| The tags to add. | 

### Return type

**List<String>**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add Definition Tag**
> List<String> add Definition Tag(organization, project, definitionId, tag, apiVersion)



Adds a tag to a definition

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TagsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | The ID of the definition.
var tag = tag_example; // String | The tag to add.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.add Definition Tag(organization, project, definitionId, tag, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->add Definition Tag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| The ID of the definition. | [default to null]
 **tag** | **String**| The tag to add. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

**List<String>**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add Definition Tags**
> List<String> add Definition Tags(organization, project, definitionId, apiVersion, body)



Adds multiple tags to a definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TagsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | The ID of the definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = [List&lt;String&gt;()]; // List<String> | The tags to add.

try { 
    var result = api_instance.add Definition Tags(organization, project, definitionId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->add Definition Tags: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| The ID of the definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;String&gt;**](String.md)| The tags to add. | 

### Return type

**List<String>**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete Build Tag**
> List<String> delete Build Tag(organization, project, buildId, tag, apiVersion)



Removes a tag from a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TagsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var tag = tag_example; // String | The tag to remove.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.delete Build Tag(organization, project, buildId, tag, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->delete Build Tag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **tag** | **String**| The tag to remove. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

**List<String>**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete Definition Tag**
> List<String> delete Definition Tag(organization, project, definitionId, tag, apiVersion)



Removes a tag from a definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TagsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | The ID of the definition.
var tag = tag_example; // String | The tag to remove.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.delete Definition Tag(organization, project, definitionId, tag, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->delete Definition Tag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| The ID of the definition. | [default to null]
 **tag** | **String**| The tag to remove. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

**List<String>**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Build Tags**
> List<String> get Build Tags(organization, project, buildId, apiVersion)



Gets the tags for a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TagsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Build Tags(organization, project, buildId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->get Build Tags: $e\n");
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

**List<String>**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Definition Tags**
> List<String> get Definition Tags(organization, project, definitionId, apiVersion, revision)



Gets the tags for a definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TagsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | The ID of the definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var revision = 56; // int | The definition revision number. If not specified, uses the latest revision of the definition.

try { 
    var result = api_instance.get Definition Tags(organization, project, definitionId, apiVersion, revision);
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->get Definition Tags: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| The ID of the definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **revision** | **int**| The definition revision number. If not specified, uses the latest revision of the definition. | [optional] [default to null]

### Return type

**List<String>**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Tags**
> List<String> get Tags(organization, project, apiVersion)



Gets a list of all build and definition tags in the project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TagsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Tags(organization, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->get Tags: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

**List<String>**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

