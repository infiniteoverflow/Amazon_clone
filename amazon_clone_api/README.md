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
| http://localhost:8080/categories | Fetches all the categories | GET
