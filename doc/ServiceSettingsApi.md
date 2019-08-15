# azure_devops_sdk.api.ServiceSettingsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGlobalPermissions**](ServiceSettingsApi.md#getGlobalPermissions) | **GET** /{organization}/_apis/packaging/globalpermissions | 
[**setGlobalPermissions**](ServiceSettingsApi.md#setGlobalPermissions) | **PATCH** /{organization}/_apis/packaging/globalpermissions | 


# **getGlobalPermissions**
> List<GlobalPermission> getGlobalPermissions(organization, apiVersion, includeIds)



Get all service-wide feed creation and administration permissions.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ServiceSettingsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeIds = true; // bool | Set to true to add IdentityIds to the permission objects.

try { 
    var result = api_instance.getGlobalPermissions(organization, apiVersion, includeIds);
    print(result);
} catch (e) {
    print("Exception when calling ServiceSettingsApi->getGlobalPermissions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeIds** | **bool**| Set to true to add IdentityIds to the permission objects. | [optional] [default to null]

### Return type

[**List<GlobalPermission>**](GlobalPermission.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setGlobalPermissions**
> List<GlobalPermission> setGlobalPermissions(organization, apiVersion, body)



Set service-wide permissions that govern feed creation and administration.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ServiceSettingsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = [List&lt;GlobalPermission&gt;()]; // List<GlobalPermission> | New permissions for the organization.

try { 
    var result = api_instance.setGlobalPermissions(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ServiceSettingsApi->setGlobalPermissions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;GlobalPermission&gt;**](GlobalPermission.md)| New permissions for the organization. | 

### Return type

[**List<GlobalPermission>**](GlobalPermission.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

