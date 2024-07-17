# adv_flutter_ch6

### *Getx* [(Source Code)](https://github.com/Aksharpatel06/adv_flutter_ch6/tree/master/lib/view/task_1/)

GetX is a popular state management library in Flutter that simplifies state management, dependency injection, and route management. It provides a reactive programming model that makes it easier to build scalable and maintainable Flutter applications.

### Key Features of GetX:
1. **State Management**: Simplifies managing the state of your application.
2. **Dependency Injection**: Makes it easy to manage dependencies and services.
3. **Route Management**: Simplifies navigation and route management.
4. **Reactive Programming**: Provides reactive state management and UI updates.

### GetX Counter App Example

#### Step 1: Add Dependencies
Add `get` package to your `pubspec.yaml` file:
```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.1
```

#### Step 2: Create the Counter Controller
Create a controller class to manage the state:
```dart
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }
}
```

#### Step 3: Create the UI
Create a simple UI to display and update the counter:
```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Counter App")),
      body: Center(
        child: Obx(() => Text("Clicks: ${controller.count}", style: TextStyle(fontSize: 30))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
```


### video 

https://github.com/user-attachments/assets/00cec59c-35e5-4d63-a6e9-def6cef43a94
