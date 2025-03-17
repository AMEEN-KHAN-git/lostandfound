# dbproject

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Lost & Found System

A Flutter-based Lost & Found System that allows users to report, track, and manage lost items across different departments.

## Features

- **Department Navigation:**
  - Switch between Civil, Computer Science, Electrical, Electronics, and Mechanical departments using pill-shaped buttons with active underlines.
  
- **Lost Item Display:**
  - View lost items with images, descriptions, location, and time found.

- **Hover Animation:**
  - Item cards feature hover effects for an enhanced user experience (on web platforms).

- **Report Page:**
  - Users can report lost or found items with detailed descriptions, images, and location.

## Project Structure

```
lib/
├── main.dart               // Main entry point
├── screens/
│    ├── home.dart         // Home page with navigation
│    ├── lostlocate.dart   // Lost items display page
│    └── report.dart       // Report lost or found items page
└── widgets/
      └── item_card.dart   // Custom widget for displaying lost items
```

## Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-repo/lost-and-found.git
   cd lost-and-found
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the application:**
   ```bash
   flutter run
   ```

## Customization

- **Add New Departments:**
  Update the `departments` list in `lostlocate.dart`:
  ```dart
  final List<Map<String, dynamic>> departments = [
    {'name': 'New Dept', 'icon': Icons.new_releases},
  ];
  ```

- **Add New Items:**
  Modify the `items` list in `lostlocate.dart` with the new item details:
  ```dart
  {
    'name': 'Laptop',
    'image': 'https://your-image-url.com/laptop.jpg',
    'description': 'A silver MacBook Pro.',
  }
  ```

## Troubleshooting

- Ensure Flutter is correctly installed and set up:
  ```bash
  flutter doctor
  ```

- If the app does not run, clean and rebuild:
  ```bash
  flutter clean
  flutter pub get
  ```

## Contributions

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

This project is licensed under the MIT License.

