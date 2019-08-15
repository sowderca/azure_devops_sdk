# azure_devops_sdk.model.TaskAgentSessionKey

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**encrypted** | **bool** | Gets or sets a value indicating whether or not the key value is encrypted. If this value is true, the Value property should be decrypted using the &lt;c&gt;RSA&lt;/c&gt; key exchanged with the server during registration. | [optional] [default to null]
**value** | **List&lt;String&gt;** | Gets or sets the symmetric key value. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


