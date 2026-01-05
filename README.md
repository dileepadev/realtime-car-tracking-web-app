# Realtime Car Tracking Web App

![GitHub repo size](https://img.shields.io/github/repo-size/dileepadev/realtime-car-tracking-web-app?color=red&label=repository%20size)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/dileepadev/realtime-car-tracking-web-app?color=red)
![GitHub language count](https://img.shields.io/github/languages/count/dileepadev/realtime-car-tracking-web-app)
![GitHub top language](https://img.shields.io/github/languages/top/dileepadev/realtime-car-tracking-web-app)
![GitHub](https://img.shields.io/github/license/dileepadev/realtime-car-tracking-web-app?color=yellow)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/dileepadev/realtime-car-tracking-web-app?color=brightgreen&label=commits)

## ✨ About

A real-time car tracking web application built with Flutter. It uses GPS tracking devices to collect vehicle data, which is stored in a Firestore database, and a Flutter web app to access and display this data in real time.

![Preview Image](https://dileepadev.github.io/images/realtime-car-tracking-web-app/preview.gif)

## 🎞️ Demo Videos

Click the link or image below to view the demo video on YouTube.

🔗 <https://youtu.be/L5HnTtCqgMs>

[![Watch the demo video](https://img.youtube.com/vi/L5HnTtCqgMs/0.jpg)](https://youtu.be/L5HnTtCqgMs)

## 🌐 Website

> [!IMPORTANT]
>
> - The web app shown below is hosted on **GitHub Pages** and does **not** include Firebase integration.
> - The deployed files belong to the **`1.1.0-demo`** branch. Refer to the [branch details](#-branches) for more information.
> - If you plan to deploy the version from the **`main`** branch, ensure that the **Firebase configuration is properly set up** for the web app to function as expected.

Deployed Website: <https://dileepadev.github.io/realtime-car-tracking-web-app/>

## 📦 Release Details

> [!NOTE]
> This repository is a clean re-upload to my new GitHub account. No new features or functionality have been added. Minor compatibility fixes may have been applied to ensure the project runs correctly in the current environment. Please note that the original commit history from the previous account is not preserved. This update is primarily for migration purposes.
>
> | Event | Version | Date |
> | --- | --- | --- |
> | Initial release | v0.1.0 | March 16, 2022 |
> | First release | v1.0.0 | April 25, 2023 |
> | Feature release 1 | v1.1.0 | January 5, 2026 |
>
### 🎉 View all releases

 [https://github.com/dileepadev/realtime-car-tracking-web-app/releases](https://github.com/dileepadev/realtime-car-tracking-web-app/releases)

## 🍃 Branches

Source Code

- [main](https://github.com/dileepadev/realtime-car-tracking-web-app/tree/main) - Stable and latest version
  of the source code
- [1.0.0](https://github.com/dileepadev/realtime-car-tracking-web-app/tree/1.0.0) - Stable 1.0.0 version of
  the source code
- [1.1.0](https://github.com/dileepadev/realtime-car-tracking-web-app/tree/1.1.0) - Stable 1.1.0 version of
  the source code
- [1.1.0-demo](https://github.com/dileepadev/realtime-car-tracking-web-app/tree/1.1.0-demo) - Demo version of
  the source code without Firebase integration

Web Build

- [1.1.0-demo-web-build](https://github.com/dileepadev/realtime-car-tracking-web-app/tree/1.1.0-demo-web-build) - Stable and
  latest version of the web build

## 💙 Built With

### Original (Legacy) Project

- [Flutter](https://flutter.dev)
  - Flutter 3.7.2 • channel stable
  - Tools • Dart 2.19.2 • DevTools 2.20.1
- [GitHub Pages](https://pages.github.com)

### Current Project

- [Flutter](https://flutter.dev)
  - Flutter 3.38.5 • channel stable
  - Tools • Dart 3.10.4 • DevTools 2.51.1
- [GitHub Pages](https://pages.github.com)

## 📌 Prerequisites

- Setup [Flutter](https://flutter.dev) in the development environment.
- Setup a code editor like [Android Studio](https://developer.android.com/studio)
  or [Visual Studio Code](https://code.visualstudio.com) in the development environment.
- Setup [Git](https://git-scm.com) in the development environment.
- Should be fine with the `flutter doctor` command.
- Anything related to the Flutter app development.

## 💡 How to Setup

- Download or clone the repository.
- Move the project to the selected directory.
- Open it with a code editor such as [Android Studio](https://developer.android.com/studio)
  or [Visual Studio Code](https://code.visualstudio.com).
- Run `flutter clean` and `pub get` commands.
- Do not update or upgrade Gradle and other versions until the app is up and running with built
  versions.

## 🚀 How to Run

### Flutter web app with Firebase integration

- Open the terminal in the project directory.
- Run the following command to start the Flutter web app in debug mode.

  - Shell

  ```shell
  flutter run -d chrome `
    --dart-define=FIREBASE_API_KEY=<YOUR_FIREBASE_API_KEY> `
    --dart-define=FIREBASE_PROJECT_ID=<YOUR_FIREBASE_PROJECT_ID> `
    --dart-define=FIREBASE_MESSAGING_SENDER_ID=<YOUR_FIREBASE_MESSAGING_SENDER_ID> `
    --dart-define=FIREBASE_APP_ID=<YOUR_FIREBASE_APP_ID> `
    --dart-define=FIREBASE_MEASUREMENT_ID=<YOUR_FIREBASE_MEASUREMENT_ID>
  ```

  - Bash

  ```shell
  flutter run -d chrome \
    --dart-define=FIREBASE_API_KEY=<YOUR_FIREBASE_API_KEY> \
    --dart-define=FIREBASE_PROJECT_ID=<YOUR_FIREBASE_PROJECT_ID> \
    --dart-define=FIREBASE_MESSAGING_SENDER_ID=<YOUR_FIREBASE_MESSAGING_SENDER_ID> \
    --dart-define=FIREBASE_APP_ID=<YOUR_FIREBASE_APP_ID> \
    --dart-define=FIREBASE_MEASUREMENT_ID=<YOUR_FIREBASE_MEASUREMENT_ID>
  ```

### Flutter web app without Firebase integration

- Open the terminal in the project directory.
- Run the following command to start the Flutter web app in debug mode.
- Shell

  ```shell
  flutter run -d chrome
  ```

  - Bash

  ```shell
  flutter run -d chrome
  ```

### Web build

- Download web-build directory from
  the [web-build](https://github.com/dileepadev/realtime-car-tracking-web-app/tree/web-build) branch.
- Move the build files to a server such as localhost, GitHub Pages, or any other http/https web
  server.
- Set up and run the index.html file.
- Build the project using `flutter build web` command and deploy it to any web server.

  ```bash
  flutter build web --base-href /realtime-car-tracking-web-app/
  ```

## 🖼️ Icons and Images

- [Icons8](https://icons8.com)

## 👑 Contributing

If you want to contribute to this project and make it better, your help is very welcome. Just fork the repository and follow the [contribution guidelines](./CONTRIBUTING.md).

## ❤️ Thanks

Thanks to everyone who supported

## 👨‍💻 Developed By

Dileepa Bandara  
[@dileepadev](https://github.com/dileepadev)  
<https://dileepa.dev>

> [!NOTE]
> This repository may contain references to my former GitHub username (`dileepabandara`) and domain (`dileepabandara.dev`), which I no longer use. These identifiers may now belong to other parties. All current development and maintenance are conducted under my new GitHub account [dileepadev](https://github.com/dileepadev) and domain [dileepa.dev](https://dileepa.dev).

## 💬 Contact

If you want to contact me, leave a message via email.

- Email - <contact@dileepa.dev>

## 📜 License

This project is licensed under the MIT License.  
See the license file for more details [LICENSE](./LICENSE)
