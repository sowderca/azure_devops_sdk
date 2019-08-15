# azure_devops_sdk.api.PropertiesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Build Properties**](PropertiesApi.md#get Build Properties) | **GET** /{organization}/{project}/_apis/build/builds/{buildId}/properties | 
[**get Definition Properties**](PropertiesApi.md#get Definition Properties) | **GET** /{organization}/{project}/_apis/build/definitions/{definitionId}/properties | 
[**update Build Properties**](PropertiesApi.md#update Build Properties) | **PATCH** /{organization}/{project}/_apis/build/builds/{buildId}/properties | 
[**update Definition Properties**](PropertiesApi.md#update Definition Properties) | **PATCH** /{organization}/{project}/_apis/build/definitions/{definitionId}/properties | 


# **get Build Properties**
> PropertiesCollection get Build Properties(organization, project, buildId, apiVersion, filter)



Gets properties for a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PropertiesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var filter = filter_example; // String | A comma-delimited list of properties. If specified, filters to these specific properties.

try { 
    var result = api_instance.get Build Properties(organization, project, buildId, apiVersion, filter);
    print(result);
} catch (e) {
    print("Exception when calling PropertiesApi->get Build Properties: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **filter** | **String**| A comma-delimited list of properties. If specified, filters to these specific properties. | [optional] [default to null]

### Return type

[**PropertiesCollection**](PropertiesCollection.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Definition Properties**
> PropertiesCollection get Definition Properties(organization, project, definitionId, apiVersion, filter)



Gets properties for a definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PropertiesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | The ID of the definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var filter = filter_example; // String | A comma-delimited list of properties. If specified, filters to these specific properties.

try { 
    var result = api_instance.get Definition Properties(organization, project, definitionId, apiVersion, filter);
    print(result);
} catch (e) {
    print("Exception when calling PropertiesApi->get Definition Properties: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| The ID of the definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **filter** | **String**| A comma-delimited list of properties. If specified, filters to these specific properties. | [optional] [default to null]

### Return type

[**PropertiesCollection**](PropertiesCollection.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Build Properties**
> PropertiesCollection update Build Properties(organization, project, buildId, apiVersion, body)



Updates properties for a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PropertiesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = JsonPatchDocument(); // JsonPatchDocument | A json-patch document describing the properties to update.

try { 
    var result = api_instance.update Build Properties(organization, project, buildId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PropertiesApi->update Build Properties: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**JsonPatchDocument**](JsonPatchDocument.md)| A json-patch document describing the properties to update. | 

### Return type

[**PropertiesCollection**](PropertiesCollection.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Definition Properties**
> PropertiesCollection update Definition Properties(organization, project, definitionId, apiVersion, body)



Updates properties for a definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PropertiesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definitionId = 56; // int | The ID of the definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = JsonPatchDocument(); // JsonPatchDocument | A json-patch document describing the properties to update.

try { 
    var result = api_instance.update Definition Properties(organization, project, definitionId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PropertiesApi->update Definition Properties: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definitionId** | **int**| The ID of the definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**JsonPatchDocument**](JsonPatchDocument.md)| A json-patch document describing the properties to update. | 

### Return type

[**PropertiesCollection**](PropertiesCollection.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

