# 🎬 Movie Explorer App

**Movie Explorer** is a modern Flutter-based mobile application designed to showcase a curated catalog of movies.
---

##  Key Features

The application implements several core mobile development concepts:

* **Dynamic Filtering:** Real-time movie sorting by categories (Sci-Fi, Action, Drama) using efficient state management (`setState`).
* **Asynchronous Data Loading:** Simulation of real-world API interaction using `FutureBuilder` and delayed execution to demonstrate loading states (`CircularProgressIndicator`).
* **Advanced UI (Sliver Widgets):** The Movie Detail screen features a `SliverAppBar` and `CustomScrollView` for a professional "collapsing header" effect.
* **Network Image Handling:** Robust implementation of `Image.network` with `errorBuilder` to ensure a smooth user experience even during network failures.
* **Clean Architecture:** Organized directory structure separating Models, Screens, Widgets, and Data services.

---

##  Application Preview

![![alt text](image-1.png)](image.png)![alt text](image-1.png)

##  How to Run

1.  **Prerequisites:** Ensure you have the Flutter SDK installed and an emulator (Android/iOS) or a physical device connected.
2.  **Clone/Extract:** Download the project files to your local machine.
3.  **Install Dependencies:** Run the following command in the project root:
    ```bash
    flutter pub get
    ```
4.  **Execute:** Launch the app using:
    ```bash
    flutter run
    ```

---
Student: Alikhan Kenzhebek 
