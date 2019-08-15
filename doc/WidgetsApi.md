# azure_devops_sdk.api.WidgetsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](WidgetsApi.md#create) | **POST** /{organization}/{project}/{team}/_apis/dashboard/dashboards/{dashboardId}/widgets | 
[**delete**](WidgetsApi.md#delete) | **DELETE** /{organization}/{project}/{team}/_apis/dashboard/dashboards/{dashboardId}/widgets/{widgetId} | 
[**get Widget**](WidgetsApi.md#get Widget) | **GET** /{organization}/{project}/{team}/_apis/dashboard/dashboards/{dashboardId}/widgets/{widgetId} | 
[**get Widgets**](WidgetsApi.md#get Widgets) | **GET** /{organization}/{project}/{team}/_apis/dashboard/dashboards/{dashboardId}/widgets | 
[**replace Widget**](WidgetsApi.md#replace Widget) | **PUT** /{organization}/{project}/{team}/_apis/dashboard/dashboards/{dashboardId}/widgets/{widgetId} | 
[**replace Widgets**](WidgetsApi.md#replace Widgets) | **PUT** /{organization}/{project}/{team}/_apis/dashboard/dashboards/{dashboardId}/widgets | 
[**update Widget**](WidgetsApi.md#update Widget) | **PATCH** /{organization}/{project}/{team}/_apis/dashboard/dashboards/{dashboardId}/widgets/{widgetId} | 
[**update Widgets**](WidgetsApi.md#update Widgets) | **PATCH** /{organization}/{project}/{team}/_apis/dashboard/dashboards/{dashboardId}/widgets | 


# **create**
> Widget create(organization, project, dashboardId, team, apiVersion, body)



Create a widget on the specified dashboard.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WidgetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var dashboardId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of dashboard the widget will be added to.
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = Widget(); // Widget | State of the widget to add

try { 
    var result = api_instance.create(organization, project, dashboardId, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling WidgetsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **dashboardId** | [**String**](.md)| ID of dashboard the widget will be added to. | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**Widget**](Widget.md)| State of the widget to add | 

### Return type

[**Widget**](Widget.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> Dashboard delete(organization, project, dashboardId, widgetId, team, apiVersion)



Delete the specified widget.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WidgetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var dashboardId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the dashboard containing the widget.
var widgetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the widget to update.
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.delete(organization, project, dashboardId, widgetId, team, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling WidgetsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **dashboardId** | [**String**](.md)| ID of the dashboard containing the widget. | [default to null]
 **widgetId** | [**String**](.md)| ID of the widget to update. | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Widget**
> Widget get Widget(organization, project, dashboardId, widgetId, team, apiVersion)



Get the current state of the specified widget.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WidgetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var dashboardId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the dashboard containing the widget.
var widgetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the widget to read.
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.get Widget(organization, project, dashboardId, widgetId, team, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling WidgetsApi->get Widget: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **dashboardId** | [**String**](.md)| ID of the dashboard containing the widget. | [default to null]
 **widgetId** | [**String**](.md)| ID of the widget to read. | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

[**Widget**](Widget.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Widgets**
> List<Widget> get Widgets(organization, project, dashboardId, team, apiVersion, eTag)



Get widgets contained on the specified dashboard.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WidgetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var dashboardId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the dashboard to read.
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var eTag = eTag_example; // String | Dashboard Widgets Version

try { 
    var result = api_instance.get Widgets(organization, project, dashboardId, team, apiVersion, eTag);
    print(result);
} catch (e) {
    print("Exception when calling WidgetsApi->get Widgets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **dashboardId** | [**String**](.md)| ID of the dashboard to read. | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **eTag** | **String**| Dashboard Widgets Version | [optional] [default to null]

### Return type

[**List<Widget>**](Widget.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replace Widget**
> Widget replace Widget(organization, project, dashboardId, widgetId, team, apiVersion, body)



Override the  state of the specified widget.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WidgetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var dashboardId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the dashboard containing the widget.
var widgetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the widget to update.
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = Widget(); // Widget | State to be written for the widget.

try { 
    var result = api_instance.replace Widget(organization, project, dashboardId, widgetId, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling WidgetsApi->replace Widget: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **dashboardId** | [**String**](.md)| ID of the dashboard containing the widget. | [default to null]
 **widgetId** | [**String**](.md)| ID of the widget to update. | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**Widget**](Widget.md)| State to be written for the widget. | 

### Return type

[**Widget**](Widget.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replace Widgets**
> List<Widget> replace Widgets(organization, project, dashboardId, team, apiVersion, body, eTag)



Replace the widgets on specified dashboard with the supplied widgets.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WidgetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var dashboardId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the Dashboard to modify.
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = [List&lt;Widget&gt;()]; // List<Widget> | Revised state of widgets to store for the dashboard.
var eTag = eTag_example; // String | Dashboard Widgets Version

try { 
    var result = api_instance.replace Widgets(organization, project, dashboardId, team, apiVersion, body, eTag);
    print(result);
} catch (e) {
    print("Exception when calling WidgetsApi->replace Widgets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **dashboardId** | [**String**](.md)| ID of the Dashboard to modify. | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;Widget&gt;**](Widget.md)| Revised state of widgets to store for the dashboard. | 
 **eTag** | **String**| Dashboard Widgets Version | [optional] [default to null]

### Return type

[**List<Widget>**](Widget.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Widget**
> Widget update Widget(organization, project, dashboardId, widgetId, team, apiVersion, body)



Perform a partial update of the specified widget.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WidgetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var dashboardId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the dashboard containing the widget.
var widgetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the widget to update.
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = Widget(); // Widget | Description of the widget changes to apply. All non-null fields will be replaced.

try { 
    var result = api_instance.update Widget(organization, project, dashboardId, widgetId, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling WidgetsApi->update Widget: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **dashboardId** | [**String**](.md)| ID of the dashboard containing the widget. | [default to null]
 **widgetId** | [**String**](.md)| ID of the widget to update. | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**Widget**](Widget.md)| Description of the widget changes to apply. All non-null fields will be replaced. | 

### Return type

[**Widget**](Widget.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Widgets**
> List<Widget> update Widgets(organization, project, dashboardId, team, apiVersion, body, eTag)



Update the supplied widgets on the dashboard using supplied state. State of existing Widgets not passed in the widget list is preserved.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WidgetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var dashboardId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the Dashboard to modify.
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = [List&lt;Widget&gt;()]; // List<Widget> | The set of widget states to update on the dashboard.
var eTag = eTag_example; // String | Dashboard Widgets Version

try { 
    var result = api_instance.update Widgets(organization, project, dashboardId, team, apiVersion, body, eTag);
    print(result);
} catch (e) {
    print("Exception when calling WidgetsApi->update Widgets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **dashboardId** | [**String**](.md)| ID of the Dashboard to modify. | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;Widget&gt;**](Widget.md)| The set of widget states to update on the dashboard. | 
 **eTag** | **String**| Dashboard Widgets Version | [optional] [default to null]

### Return type

[**List<Widget>**](Widget.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

