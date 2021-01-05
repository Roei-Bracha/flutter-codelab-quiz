summary: Write your First flutter app
id: docs
categories: Flutter
tags: beginner
status: Published 
authors: Roei Bracha
Feedback Link: https://petetot.netlify.com


<!-- Trivia API: -->
<!-- https://opentdb.com/api_config.php -->


# Write your First flutter app
<!-- ------------------------ -->
## Installing Flutter 
Duration: 30


### Installing flutter

You need two pieces of software to complete this lab—the [Flutter SDK](https://flutter.io/get-started/install/) and [an editor](https://code.visualstudio.com/). (The codelab assumes that you're using Visual Studio Code, but you can use your preferred editor.)

  

### 👨‍💻 Flutter SDK

to work with flutter, first of all, you will have to install the Flutter SDK on your computer you can read how to install it from the [flutter documentation](https://flutter.dev/docs/get-started/install/windows#get-the-flutter-sdk)

#### how to install the SDK:
- create an src folder under C:\ :
`mkdir C:\src`

- run the following commands on the terminal:
`cd C:\src`
`git clone https://github.com/flutter/flutter.git -b stable`

#### update your path ([also avilable here)](https://flutter.dev/docs/get-started/install/windows#update-your-path):

 -  From the Start search bar, enter ‘env’ and select  **Edit environment variables for your account**.
 - Under **User variables** check if there is an entry called **Path**:
	-   If the entry exists, append the full path to  `C:\src\flutter\bin`  using  `;`  as a separator from existing values.
	-   If the entry doesn’t exist, create a new user variable named  `Path`  with the full path to  `C:\src\flutter\bin`  as its value.

### Android Studio
to develop an app for Android, we will need to install the Android SDK Build-Tools and an Android emulator to check our app, so first of all, install android studio:
1.  Download and install [Android Studio](https://developer.android.com/studio).
2.  Start Android Studio, and go through the 'Android Studio Setup Wizard'. This installs the latest Android SDK, Android SDK Command-line Tools, and Android SDK Build-Tools, which are required by Flutter when developing for Android.

### 📱 Android emulator:
we will need a place to run our app and test it, and for that, you can use one of the two options:

 1. [An emulator  - recommended](https://flutter.dev/docs/get-started/install/windows#set-up-the-android-emulator)
 2. [Run on your on device](https://flutter.dev/docs/get-started/install/windows#set-up-your-android-device)

💡 this part can be a little hard if you are using an old PC - make sure that your computer support virtualization and that it is enabled in your BIOS
if you have any problems, use flutter doctor and google for your help 🦸‍♂️

### Visual Studio Code - Flutter extension
install the flutter extension for Visual Studio Code from [here](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)

### 👨‍⚕️ Flutter Doctor :
flutter Doctor is your best friend when you are installing Flutter
after updating your path, close your terminal and re-open it
now run the command:
you need to See green checks like that:
✅ Flutter
✅  Android toolchain
✅ VS Code

### 🌐 Enable Web - optional :
If you want to compile your app to run on the web, you must enable this feature (which is currently in beta). To enable web support, use the following instructions:
```bash
$ flutter channel beta
$ flutter upgrade
$ flutter config --enable-web
```
<!-- ------------------------ -->
## Hello World
Duration: 5

1. Open Visual Studio Code and press `Ctrl + Shift + p` and type `Flutter: New Application Project.`
and choose where do you want to create your app.

2. Now we have the sample project
try to run the app with the little play icon in your visual studio code (at the top right corner).
![enter image description here](./docs/img/play.jpg)



1. Delete all the code from the  `main.dart` file and replace it with the following code:
   ```dart
   import 'package:flutter/material.dart';

    void main() {
    runApp(MyApp());
    }

    class MyApp extends StatelessWidget {
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
        );
    }
    }

    class MyHomePage extends StatelessWidget {
    const MyHomePage({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text("My app"),
        ),
        body: Container(
            child: Center(
            child: Text("Hello world"),
            ),
        ),
        );
        }
    }
   ```

![enter image description here](./docs/img/stage0.jpg)

### So what do we have here:
   ```dart
   void main() {
    runApp(MyApp());
    }
   ```
this part at the begining is where we tell flutter to run Our app:

```dart
   class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
        );
    }
    }
```
the app like any other thing in Flutter is a stetless Widget where we return a [MaterialApp](https://api.flutter.dev/flutter/material/MaterialApp-class.html) Widget
MaterialApp - is A widget that contains an application that uses material design.

in this Widget we define the app theme and set what is our home screen - in this case the `MyHomePage` widget:

```dart
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
      ),
      body: Container(
        child: Center(
          child: Text("Hello world"),
        ),
      ),
    );
  }
}
```

In this widget we are building our first Screen.
To make it easier we use [Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html) a widget that implements the basic material design visual layout structure.

we crate an app bar and set a title with the Text "My app"
under body we will add our app page - in this case a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) with the text hello world centred in the center of the screen

### Extra :
![https://www.youtube.com/watch?v=c1xLMaTUWCY&ab_channel=Flutter](https://www.youtube.com/watch?v=c1xLMaTUWCY&ab_channel=Flutter)


<!-- ------------------------ -->
## Order our directory
Duration: 5

To make sure our app stay organize crate two folders under the `lib` folder:
* widget
* screens

now we will create a new File in The screens folder and call it `MainScreen.dart`

in this file start writing `statelessW` and use the suggested snippet to create an Empty Widget

```dart
class name extends StatelessWidget {
  const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
```
change the name to `MainScreen` and when you in the first line press `Ctrl + .` or the little bulb 💡 and choose `import library 'package:flutter/material.dart'`
cut your widget from the `main.dart` file and paste in this file:

```dart
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
      ),
      body: Container(
        child: Center(
          child: Text("Hello world"),
        ),
      ),
    );
  }
}
```

now we will go to the `main.dart` file and delete the `MyHomePage` Widget
and replace home widget with the MainScreen like that:
(VScode should auto import the mainScreen file for you)
```dart
import 'package:flutter/material.dart';
import 'package:my_game/screens/MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}

```

your directory in the end Should look like that:
![enter image description here](./docs/img/directory0.jpg)

<!-- ------------------------ -->
## Question Widget 
Duration: 10

in this Section we will create the Question Widget and in the end it will look look that:
![enter image description here](./docs/img/directory0.jpg)

### plan before you write

As you can see we have three big elemnts in a column:
* The Question
* Options

in the Options we have a Grid of four buttons - with a centered text

### Create the Question Widget:

create a new widget in the Widgets folder and cal it `question.dart`
and make it return a Column
```dart
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
```

to make sure we will see what we are doing add the widget to our screen `MainScreen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:my_game/widgets/question.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
      ),
      body: Container(
        child: Question(),
      ),
    );
  }
}
```


lets store the Question, the Image Url and the answers in the widgets as properties
and remove the delete the const in fronnt of the Question constructor

this Widget will be a little different every time - we add the const only if the widget have a strict state in compilation time

 `question.dart`:
```dart
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final question_text = "What does CPU stand for?";
  final correct_answer = "Central Processing Unit";
  final incorrect_answers = [
    "Central Process Unit",
    "Computer Personal Unit",
    "Central Processor Unit"
  ];

  Question({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}

```

now we will add the question Text and an empty Container that in the feautre will contain the results
we would like to make them withe equal space from the top so we will add to the column: `mainAxisAlignment: MainAxisAlignment.spaceAround,`
and top make them in the center of the page we will add `crossAxisAlignment: CrossAxisAlignment.center`

```dart
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final question_text = "What does CPU stand for?";
  final correct_answer = "Central Processing Unit";
  final incorrect_answers = [
    "Central Process Unit",
    "Computer Personal Unit",
    "Central Processor Unit"
  ];

  Question({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(this.question_text),
        Container(
          color: Colors.green,
          height: 300,
          width: 300,
        )
      ],
    );
  }
}
```
It will look like that:
![stage 1](./docs/img/stage1.jpg)

so we have the main axies look good but why its not cetered?

the reson is that it is centered in the middle of the column but the column dosent take the all width of the screen
to fix that we will wrap the column with Container and give this container `width:double.infinity` so the container will be in the width of the all screen.
💡 tip - you can press the bulb or `Ctrl + .` when you on the column and choose wrap with container.

![stage 1](./docs/img/stage1-2.jpg)

```dart
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final question_text = "What does CPU stand for?";
  final correct_answer = "Central Processing Unit";
  final incorrect_answers = [
    "Central Process Unit",
    "Computer Personal Unit",
    "Central Processor Unit"
  ];

  Question({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(this.question_text),
          Container(
            color: Colors.green,
            height: 300,
            width: 300,
          )
        ],
      ),
    );
  }
}

```