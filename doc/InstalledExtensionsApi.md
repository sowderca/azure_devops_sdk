# azure_devops_sdk.api.InstalledExtensionsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](InstalledExtensionsApi.md#callGet) | **GET** /{organization}/_apis/extensionmanagement/installedextensionsbyname/{publisherName}/{extensionName} | 
[**install Extension By Name**](InstalledExtensionsApi.md#install Extension By Name) | **POST** /{organization}/_apis/extensionmanagement/installedextensionsbyname/{publisherName}/{extensionName}/{version} | 
[**list**](InstalledExtensionsApi.md#list) | **GET** /{organization}/_apis/extensionmanagement/installedextensions | 
[**uninstall Extension By Name**](InstalledExtensionsApi.md#uninstall Extension By Name) | **DELETE** /{organization}/_apis/extensionmanagement/installedextensionsbyname/{publisherName}/{extensionName} | 
[**update**](InstalledExtensionsApi.md#update) | **PATCH** /{organization}/_apis/extensionmanagement/installedextensions | 


# **callGet**
> InstalledExtension callGet(organization, publisherName, extensionName, apiVersion, assetTypes)



Get an installed extension by its publisher and extension name.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = InstalledExtensionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var publisherName = publisherName_example; // String | Name of the publisher. Example: \"fabrikam\".
var extensionName = extensionName_example; // String | Name of the extension. Example: \"ops-tools\".
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var assetTypes = assetTypes_example; // String | 

try { 
    var result = api_instance.callGet(organization, publisherName, extensionName, apiVersion, assetTypes);
    print(result);
} catch (e) {
    print("Exception when calling InstalledExtensionsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **publisherName** | **String**| Name of the publisher. Example: \&quot;fabrikam\&quot;. | [default to null]
 **extensionName** | **String**| Name of the extension. Example: \&quot;ops-tools\&quot;. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **assetTypes** | **String**|  | [optional] [default to null]

### Return type

[**InstalledExtension**](InstalledExtension.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **install Extension By Name**
> InstalledExtension install Extension By Name(organization, publisherName, extensionName, version, apiVersion)



Install the specified extension into the account / project collection.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = InstalledExtensionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var publisherName = publisherName_example; // String | Name of the publisher. Example: \"fabrikam\".
var extensionName = extensionName_example; // String | Name of the extension. Example: \"ops-tools\".
var version = version_example; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.install Extension By Name(organization, publisherName, extensionName, version, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling InstalledExtensionsApi->install Extension By Name: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **publisherName** | **String**| Name of the publisher. Example: \&quot;fabrikam\&quot;. | [default to null]
 **extensionName** | **String**| Name of the extension. Example: \&quot;ops-tools\&quot;. | [default to null]
 **version** | **String**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**InstalledExtension**](InstalledExtension.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<InstalledExtension> list(organization, apiVersion, includeDisabledExtensions, includeErrors, assetTypes, includeInstallationIssues)



List the installed extensions in the account / project collection.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = InstalledExtensionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeDisabledExtensions = true; // bool | If true (the default), include disabled extensions in the results.
var includeErrors = true; // bool | If true, include installed extensions with errors.
var assetTypes = assetTypes_example; // String | 
var includeInstallationIssues = true; // bool | 

try { 
    var result = api_instance.list(organization, apiVersion, includeDisabledExtensions, includeErrors, assetTypes, includeInstallationIssues);
    print(result);
} catch (e) {
    print("Exception when calling InstalledExtensionsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeDisabledExtensions** | **bool**| If true (the default), include disabled extensions in the results. | [optional] [default to null]
 **includeErrors** | **bool**| If true, include installed extensions with errors. | [optional] [default to null]
 **assetTypes** | **String**|  | [optional] [default to null]
 **includeInstallationIssues** | **bool**|  | [optional] [default to null]

### Return type

[**List<InstalledExtension>**](InstalledExtension.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uninstall Extension By Name**
> uninstall Extension By Name(organization, publisherName, extensionName, apiVersion, reason, reasonCode)



Uninstall the specified extension from the account / project collection.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = InstalledExtensionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var publisherName = publisherName_example; // String | Name of the publisher. Example: \"fabrikam\".
var extensionName = extensionName_example; // String | Name of the extension. Example: \"ops-tools\".
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var reason = reason_example; // String | 
var reasonCode = reasonCode_example; // String | 

try { 
    api_instance.uninstall Extension By Name(organization, publisherName, extensionName, apiVersion, reason, reasonCode);
} catch (e) {
    print("Exception when calling InstalledExtensionsApi->uninstall Extension By Name: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **publisherName** | **String**| Name of the publisher. Example: \&quot;fabrikam\&quot;. | [default to null]
 **extensionName** | **String**| Name of the extension. Example: \&quot;ops-tools\&quot;. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **reason** | **String**|  | [optional] [default to null]
 **reasonCode** | **String**|  | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> InstalledExtension update(organization, apiVersion, body)



Update an installed extension. Typically this API is used to enable or disable an extension.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = InstalledExtensionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = InstalledExtension(); // InstalledExtension | 

try { 
    var result = api_instance.update(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling InstalledExtensionsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**InstalledExtension**](InstalledExtension.md)|  | 

### Return type

[**InstalledExtension**](InstalledExtension.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

