# azure_devops_sdk.api.DiagnosticLogsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](DiagnosticLogsApi.md#list) | **GET** /{organization}/_apis/notification/diagnosticlogs/{source}/entries/{entryId} | 


# **list**
> List<INotificationDiagnosticLog> list(source, organization, entryId, apiVersion, startTime, endTime)



List diagnostic logs this service.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DiagnosticLogsApi();
var source = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var organization = organization_example; // String | The name of the Azure DevOps organization.
var entryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var startTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var endTime = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.list(source, organization, entryId, apiVersion, startTime, endTime);
    print(result);
} catch (e) {
    print("Exception when calling DiagnosticLogsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | [**String**](.md)|  | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **entryId** | [**String**](.md)|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **startTime** | **DateTime**|  | [optional] [default to null]
 **endTime** | **DateTime**|  | [optional] [default to null]

### Return type

[**List<INotificationDiagnosticLog>**](INotificationDiagnosticLog.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

