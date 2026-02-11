# Country Explorer

A Flutter application that displays countries from around the world using the REST Countries API. Features a clean, searchable interface with detailed country information.

## Features

- 🌍 Browse 250+ countries with flag emojis
- 🔍 Real-time search to find countries instantly  
- 📱 Tap any country to see detailed information
- ⚡ Fast, responsive UI with proper loading and error states
- 🎨 Clean Material Design interface

## How It Works

The app fetches all countries from the REST Countries API when it launches. You can:
- Scroll through the full list of countries
- Use the search bar to filter by country name
- Tap any country to see more details like population, capital, languages, etc.

## Tech Stack

- **Flutter** - UI framework
- **Riverpod** - State management with code generation
- **Freezed** - Immutable data models
- **Dio** - HTTP client for API calls
- **GoRouter** - Navigation between screens
- **Mockito** - Testing with mocks

## Getting Started

### Prerequisites

- Flutter SDK 3.0+
- Dart 3.0+
- An iOS simulator, Android emulator, or physical device

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/blagojBojcevski/country_explorer/
cd country_explorer
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Generate required code**
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

This generates:
- Freezed models (`.freezed.dart`)
- JSON serialization (`.g.dart`)
- Riverpod providers (`_providers.g.dart`)
- Test mocks (`*.mocks.dart`)

4. **Run the app**
```bash
flutter run
```

Or for specific platforms:
```bash
flutter run -d ios      # For iOS
flutter run -d android  # For Android
```

## Project Structure
```
lib/
├── core/                          # Core utilities and shared code
│   ├── errors/                   # Error handling
│   │   ├── exceptions.dart       # Custom exceptions (ServerException, etc.)
│   │   └── failures.dart         # Failure classes
│   ├── network/                  # Network configuration
│   │   ├── api_client.dart       # Dio client setup
│   │   └── api_service.dart      # Base API service
│   ├── providers/                # Core providers
│   │   └── core_providers.dart   # Shared providers (Dio, etc.)
│   ├── routing/                  # Navigation
│   │   └── app_router.dart       # GoRouter configuration
│   └── utils/
│       └── constants.dart        # App constants (API URLs, etc.)
│
└── features/
    └── countries/
        ├── data/                 # Data layer
        │   ├── data_sources/
        │   │   └── countries_data_source.dart    # Remote data source
        │   ├── models/
        │   │   ├── name/                         # Name DTO
        │   │   │   ├── name_dto.dart
        │   │   │   ├── name_dto.freezed.dart
        │   │   │   └── name_dto.g.dart
        │   │   └── country_dto.dart              # Country DTO
        │   │       ├── country_dto.freezed.dart
        │   │       └── country_dto.g.dart
        │   ├── repositories/
        │   │   └── countries_repository_impl.dart  # Repository implementation
        │   └── services/
        │       └── countries_api_service.dart      # Countries API endpoints
        │
        ├── domain/               # Domain layer
        │   ├── models/
        │   │   ├── country.dart              # Domain model
        │   │   └── country.freezed.dart
        │   └── repositories/
        │       └── countries_repository.dart  # Repository interface
        │
        └── presentation/         # Presentation layer
            ├── providers/
            │   ├── countries_providers.dart      # Countries list provider
            │   └── countries_providers.g.dart    # Generated code
            ├── screens/
            │   ├── countries_list_screen.dart    # Main list screen
            │   └── country_details_screen.dart   # Detail screen

```

The project follows clean architecture:
- **Data layer**: Handles API calls and JSON parsing
- **Domain layer**: Core business logic and models
- **Presentation layer**: UI and state management

## Running Tests

Run all tests:
```bash
flutter test
```

Run specific tests:
```bash
flutter test test/features/countries/data/
flutter test test/features/countries/presentation/
```

### Test Coverage

**Unit Tests** - Tests the data layer:
- Mocks Dio to verify JSON parsing works correctly
- Tests error handling when API calls fail

**Widget Tests** - Tests the UI:
- Verifies countries display on screen
- Tests loading spinner appears
- Tests error state and retry button

## Troubleshooting

**Build errors?**
```bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

**Tests failing?**
Make sure to regenerate mocks after any changes:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## API Used

This app uses the free [REST Countries API](https://restcountries.com/v3.1/all)

No API key required!
