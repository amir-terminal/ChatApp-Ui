# ChatApp UI

A Flutter chat interface prototype for Android and iOS. The home screen shows contact avatars, conversation categories, and message previews. Selecting a conversation opens a chat screen with sample messages. The prototype uses local sample data.

## Run locally

Use a Flutter SDK that bundles Dart 2 and satisfies the constraint in [`pubspec.yaml`](pubspec.yaml), then select a connected device or emulator.

~~~bash
flutter pub get
flutter devices
flutter run
~~~

- [`lib/screens/home_screen.dart`](lib/screens/home_screen.dart) and [`lib/screens/chat_screen.dart`](lib/screens/chat_screen.dart) define the main screens.
- [`lib/models/`](lib/models/) holds the user and message models and sample conversations.
- [`lib/widgets/`](lib/widgets/) contains the shared UI components.
