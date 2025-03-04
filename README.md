# flutter_project_template

A Flutter project template with a clean architecture. This template is designed to help you kickstart your Flutter application development with a well-structured and maintainable codebase.

## Features

- **Clean Architecture**: Separation of concerns with a clear distinction between presentation, domain, and data layers.
- **State Management**: Uses `flutter_riverpod` for state management.
- **Routing**: Implements `go_router` for navigation and routing.
- **Networking**: Utilizes `dio` for making HTTP requests.
- **Environment Configuration**: Manages environment variables with `envied`.
- **Logging**: Integrated logging with `logger`.

## Getting Started

1. **Clone the repository**:
    ```sh
    git clone https://github.com/yourusername/flutter_project_template.git
    cd flutter_project_template
    ```

2. **Install dependencies**:
    ```sh
    flutter pub get
    ```

3. **Generate environment files**:
    ```sh
    flutter pub run build_runner build
    ```

4. **Run the application**:
    ```sh
    flutter run
    ```

## Project Structure

- `lib/`: Contains the main source code for the Flutter application.
- `test/`: Contains the unit and widget tests.
- `ios/` and `android/`: Platform-specific code for iOS and Android.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
