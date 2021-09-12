![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white?longCache=true&style=flat-square) [![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white&longCache=true&style=flat-square)](https://flutter.dev/)

# NHL 2019 Playoffs 🏒

### Introduction 🚀

> NHL 2019
Visualise the Stanley Cup Playoffs 2019-20

- [Demo Video](https://www.youtube.com/)

### Usage 🎨

To clone and run this application, you'll need [git](https://git-scm.com) and [flutter](https://flutter.dev/docs/get-started/install) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/SatyamX64/nhl

# Go into the repository
$ cd nhl

# Install dependencies
$ flutter packages get

# Run the app
$ flutter run
```

### Directory Structure 🏢

Directory | Description
---|---
models | Contains Model Class for Serailizing JSON Data
repo | Contains Data Repository that acts as intermediary between Data Source and Bloc 
source | Contains the Data Source, that fetches data from Database / API
utils | Contains app-wide constants
ui | Contains Code for Screen UIs

### External Packages

Package | Description
---|---
lottie | For Lottie Animations
built_value | For Serialization  
flutter_bloc | For State Management
kiwi | For Dependency Injection

