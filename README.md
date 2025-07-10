# 🧑 Profile Editor with Public Viewer

A Flutter project to view and edit a user profile. Built with clean architecture, BLoC, Hive, Dio, GoRouter, and Material 3.

---

## ✅ Features

- View public profile (read-only)
- Edit profile fields with form validation
- Simulated REST API using Dio (GET / PUT)
- Local data persistence using Hive
- Responsive design across Android, iOS, and Windows
- Material 3 UI with modern layout
- Toast/snackbar on success
- Unit tests for form validation

---

## 🛠 Tech Stack

| Stack       | Package                          |
|-------------|----------------------------------|
| Architecture | MVVM + BLoC                      |
| Routing     | `go_router`                      |
| UI Theme    | `Material 3`                     |
| State Mgmt  | `flutter_bloc`                   |
| Forms       | `flutter_form_builder`           |
| Validators  | `form_builder_validators`        |
| API         | `dio` (mocked)                   |
| Local DB    | `hive`, `hive_flutter`           |
| Toast       | `fluttertoast`                   |

---

## 🚀 Getting Started

### 1. Clone

```bash
git clone https://github.com/Karthick-venky/profile-editor.git
cd profile-editor

flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
