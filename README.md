# 🧑‍💼 Profile Editor with Public Viewer

A responsive Flutter app that lets users view and edit their public profile.  
Built using clean architecture with BLoC, Hive, Dio, GoRouter, and Material 3 UI.

---

## ✅ Features

- View public profile (read-only)
- Edit profile fields with validation
- Simulated REST API using Dio (GET / PUT)
- Local data persistence using Hive
- Responsive design for Android, iOS, and Windows
- Material 3 UI and layout
- Toast/snackbar on profile update
- Unit tests for form validation logic

---

## 🛠 Tech Stack

| Category     | Package                          |
|--------------|----------------------------------|
| Architecture | MVVM + BLoC                      |
| Routing      | `go_router`                      |
| UI Theme     | `Material 3`                     |
| State Mgmt   | `flutter_bloc`                   |
| Forms        | `flutter_form_builder`           |
| Validators   | `form_builder_validators`        |
| API Client   | `dio` (mocked local API)         |
| Local DB     | `hive`, `hive_flutter`           |
| Toasts       | `fluttertoast`                   |

---

## 🚀 Getting Started

### ✅ Flutter & Dart Version

```yaml
Flutter: 3.19.6
Dart:    3.3.0
```

git clone https://github.com/Karthick-venky/profile-editor.git
cd profile-editor

