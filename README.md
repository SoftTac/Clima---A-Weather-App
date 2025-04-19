# 🌦️ Clima - Weather App

<div align="center">
  <img src="https://github.com/SoftTac/Clima---A-Weather-App/raw/main/assets/images/app_icon.png" width="150" alt="Clima Logo">
  <h1>Real-Time Weather Forecasts</h1>
  
  ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
  ![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
  ![MIT License](https://img.shields.io/badge/license-MIT-blue?style=for-the-badge)
</div>

## 📱 App Screenshots

<div align="center">
  <img src="https://github.com/SoftTac/Clima---A-Weather-App/raw/main/screenshots/home_screen.png" width="30%" alt="Home Screen">
  <img src="https://github.com/SoftTac/Clima---A-Weather-App/raw/main/screenshots/search_screen.png" width="30%" alt="Search Screen"> 
  <img src="https://github.com/SoftTac/Clima---A-Weather-App/raw/main/screenshots/location_screen.png" width="30%" alt="Location Screen">
</div>

## ✨ Features

- 🌡️ Real-time temperature and weather conditions
- 🌍 Search weather by city name
- 📍 Automatic location detection via GPS
- 🔄 Unit conversion (Celsius/Fahrenheit)
- 🌤️ 5-day weather forecast
- 🎨 Sleek Material Design UI

## 🛠️ Technologies Used

| Category        | Technologies                          |
|-----------------|---------------------------------------|
| Framework       | Flutter                              |
| Language        | Dart                                 |
| API             | OpenWeatherMap                       |
| State Management| Provider                             |
| Networking      | http package                         |
| Location        | geolocator package                   |

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Android Studio/VSCode with Flutter plugin
- OpenWeatherMap API key

### Installation
1. Clone the repository
   ```bash
   git clone https://github.com/SoftTac/Clima---A-Weather-App.git
   cd Clima---A-Weather-App
   ```

2. Add your API key
   ```dart
   // Replace in lib/services/weather.dart
   const String apiKey = 'YOUR_API_KEY';
   ```

3. Install dependencies & run
   ```bash
   flutter pub get
   flutter run
   ```

## 🏗️ Project Structure

```
lib/
├── main.dart          # App entry point
├── models/           # Data models
├── services/         # API services
├── widgets/          # Reusable components
├── screens/          # App screens
└── utils/            # Helper functions
```

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.

## 📬 Contact

**Ahmad Khalil Khattak**  
[![Email](https://img.shields.io/badge/Email-ahmadkhanpakistan987@gmail.com-D14836?style=flat&logo=gmail)](mailto:ahmadkhanpakistan987@gmail.com)  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Ahmad_Khalil-0077B5?style=flat&logo=linkedin)](https://www.linkedin.com/in/ahmad-khalil-33bbb4283/)

---

> "Stay ahead of the weather with Clima - your pocket meteorologist!"  
> Developed with ❤️ using Flutter
