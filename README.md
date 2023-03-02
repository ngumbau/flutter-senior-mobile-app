# amitruck_interview

## Introduction
The goal of the assesment is to measure the engineers ability to build mordern, reliable, available and high-security mobile applications.

While this application might not be deployed to production, we encourage you to build it with a production-ready mindset.

The primary packages used by the app are:

- Riverpod for State Management and Dependency Injection.
- Go Router for Navigation and Routing.
- Sembast/Floor, Shared Preferences for local data persistance. 

## Architecture

The client app uses the controller-service-repository pattern and defines four layers:

- Data layer using repositories to acces the ourside world and expose data classes to the rest of the app via Futures and Streams

- Domain layer containing all the models/entities needed by the app along with the business logic to manipulate them.

- Applicationn layer using service classes to mediate between the repositories and the levels below.

- Presentation layer containing the widgets along with the controllers that manipulate their state and call APIs from the layers above.

## Expected Deliverables

- A four-screen mobile app compliant with material design principles.
- Successful unit tests for the built mobile application.
- How to install and run the unit tests described above.
- Deployment guidelines are documented in the readme file.
- The readme file provides a brief description of what the application does.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)
