# Fructus

[![Swift](https://img.shields.io/badge/Swift-iOS-orange?logo=swift)](https://www.swift.org/)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-2.0-blue?logo=swift)](https://developer.apple.com/xcode/swiftui/)
[![iOS](https://img.shields.io/badge/iOS-14%2B-lightgrey?logo=apple)](https://developer.apple.com/ios/)
[![Xcode](https://img.shields.io/badge/Xcode-project-147EFB?logo=xcode)](https://developer.apple.com/xcode/)
[![Repository](https://img.shields.io/badge/GitHub-sasanzare%2FFructus-181717?logo=github)](https://github.com/sasanzare/Fructus)

## Executive Summary

Fructus is a SwiftUI iOS application that presents a polished fruit encyclopedia experience in Persian. The app includes an onboarding flow, animated fruit cards, a fruit list, detail pages, nutrition information, source links, and a settings screen. It is a compact but well-structured mobile portfolio project that demonstrates SwiftUI fundamentals, state persistence, reusable views, asset catalog management, navigation, animation, and right-to-left interface handling.

The project is especially useful as a hiring sample because it shows how a developer can organize a native iOS app into separate model, data, view, and app-level modules while still delivering a visually rich user experience.

## Product Concept

Fructus helps users explore fruits, read short educational descriptions, inspect nutrition facts, and move through a colorful mobile UI. The experience starts with a swipeable onboarding carousel and then transitions into a list of fruits. Each item opens a detail page with a large gradient header, fruit image, headline, nutrition disclosure panel, description, and source link.

## Core Features

| Feature | Description |
| --- | --- |
| Onboarding carousel | A paged SwiftUI `TabView` introduces the app through fruit cards |
| Persistent first-launch state | `@AppStorage("isOnboarding")` stores whether the onboarding screen should be shown |
| Fruit list | `NavigationView` and `List` render shuffled fruit records |
| Fruit detail page | Scrollable detail view with image header, title, headline, nutrition, description, and source link |
| Nutrition panel | `DisclosureGroup` inside a `GroupBox` shows nutritional values per 100 grams |
| Settings sheet | Modal settings view with app info, reset toggle, developer/designer information, and external links |
| RTL support | The main content view sets right-to-left layout direction for Persian UI |
| Animation | Fruit images animate with scale transitions on card/header appearance |
| Asset catalog | Fruit images and custom color sets are organized through Xcode assets |

## User Experience

### 1. First Launch

When the app starts, `FructusApp` checks the `isOnboarding` value in `@AppStorage`. If onboarding is enabled, the user sees an onboarding carousel. The carousel displays the first six fruit records from the local data source.

### 2. Entering The App

The start button updates `isOnboarding` to `false`. Because this value is stored in app storage, the user will go directly to the main content screen on future launches unless they reset onboarding from settings.

### 3. Browsing Fruits

The main screen presents fruit rows in a navigation list. Each row includes:

- Fruit image
- Gradient-backed image container
- Fruit title
- Short headline

Selecting a row opens a detail page.

### 4. Reading Details

The detail screen is scrollable and visually structured:

- Large gradient hero/header
- Animated fruit image
- Persian title and headline
- Nutrition disclosure panel
- Long-form description
- Source link group

### 5. Settings and Reset

The settings sheet provides app information, developer/designer credits, compatibility details, SwiftUI version, app version, and a reset toggle. The reset toggle changes `isOnboarding`, allowing the onboarding flow to appear again.

## Technology Stack

| Area | Details |
| --- | --- |
| Language | Swift |
| UI framework | SwiftUI |
| Minimum compatibility noted in app | iOS 14 |
| Architecture style | Local data-driven SwiftUI app |
| Persistence | `@AppStorage` |
| Navigation | `NavigationView`, `NavigationLink`, modal sheet |
| UI controls | `TabView`, `List`, `ScrollView`, `GroupBox`, `DisclosureGroup`, `Toggle`, `Link` |
| Assets | Xcode asset catalog with fruit images and custom color sets |
| Localization direction | Persian/right-to-left UI |

## Repository Structure

```text
Fructus/
├── Fructus.xcodeproj/
│   ├── project.pbxproj
│   └── project.xcworkspace/
├── Fructus/
│   ├── App/
│   │   ├── FructusApp.swift
│   │   ├── ContentView.swift
│   │   ├── OnboardingView.swift
│   │   ├── FruitDetailView.swift
│   │   └── SettingsView.swift
│   ├── Data/
│   │   └── FruitData.swift
│   ├── Model/
│   │   └── FruitModel.swift
│   ├── View/
│   │   ├── FruitCardView.swift
│   │   ├── FruitHeaderView.swift
│   │   ├── FruitNutrientsView.swift
│   │   ├── FruitRowView.swift
│   │   ├── SettingsLabelView.swift
│   │   ├── SettingsRowView.swift
│   │   ├── SourceLinkView.swift
│   │   └── StartButtonView.swift
│   ├── Assets.xcassets/
│   │   ├── Colors/
│   │   ├── Fruits/
│   │   ├── AppIcon.appiconset/
│   │   └── logo.imageset/
│   └── Preview Content/
├── LICENSE
└── README.md
```

## Data Model

The app uses a lightweight local model called `Fruit`.

| Property | Purpose |
| --- | --- |
| `id` | Unique identifier generated with `UUID()` |
| `title` | Fruit name |
| `headline` | Short summary shown in cards and rows |
| `image` | Asset name for the fruit image |
| `gradientColors` | Custom SwiftUI color pair used for cards and headers |
| `description` | Long educational description |
| `nutrition` | Nutrition values shown in the disclosure panel |

The model conforms to `Identifiable`, allowing it to work naturally with SwiftUI `ForEach`, `List`, and `NavigationLink`.

## Local Data Source

`FruitData.swift` defines a static `fruitsData` array. Each record includes Persian educational content, a fruit image name, a custom gradient pair, and nutrition details.

The asset catalog includes fruit image sets for:

| Fruits |
| --- |
| apple |
| blueberry |
| cherry |
| gooseberry |
| grapefruit |
| lemon |
| lime |
| mango |
| pear |
| plum |
| pomegranate |
| strawberry |
| watermelon |

Each fruit also has matching light and dark custom colors, such as `ColorBlueberryLight` and `ColorBlueberryDark`.

## Main SwiftUI Components

| Component | Responsibility |
| --- | --- |
| `FructusApp` | App entry point and onboarding/content switch |
| `OnboardingView` | Paged onboarding carousel |
| `FruitCardView` | Visual card used in onboarding |
| `StartButtonView` | Button that disables onboarding through `@AppStorage` |
| `ContentView` | Main list screen and settings sheet trigger |
| `FruitRowView` | Compact list row for each fruit |
| `FruitDetailView` | Full fruit detail page |
| `FruitHeaderView` | Gradient header with animated fruit image |
| `FruitNutrientsView` | Nutrition disclosure panel |
| `SourceLinkView` | External source link group |
| `SettingsView` | App information and onboarding reset |
| `SettingsLabelView` | Reusable settings group label |
| `SettingsRowView` | Reusable settings row for text or links |

## State Management

The app uses simple SwiftUI state tools:

| State tool | Usage |
| --- | --- |
| `@AppStorage` | Persists onboarding status across launches |
| `@State` | Controls settings sheet visibility and animation state |
| `@Environment(\.presentationMode)` | Dismisses the settings sheet |

This is appropriate for a small offline app because the data is local and the main state is UI-focused.

## UI and Visual Design

The app makes strong use of SwiftUI visual patterns:

- Gradient backgrounds based on fruit-specific color sets
- Animated scale-in fruit images
- Card-style onboarding screens
- Shadowed fruit images
- `GroupBox` sections in settings and nutrition
- `DisclosureGroup` for compact nutritional data
- Right-to-left layout direction for Persian text
- Stack-based navigation style for consistent iPhone/iPad behavior

## Local Development

### Prerequisites

- macOS
- Xcode with iOS Simulator support
- SwiftUI-compatible iOS SDK

### Clone

```bash
git clone https://github.com/sasanzare/Fructus.git
cd Fructus
```

### Run In Xcode

1. Open `Fructus.xcodeproj`.
2. Select the `Fructus` scheme.
3. Choose an iPhone simulator.
4. Build and run with `Cmd + R`.

### Optional Command-Line Build

The exact simulator name may differ on your machine:

```bash
xcodebuild \
  -project Fructus.xcodeproj \
  -scheme Fructus \
  -destination 'platform=iOS Simulator,name=iPhone 14' \
  build
```

## Portfolio Presentation

Fructus can be presented as an iOS portfolio project because it demonstrates:

- SwiftUI app lifecycle with `@main`
- Persistent onboarding state with `@AppStorage`
- Local data modeling with `Identifiable`
- Modular SwiftUI view composition
- Navigation through `NavigationView` and `NavigationLink`
- Modal presentation with `.sheet`
- Custom reusable UI components
- Animated UI elements with `withAnimation`
- Asset catalog organization
- Right-to-left UI support for Persian content
- Practical settings screen design

## Suggested Demo Script For Interviews

1. Start the app and show the onboarding carousel.
2. Explain how `@AppStorage("isOnboarding")` controls the first-launch flow.
3. Tap the start button and show the fruit list.
4. Open a fruit detail page and explain reusable header, nutrition, and source components.
5. Open the settings sheet and show the reset toggle.
6. Open `FruitModel.swift` and explain the data model.
7. Open `FruitData.swift` and show how local content powers the UI.
8. Open the asset catalog and explain fruit images and custom color pairs.
9. Mention RTL layout support and Persian content.

## Production-Readiness Notes

The project is a strong SwiftUI learning and portfolio sample. Recommended improvements before shipping as a production app:

- Remove `.DS_Store` and AppleDouble `._*` files from the repository.
- Add a clean `.gitignore` for Xcode, macOS, and Swift projects.
- Move long text content into localized resource files if the app grows.
- Add localization files for Persian and English.
- Add accessibility labels for images, buttons, and links.
- Add unit tests for data integrity.
- Add UI tests for onboarding reset and navigation.
- Replace the generic Wikipedia source link with fruit-specific sources.
- Add app screenshots to the README.
- Review all external links and make sure they include valid URL formats.

## Roadmap

| Priority | Improvement |
| --- | --- |
| High | Add screenshots and App Store-style preview images |
| High | Clean generated macOS metadata files from the repository |
| High | Add accessibility labels and Dynamic Type review |
| Medium | Add bilingual localization |
| Medium | Add search/filter for fruits |
| Medium | Add favorite fruits with persistent storage |
| Low | Add nutrition comparison view |

## Source

Repository: <https://github.com/sasanzare/Fructus>
