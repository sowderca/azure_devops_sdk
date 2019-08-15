# azure_devops_sdk.model.TaskExecution

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**execTask** | [**TaskReference**](TaskReference.md) |  | [optional] [default to null]
**platformInstructions** | [**Map&lt;String, Map&lt;String, String&gt;&gt;**](Map.md) | If a task is going to run code, then this provides the type/script etc... information by platform. For example, it might look like. net45: { typeName: \&quot;Microsoft.TeamFoundation.Automation.Tasks.PowerShellTask\&quot;, assemblyName: \&quot;Microsoft.TeamFoundation.Automation.Tasks.PowerShell.dll\&quot; } net20: { typeName: \&quot;Microsoft.TeamFoundation.Automation.Tasks.PowerShellTask\&quot;, assemblyName: \&quot;Microsoft.TeamFoundation.Automation.Tasks.PowerShell.dll\&quot; } java: { jar: \&quot;powershelltask.tasks.automation.teamfoundation.microsoft.com\&quot;, } node: { script: \&quot;powershellhost.js\&quot;, } | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


