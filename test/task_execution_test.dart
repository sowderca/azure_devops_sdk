import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TaskExecution
void main() {
  var instance = TaskExecution();

  group('test TaskExecution', () {
    // TaskReference execTask (default value: null)
    test('to test the property `execTask`', () async {
      // TODO
    });

    // If a task is going to run code, then this provides the type/script etc... information by platform. For example, it might look like. net45: { typeName: \"Microsoft.TeamFoundation.Automation.Tasks.PowerShellTask\", assemblyName: \"Microsoft.TeamFoundation.Automation.Tasks.PowerShell.dll\" } net20: { typeName: \"Microsoft.TeamFoundation.Automation.Tasks.PowerShellTask\", assemblyName: \"Microsoft.TeamFoundation.Automation.Tasks.PowerShell.dll\" } java: { jar: \"powershelltask.tasks.automation.teamfoundation.microsoft.com\", } node: { script: \"powershellhost.js\", }
    // Map<String, Map<String, String>> platformInstructions (default value: {})
    test('to test the property `platformInstructions`', () async {
      // TODO
    });


  });

}
