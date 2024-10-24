# Club/College Management Framework

Welcome to the **Club/College Management Framework** project! This application is built using Flutter and utilizes a comprehensive tech stack designed to streamline the management of clubs and activities within our college.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Comprehensive Tech Stack](#comprehensive-tech-stack)
- [Installation](#installation)
- [Usage](#usage)
- [Development Status](#development-status)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This framework provides an intuitive interface for managing clubs, events, and member participation. It is designed to facilitate communication and organization among students and faculty, making campus activities more accessible and engaging.

**Please note:** This repository is only for the student-side Flutter application. The backend part is closed source and currently in development.

## Features

- **Admin Management**: Role-based access and authorization.
- **Application Access**: Specialized application for Admins, Clubs, and Students (and Faculties, optional).
- **User Authentication**: Secure login and profile management.
- **Club Management**: Create, update, and manage club details.
- **Event Scheduling**: Plan and notify members about upcoming events.
- **Member Registration**: Track member participation and engagement.
- **Real-Time Notifications**: Keep users informed with timely updates.

## Comprehensive Tech Stack

### Frontend

- **Mobile**: Flutter
  - **State Management**: Riverpod
  - **Internationalization**: Flutter Intl
- **Web** (Optional): Next.js
  - **Internationalization**: react-intl

### Backend

- **Bun.js & Hono.js**:
  - **Authentication**: Secure user authentication.
  - **Database**: PostgreSQL (hosted using Docker).
  - **Real-Time Features**: WebSocket support for live updates.
  - **Notifications**: Managed for timely communication with users.

### Cloud Services

- **AWS Lambda**: Serverless functions for running backend logic.
- **Amazon API Gateway**: Managed service for creating, publishing, and securing APIs.
- **Amazon S3**: Object storage for files and media.

### Additional AWS Services

- **AWS CloudFormation**: Infrastructure as Code for managing resources.
- **Amazon CloudWatch**: Monitoring and logging service.
- **Amazon CloudFront**: CDN for fast content delivery.

### Infrastructure

- **Docker**: For hosting the PostgreSQL database.
- **Kubernetes**: For scaling and managing deployments (optional).

### Additional Services

- **Firebase Crashlytics**: Real-time crash reporting.
- **OneSignal**: Comprehensive push notification service.
- **Mixpanel**: Analytics for tracking user interactions.

### Monitoring and Logging

- **ELK Stack** (Elasticsearch, Logstash, Kibana): For logging, monitoring, and data visualization (optional).
- **Grafana**: For creating dashboards (can be integrated with CloudWatch).

### Development Tools

- **GitHub Actions**: CI/CD pipeline for automation.
- **Swagger/OpenAPI**: API documentation.
- **Jest**: Backend testing.
- **Flutter Test**: Mobile app testing.

### CI/CD Pipeline

- **GitHub Actions**:
  - **Flutter App**:
    - Run tests.
    - Build APK/IPA.
    - Deploy to App Store / Play Store.
  - **Backend**:
    - Run tests.
    - Build and deploy to cloud services.

## Installation

To get started with the Flutter frontend, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/luciferro01/ClubCon.git
   ```

2. Navigate into the project directory:

   ```bash
   cd ClubCon
   ```

3. Install the necessary dependencies:

   ```bash
   flutter pub get
   ```

4. Run the application:

   ```bash
   flutter run
   ```

## Usage

Once installed, you can use the app to manage clubs and events. Detailed user guides and API documentation will be provided in future releases.

## Development Status

**⚠️ Warning: This repository is currently in a high development phase. Work on this project will be resumed after Diwali and is expected to be completed before November 11, 2024. Please check back for updates!**

## Contributing

We welcome contributions from everyone! If you'd like to contribute, please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
