**Create a `configuration.dart` file inside the `utils` folder and add the following code :**

```dart
class Configuration {
  static const firebaseConfig = {
    'apiKey': '<API_KEY>',
    'authDomain': '<AUTH_DOMAIN>',
    'projectId': '<PROJECT_ID>',
    'storageBucket': '<STORAGE_BUCKET>',
    'messagingSenderId': '<ID>',
    'appId': '<ID>',
    'measurementId': '<ID>'
  };
}
```

**Note: Make sure you set your Firebase Realtime Database Schema as per the designs in the `database_schema` folder**

**API List**

| Endpoint | Purpose | Http Method |
| --------- | ------ | --- |
| /categories | Fetches all the categories | GET
| /topbannerads | Fetches all the top banner ad data | GET
| /carouselcard | Fetches all the carousal card data | GET
