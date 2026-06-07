# AstraHub Mobile

AstraHub is a comprehensive B2B mobile application built with Flutter, designed to empower workshop owners and mechanics. The app provides seamless procurement of spare parts, inventory management, workshop administration (cashier), and integration with Astra ecosystem services such as AstraPay and FIFGROUP PayLater.

## 🚀 Features

- **Workshop Management:** Streamlined dashboard for daily operations, including a robust Cashier module and Service Management.
- **Inventory & Stock:** Real-time stock tracking (`Stok Bengkel`), product catalogs, and low-stock alerts.
- **B2B Procurement:** E-commerce shop module allowing workshops to purchase spare parts directly from distributors.
- **Financing & Payments:** Integrated workflow for Workshop Activation to access AstraPay ecosystem and FIFGROUP B2B PayLater limits.
- **Analytics & Reporting:** Interactive dashboards providing business insights, transaction history, and shop performance scores.

## 🛠️ Technology Stack

- **Framework:** [Flutter](https://flutter.dev/) (Dart)
- **Architecture:** Clean Architecture (Feature-first structure)
- **State Management:** [Riverpod](https://riverpod.dev/) (`flutter_riverpod`)
- **Routing:** [GoRouter](https://pub.dev/packages/go_router) for declarative routing and deep linking
- **Typography:** [Google Fonts](https://pub.dev/packages/google_fonts) (Plus Jakarta Sans)
- **Design System:** Centralized `AppColors` and custom thematic components for consistent, premium UI

## 📂 Project Structure

The project follows a feature-driven folder structure for maintainability and scalability:

```text
lib/
├── core/
│   ├── router/          # App routing configuration (GoRouter setup)
│   ├── theme/           # Global themes, AppColors, text styles
│   └── utils/           # Shared utility functions and helpers
├── features/
│   ├── auth/            # Login, Registration, Splash screen
│   ├── cart/            # Shopping cart management
│   ├── cashier/         # Point of Sale (POS) and daily service tracking
│   ├── checkout/        # Procurement checkout flow
│   ├── dashboard/       # Main navigation shell and home pages
│   ├── new_service/     # Creating new service tickets
│   ├── onboarding/      # Welcome screens and app introduction
│   ├── profile/         # Workshop data, settings, and B2B activation forms
│   ├── purchase_status/ # Order tracking and status
│   ├── report/          # Business insights and analytics
│   └── stock/           # Inventory management and catalog
└── main.dart            # Application entry point
```

## ⚙️ Getting Started

### Prerequisites

Ensure you have the following installed:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (latest stable version)
- Dart SDK (comes with Flutter)
- Android Studio / Xcode for device emulation
- VS Code or your preferred IDE

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-org/astrahub_mobile.git
   cd astrahub_mobile
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the application:**
   ```bash
   flutter run
   ```
