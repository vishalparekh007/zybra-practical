# Zybra Practical

A Flutter Task Management App built using MVVM architecture, Riverpod for state management, SQLite for local data storage, and Hive for lightweight data storage.

## Features

- **Task Management**: Add, edit, delete, and view tasks.
- **Task Status**: Mark tasks as "Completed" or "Pending."
- **Responsive UI**: Designed for both mobile and tablet devices.
- **Local Storage**: Utilizes SQLite for structured data storage and Hive for lightweight data storage.

## Getting Started

This project is a starting point for a Flutter application. Follow these steps to set up and run the project on your local machine:

### Prerequisites

Before you begin, ensure you have met the following requirements:

- **Flutter SDK**: Make sure you have Flutter installed on your machine. Follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install).
- **IDE**: Use an IDE such as Visual Studio Code or Android Studio for development.

### 1. Clone the Repository

Open your terminal and run the following command to clone the repository:

```bash
git clone https://github.com/yourusername/zybra_practical.git
cd zybra_practical
flutter pub get
flutter pub run build_runner build
flutter run

zybra_practical/
├── android/                  # Android-specific files
├── ios/                      # iOS-specific files
├── lib/                      # Main application code
│   ├── models/               # Data models
│   │   ├── task.dart         # Task model
│   │   └── user_preferences.dart # User preferences model
│   ├── providers/            # State management providers
│   │   └── task_provider.dart # Task provider
│   ├── services/             # Services for database and preferences
│   │   ├── database_helper.dart # SQLite database helper
│   │   └── preferences_helper.dart # Hive preferences helper
│   ├── views/                # UI views
│   │   ├── task_list_view.dart # Task list view
│   │   └── add_task_view.dart   # Add task view
│   ├── main.dart             # Main entry point of the application
└── pubspec.yaml              # Project dependencies and metadata