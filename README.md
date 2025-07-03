# Children App Login - Flutter

A beautiful login screen for a children's app built with Flutter, featuring pixel-perfect design matching the provided Figma mockup.

## Features

- 🎨 Pixel-perfect design matching Figma mockup
- 📱 Responsive layout for all screen sizes
- 🎯 Material Design 3 components
- 🔤 Custom Barlow Semi Condensed font family
- 🎨 Beautiful color scheme with yellows and browns
- 📦 Modular widget architecture
- ✨ Smooth animations and interactions

## Design Elements

- Custom yellow gradient background (#FFD370)
- Rounded white card with shadow
- Back button with coral background
- Username and password input fields
- Social login buttons (Google & Facebook)
- Custom typography with proper spacing

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── screens/
│   └── login_screen.dart     # Main login screen
├── widgets/
│   ├── back_button_widget.dart
│   └── social_login_button.dart
└── utils/
    └── app_colors.dart       # Color palette
```

## Getting Started

### Prerequisites

- Flutter SDK (>=3.10.0)
- Dart SDK (>=3.0.0)

### Setup

1. **Clone and setup:**

   ```bash
   flutter pub get
   ```

2. **Run the app:**

   ```bash
   flutter run
   ```

3. **For web:**
   ```bash
   flutter run -d web-server
   ```

## Dependencies

- `google_fonts: ^6.1.0` - For Barlow Semi Condensed font
- `flutter_svg: ^2.0.9` - For SVG icon support
- `cupertino_icons: ^1.0.6` - iOS style icons

## Customization

### Colors

Update colors in `lib/utils/app_colors.dart`:

```dart
static const Color yellowPrimary = Color(0xFFFFD370);
static const Color brownPrimary = Color(0xFF5F4A46);
```

### Typography

Fonts are configured using Google Fonts in `main.dart`.

## Platform Support

- ✅ iOS
- ✅ Android
- ✅ Web
- ✅ macOS
- ✅ Windows
- ✅ Linux

## Build

### Android

```bash
flutter build apk --release
```

### iOS

```bash
flutter build ipa --release
```

### Web

```bash
flutter build web --release
```

## License

This project is created for educational and demonstration purposes.
