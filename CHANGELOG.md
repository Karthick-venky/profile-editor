# 📦 CHANGELOG

## [v1.0.0] – Initial Release

### ✅ Added

- **Two Screens**
    - `ProfileViewPage`: Public read-only view of profile
    - `EditProfilePage`: Editable form with validation

- **Routing**
    - Integrated `go_router` with:
        - `/` → ProfileViewPage
        - `/edit` → EditProfilePage

- **Form Handling**
    - Used `flutter_form_builder` for clean, structured form input
    - Included fields: Name, Bio, Email, Phone Number, Location

- **Validation**
    - Required fields
    - Email format validation
    - Phone number numeric check using `form_builder_validators`

- **Simulated API**
    - Used Dio to structure:
        - `GET /profile` → Fetch user profile
        - `PUT /profile` → Update user profile
    - Logs simulated API interaction with fake payloads

- **State Management**
    - Implemented with `flutter_bloc`
    - Events: `LoadProfileEvent`, `UpdateProfileEvent`
    - States: `Initial`, `Loading`, `Loaded`, `Error`
    - Dependency injection configured in `main.dart`

- **UI & Styling**
    - Used Material 3 design with seeded `ColorScheme`
    - Built responsive layout using:
        - `ConstrainedBox`, `SingleChildScrollView`
        - `Card`, `Row`, `Column`, `TextFormField`, `ElevatedButton`

- **Theme**
    - Light and modern layout with centralized color config in `app.dart`

### 🧪 Testing

- Unit tests added for:
    - Email field validation
    - Phone number field validation

### 🚀 Enhancements

- Local data persistence using Hive
- Toast using `fluttertoast` on successful update
- Handles app restart using saved Hive data

---

📅 Generated: **July 10, 2025**
